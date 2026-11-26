# Architecture

## Training Architecture

```
📦 training
|  |- 📂 training:
|  |  |- 📂 middleware:
|  |  |  |- 📜 __init__.py
|  |  |  |- 📜 health_check_middleware.py
|  |  |- 📂 routes:
|  |  |  |- 📂 audio:
|  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 audio.py
|  |  |  |  |- 📜 schemas.py
|  |  |  |- 📂 tabular:
|  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 tabular.py
|  |  |  |- 📂 image:
|  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 image.py
|  |  |  |- 📂 datasets:
|  |  |  |  |- 📂 default:
|  |  |  |  |  |- 📜 __init__.py
|  |  |  |  |  |- 📜 columns.py
|  |  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |- 📜 __init__.py
|  |  |  |- 📜 schemas.py
|  |  |- 📂 core:
|  |  |  |- 📂 celery:
|  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 train_types.py
|  |  |  |  |- 📜 optimizer.py : what optimizer to use (ie: SGD or Adam for now)
|  |  |  |  |- 📜 dataset.py : read in the dataset through URL or file upload
|  |  |  |  |- 📜 Dockerfile
|  |  |  |  |- 📜 worker.py
|  |  |  |  |- 📜 trainer.py
|  |  |  |  |- 📜 dl_model.py : torch model based on user specifications from drag and drop
|  |  |  |  |- 📜 criterion.py
|  |  |  |- 📜 __init__.py
|  |  |  |- 📜 authenticator.py
|  |  |- 📜 celery_app.py
|  |  |- 📜 constants.py : list of helpful constants
|  |  |- 📜 __init__.py
|  |  |- 📜 asgi.py
|  |  |- 📜 settings.py
|  |  |- 📜 celeryconfig.py
|  |  |- 📜 urls.py
|  |  |- 📜 wsgi.py
|  |- 📜 cli.py
|  |- 📜 pyproject.toml
|  |- 📜 docker-compose.prod.yml
|  |- 📜 README.md
|  |- 📜 Dockerfile
|  |- 📜 poetry.lock
|  |- 📜 docker-compose.yml
|  |- 📜 environment.yml
|  |- 📜 pytest.ini
|  |- 📜 manage.py
```

## Frontend Architecture

