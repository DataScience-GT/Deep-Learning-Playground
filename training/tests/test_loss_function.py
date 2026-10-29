import warnings

import pytest
import torch
import torch.nn as nn
from training.core.celery.criterion import getCriterionHandler


"""
Unit tests to check that the loss function is being computed correctly
"""


# initialize some tensors
zero_tensor = torch.zeros(10, 1, 1)
one_tensor = torch.ones(10, 1, 1)
tensor_vstack_one = torch.vstack(
    [torch.tensor([[2.5], [56.245], [2342.68967]]), torch.tensor([[3], [4], [5]])]
).reshape((6, 1, 1))
tensor_vstack_two = torch.vstack(
    [torch.tensor([[5646456], [634767], [37647346]]), torch.tensor([[6], [7], [8]])]
).reshape((6, 1, 1))


def compute_loss(loss_function_name, output, labels):
    loss_function = getCriterionHandler(loss_function_name)
    return loss_function.compute_loss(output, labels)


@pytest.mark.parametrize(
    "output, labels, expected_number",
    [
        (zero_tensor, one_tensor, 1.0),
        (tensor_vstack_one, tensor_vstack_two, 7321426),
    ],
)
def test_l1_loss_computation_correct(output, labels, expected_number):
    loss_function_name = "L1LOSS"
    computed_loss = compute_loss(loss_function_name, output, labels)
    assert pytest.approx(expected_number) == computed_loss


@pytest.mark.parametrize(
    "output, labels, expected_number",
    [
        (zero_tensor, one_tensor, 1.0),
        (tensor_vstack_one, tensor_vstack_two, 15543340),
    ],
)
def test_mse_loss_computation_correct(output, labels, expected_number):
    loss_function_name = "MSELOSS"
    computed_loss = compute_loss(loss_function_name, output, labels)
    assert pytest.approx(expected_number) == torch.sqrt(computed_loss)


@pytest.mark.parametrize(
    "loss_function_name, expected_number",
    [
        ("L1LOSS", 2.0),
        ("MSELOSS", 14 / 3),
    ],
)
def test_regression_losses_match_targets_without_broadcast_warning(
    loss_function_name, expected_number
):
    output = torch.tensor([[[0.0]], [[2.0]], [[5.0]]])
    labels = torch.tensor([[[1.0]], [[4.0]], [[2.0]]])

    with warnings.catch_warnings():
        warnings.simplefilter("error", UserWarning)
        computed_loss = compute_loss(loss_function_name, output, labels)

    assert computed_loss.item() == pytest.approx(expected_number)


@pytest.mark.parametrize(
    "output, labels, expected_number",
    [(zero_tensor.reshape((10, 1)), one_tensor.reshape(10), 100)],
)
def test_bce_loss_computation_correct(output, labels, expected_number):
    loss_function_name = "BCELOSS"
    computed_loss = compute_loss(loss_function_name, output, labels)
    assert pytest.approx(expected_number) == computed_loss