```
📦 frontend
|  |- 📂 layer_docs:
|  |  |- 📜 softmax_equation.png : PNG file of Softmax equation
|  |  |- 📜 ReLU.md : Doc for ReLU later
|  |  |- 📜 Softmax.md : Doc for Softmax layer
|  |  |- 📜 Linear.md : Doc for Linear layer
|  |- 📂 src:
|  |  |- 📂 __tests__:
|  |  |  |- 📂 common:
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 TitleText.test.tsx
|  |  |- 📂 backend_outputs:
|  |  |  |- 📜 model.pkl
|  |  |  |- 📜 my_deep_learning_model.onnx : Last ONNX file output
|  |  |  |- 📜 model.pt : Last model.pt output
|  |  |- 📂 pages:
|  |  |  |- 📂 train:
|  |  |  |  |- 📜 [train_space_id].tsx
|  |  |  |  |- 📜 metrics_to_charts.tsx
|  |  |  |  |- 📜 index.tsx
|  |  |  |- 📜 feedback.tsx
|  |  |  |- 📜 dashboard.tsx
|  |  |  |- 📜 about.tsx
|  |  |  |- 📜 login.tsx
|  |  |  |- 📜 learn.tsx
|  |  |  |- 📜 LearnContent.tsx
|  |  |  |- 📜 settings.tsx
|  |  |  |- 📜 _document.tsx
|  |  |  |- 📜 _app.tsx
|  |  |  |- 📜 wiki.tsx
|  |  |  |- 📜 forgot.tsx
|  |  |- 📂 common:
|  |  |  |- 📂 styles:
|  |  |  |  |- 📜 globals.css
|  |  |  |  |- 📜 Home.module.css
|  |  |  |- 📂 utils:
|  |  |  |  |- 📜 firebase.ts
|  |  |  |  |- 📜 dateFormat.ts
|  |  |  |  |- 📜 dndHelpers.ts
|  |  |  |- 📂 components:
|  |  |  |  |- 📜 HtmlTooltip.tsx
|  |  |  |  |- 📜 Footer.tsx
|  |  |  |  |- 📜 EmailInput.tsx
|  |  |  |  |- 📜 NavBarMain.tsx
|  |  |  |  |- 📜 ClientOnlyPortal.tsx
|  |  |  |  |- 📜 DlpTooltip.tsx
|  |  |  |  |- 📜 TitleText.tsx
|  |  |  |  |- 📜 Spacer.tsx
|  |  |  |- 📂 redux:
|  |  |  |  |- 📜 store.ts
|  |  |  |  |- 📜 backendApi.ts
|  |  |  |  |- 📜 train.ts
|  |  |  |  |- 📜 userLogin.ts
|  |  |  |  |- 📜 hooks.ts
|  |  |- 📂 features:
|  |  |  |- 📂 OpenAi:
|  |  |  |  |- 📜 openAiUtils.ts
|  |  |  |- 📂 Dashboard:
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 TrainBarChart.tsx
|  |  |  |  |  |- 📜 TrainDataGrid.tsx
|  |  |  |  |  |- 📜 TrainDoughnutChart.tsx
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 dashboardApi.ts
|  |  |  |- 📂 Train:
|  |  |  |  |- 📂 constants:
|  |  |  |  |  |- 📜 trainConstants.ts
|  |  |  |  |- 📂 types:
|  |  |  |  |  |- 📜 trainTypes.ts
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 TrainspaceLayout.tsx
|  |  |  |  |  |- 📜 DatasetStepLayout.tsx
|  |  |  |  |  |- 📜 CreateTrainspace.tsx
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 trainspaceApi.ts
|  |  |  |  |  |- 📜 trainspaceSlice.ts
|  |  |  |  |- 📂 features:
|  |  |  |  |  |- 📂 Tabular:
|  |  |  |  |  |  |- 📂 constants:
|  |  |  |  |  |  |  |- 📜 tabularConstants.ts
|  |  |  |  |  |  |- 📂 types:
|  |  |  |  |  |  |  |- 📜 tabularTypes.ts
|  |  |  |  |  |  |- 📂 components:
|  |  |  |  |  |  |  |- 📜 TabularTrainspace.tsx
|  |  |  |  |  |  |  |- 📜 TabularFlow.tsx
|  |  |  |  |  |  |  |- 📜 TabularDatasetStep.tsx
|  |  |  |  |  |  |  |- 📜 TabularReviewStep.tsx
|  |  |  |  |  |  |  |- 📜 TabularParametersStep.tsx
|  |  |  |  |  |  |- 📂 redux:
|  |  |  |  |  |  |  |- 📜 tabularApi.ts
|  |  |  |  |  |  |  |- 📜 tabularActions.ts
|  |  |  |  |  |  |- 📜 index.ts
|  |  |  |  |  |- 📂 Image:
|  |  |  |  |  |  |- 📂 constants:
|  |  |  |  |  |  |  |- 📜 imageConstants.ts
|  |  |  |  |  |  |- 📂 types:
|  |  |  |  |  |  |  |- 📜 imageTypes.ts
|  |  |  |  |  |  |- 📂 components:
|  |  |  |  |  |  |  |- 📜 ImageTrainspace.tsx
|  |  |  |  |  |  |  |- 📜 ImageReviewStep.tsx
|  |  |  |  |  |  |  |- 📜 ImageFlow.tsx
|  |  |  |  |  |  |  |- 📜 ImageDatasetStep.tsx
|  |  |  |  |  |  |  |- 📜 ImageParametersStep.tsx
|  |  |  |  |  |  |- 📂 redux:
|  |  |  |  |  |  |  |- 📜 imageApi.ts
|  |  |  |  |  |  |  |- 📜 imageActions.ts
|  |  |  |  |  |  |- 📜 index.ts
|  |  |  |- 📂 LearnMod:
|  |  |  |  |- 📜 MCQuestion.tsx
|  |  |  |  |- 📜 Exercise.tsx
|  |  |  |  |- 📜 LearningModulesContent.tsx
|  |  |  |  |- 📜 ModulesSideBar.tsx
|  |  |  |  |- 📜 ImageComponent.tsx
|  |  |  |  |- 📜 ClassCard.tsx
|  |  |  |  |- 📜 FRQuestion.tsx
|  |  |  |- 📂 Feedback:
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 feedbackApi.ts
|  |  |- 📜 GlobalStyle.ts
|  |  |- 📜 next-env.d.ts
|  |  |- 📜 iris.csv : Sample CSV data
|  |  |- 📜 constants.ts
|  |- 📂 public:
|  |  |- 📂 images:
|  |  |  |- 📂 logos:
|  |  |  |  |- 📂 dlp_branding:
|  |  |  |  |  |- 📜 dlp-logo.png : DLP Logo, duplicate of files in public, but essential as the frontend can't read public
|  |  |  |  |  |- 📜 dlp-logo.svg : DLP Logo, duplicate of files in public, but essential as the frontend can't read public
|  |  |  |  |- 📜 flask-logo.png
|  |  |  |  |- 📜 dsgt-logo-light.png
|  |  |  |  |- 📜 dsgt-logo-white-back.png
|  |  |  |  |- 📜 github.png
|  |  |  |  |- 📜 dsgt-logo-dark.png
|  |  |  |  |- 📜 pandas-logo.png
|  |  |  |  |- 📜 python-logo.png
|  |  |  |  |- 📜 pytorch-logo.png
|  |  |  |  |- 📜 google.png
|  |  |  |  |- 📜 aws-logo.png
|  |  |  |  |- 📜 react-logo.png
|  |  |  |- 📂 wiki_images:
|  |  |  |  |- 📜 softmax_equation.png : PNG file of Softmax equation
|  |  |  |  |- 📜 conv2d.gif
|  |  |  |  |- 📜 tanh_plot.png
|  |  |  |  |- 📜 dropout_diagram.png
|  |  |  |  |- 📜 batchnorm_diagram.png
|  |  |  |  |- 📜 maxpool2d.gif
|  |  |  |  |- 📜 sigmoid_equation.png
|  |  |  |  |- 📜 avgpool_maxpool.gif
|  |  |  |  |- 📜 conv2d2.gif
|  |  |  |  |- 📜 tanh_equation.png
|  |  |  |- 📂 learn_mod_images:
|  |  |  |  |- 📜 ReLUactivation.png
|  |  |  |  |- 📜 lossExampleTable.png
|  |  |  |  |- 📜 lossExampleEquation.png
|  |  |  |  |- 📜 tanhactivation.png
|  |  |  |  |- 📜 neuralnet.png
|  |  |  |  |- 📜 binarystepactivation.png
|  |  |  |  |- 📜 robotImage.jpg
|  |  |  |  |- 📜 LeakyReLUactivation.png
|  |  |  |  |- 📜 lossExample.png
|  |  |  |  |- 📜 sigmoidactivation.png
|  |  |  |  |- 📜 neuron.png
|  |  |  |  |- 📜 sigmoidfunction.png
|  |  |  |  |- 📜 neuronWithEquation.png
|  |  |  |- 📜 demo_video.gif : GIF tutorial of a simple classification training session
|  |  |- 📜 robots.txt
|  |  |- 📜 index.html : Base HTML file that will be initially rendered
|  |  |- 📜 dlp-logo.ico : DLP Logo
|  |  |- 📜 manifest.json : Default React file for choosing icon based on
|  |- 📜 next-env.d.ts
|  |- 📜 package.json
|  |- 📜 pnpm-workspace.yaml
|  |- 📜 .eslintrc.json
|  |- 📜 .env.example
|  |- 📜 .eslintignore
|  |- 📜 jest.config.ts
|  |- 📜 pnpm-lock.yaml
|  |- 📜 next.config.js
|  |- 📜 tsconfig.json
```

