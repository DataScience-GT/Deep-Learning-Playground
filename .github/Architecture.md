# Architecture

## Training Architecture

```
📦 training
|  |- 📂 training:
|  |  |- 📂 core:
|  |  |  |- 📂 celery:
|  |  |  |  |- 📜 criterion.py
|  |  |  |  |- 📜 Dockerfile
|  |  |  |  |- 📜 train_types.py
|  |  |  |  |- 📜 dl_model.py : torch model based on user specifications from drag and drop
|  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 optimizer.py : what optimizer to use (ie: SGD or Adam for now)
|  |  |  |  |- 📜 worker.py
|  |  |  |  |- 📜 dataset.py : read in the dataset through URL or file upload
|  |  |  |  |- 📜 trainer.py
|  |  |  |- 📜 authenticator.py
|  |  |  |- 📜 __init__.py
|  |  |- 📂 routes:
|  |  |  |- 📂 tabular:
|  |  |  |  |- 📜 tabular.py
|  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |- 📂 datasets:
|  |  |  |  |- 📂 default:
|  |  |  |  |  |- 📜 columns.py
|  |  |  |  |  |- 📜 schemas.py
|  |  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |- 📂 audio:
|  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 audio.py
|  |  |  |- 📂 image:
|  |  |  |  |- 📜 image.py
|  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |- 📜 schemas.py
|  |  |  |- 📜 __init__.py
|  |  |- 📂 middleware:
|  |  |  |- 📜 __init__.py
|  |  |  |- 📜 health_check_middleware.py
|  |  |- 📜 celeryconfig.py
|  |  |- 📜 constants.py : list of helpful constants
|  |  |- 📜 wsgi.py
|  |  |- 📜 __init__.py
|  |  |- 📜 celery_app.py
|  |  |- 📜 asgi.py
|  |  |- 📜 urls.py
|  |  |- 📜 settings.py
|  |- 📜 pyproject.toml
|  |- 📜 poetry.lock
|  |- 📜 cli.py
|  |- 📜 pytest.ini
|  |- 📜 README.md
|  |- 📜 Dockerfile
|  |- 📜 docker-compose.prod.yml
|  |- 📜 environment.yml
|  |- 📜 manage.py
|  |- 📜 docker-compose.yml
```

## Frontend Architecture

```
📦 frontend
|  |- 📂 public:
|  |  |- 📂 images:
|  |  |  |- 📂 learn_mod_images:
|  |  |  |  |- 📜 tanhactivation.png
|  |  |  |  |- 📜 lossExampleEquation.png
|  |  |  |  |- 📜 LeakyReLUactivation.png
|  |  |  |  |- 📜 robotImage.jpg
|  |  |  |  |- 📜 ReLUactivation.png
|  |  |  |  |- 📜 neuronWithEquation.png
|  |  |  |  |- 📜 binarystepactivation.png
|  |  |  |  |- 📜 sigmoidactivation.png
|  |  |  |  |- 📜 neuralnet.png
|  |  |  |  |- 📜 neuron.png
|  |  |  |  |- 📜 sigmoidfunction.png
|  |  |  |  |- 📜 lossExample.png
|  |  |  |  |- 📜 lossExampleTable.png
|  |  |  |- 📂 wiki_images:
|  |  |  |  |- 📜 batchnorm_diagram.png
|  |  |  |  |- 📜 tanh_plot.png
|  |  |  |  |- 📜 maxpool2d.gif
|  |  |  |  |- 📜 softmax_equation.png : PNG file of Softmax equation
|  |  |  |  |- 📜 conv2d2.gif
|  |  |  |  |- 📜 conv2d.gif
|  |  |  |  |- 📜 avgpool_maxpool.gif
|  |  |  |  |- 📜 tanh_equation.png
|  |  |  |  |- 📜 sigmoid_equation.png
|  |  |  |  |- 📜 dropout_diagram.png
|  |  |  |- 📂 logos:
|  |  |  |  |- 📂 dlp_branding:
|  |  |  |  |  |- 📜 dlp-logo.png : DLP Logo, duplicate of files in public, but essential as the frontend can't read public
|  |  |  |  |  |- 📜 dlp-logo.svg : DLP Logo, duplicate of files in public, but essential as the frontend can't read public
|  |  |  |  |- 📜 dsgt-logo-white-back.png
|  |  |  |  |- 📜 aws-logo.png
|  |  |  |  |- 📜 pandas-logo.png
|  |  |  |  |- 📜 github.png
|  |  |  |  |- 📜 pytorch-logo.png
|  |  |  |  |- 📜 react-logo.png
|  |  |  |  |- 📜 dsgt-logo-dark.png
|  |  |  |  |- 📜 google.png
|  |  |  |  |- 📜 python-logo.png
|  |  |  |  |- 📜 flask-logo.png
|  |  |  |  |- 📜 dsgt-logo-light.png
|  |  |  |- 📜 demo_video.gif : GIF tutorial of a simple classification training session
|  |  |- 📜 dlp-logo.ico : DLP Logo
|  |  |- 📜 manifest.json : Default React file for choosing icon based on
|  |  |- 📜 robots.txt
|  |  |- 📜 index.html : Base HTML file that will be initially rendered
|  |- 📂 src:
|  |  |- 📂 pages:
|  |  |  |- 📂 train:
|  |  |  |  |- 📜 [train_space_id].tsx
|  |  |  |  |- 📜 metrics_to_charts.tsx
|  |  |  |  |- 📜 index.tsx
|  |  |  |- 📜 login.tsx
|  |  |  |- 📜 settings.tsx
|  |  |  |- 📜 LearnContent.tsx
|  |  |  |- 📜 _app.tsx
|  |  |  |- 📜 _document.tsx
|  |  |  |- 📜 wiki.tsx
|  |  |  |- 📜 forgot.tsx
|  |  |  |- 📜 learn.tsx
|  |  |  |- 📜 dashboard.tsx
|  |  |  |- 📜 about.tsx
|  |  |  |- 📜 feedback.tsx
|  |  |- 📂 backend_outputs:
|  |  |  |- 📜 model.pt : Last model.pt output
|  |  |  |- 📜 my_deep_learning_model.onnx : Last ONNX file output
|  |  |  |- 📜 model.pkl
|  |  |- 📂 __tests__:
|  |  |  |- 📂 common:
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 TitleText.test.tsx
|  |  |- 📂 features:
|  |  |  |- 📂 Dashboard:
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 TrainDataGrid.tsx
|  |  |  |  |  |- 📜 TrainDoughnutChart.tsx
|  |  |  |  |  |- 📜 TrainBarChart.tsx
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 dashboardApi.ts
|  |  |  |- 📂 LearnMod:
|  |  |  |  |- 📜 LearningModulesContent.tsx
|  |  |  |  |- 📜 ImageComponent.tsx
|  |  |  |  |- 📜 MCQuestion.tsx
|  |  |  |  |- 📜 ModulesSideBar.tsx
|  |  |  |  |- 📜 ClassCard.tsx
|  |  |  |  |- 📜 FRQuestion.tsx
|  |  |  |  |- 📜 Exercise.tsx
|  |  |  |- 📂 OpenAi:
|  |  |  |  |- 📜 openAiUtils.ts
|  |  |  |- 📂 Train:
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 CreateTrainspace.tsx
|  |  |  |  |  |- 📜 DatasetStepLayout.tsx
|  |  |  |  |  |- 📜 TrainspaceLayout.tsx
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 trainspaceSlice.ts
|  |  |  |  |  |- 📜 trainspaceApi.ts
|  |  |  |  |- 📂 constants:
|  |  |  |  |  |- 📜 trainConstants.ts
|  |  |  |  |- 📂 features:
|  |  |  |  |  |- 📂 Tabular:
|  |  |  |  |  |  |- 📂 components:
|  |  |  |  |  |  |  |- 📜 TabularReviewStep.tsx
|  |  |  |  |  |  |  |- 📜 TabularTrainspace.tsx
|  |  |  |  |  |  |  |- 📜 TabularParametersStep.tsx
|  |  |  |  |  |  |  |- 📜 TabularFlow.tsx
|  |  |  |  |  |  |  |- 📜 TabularDatasetStep.tsx
|  |  |  |  |  |  |- 📂 redux:
|  |  |  |  |  |  |  |- 📜 tabularApi.ts
|  |  |  |  |  |  |  |- 📜 tabularActions.ts
|  |  |  |  |  |  |- 📂 constants:
|  |  |  |  |  |  |  |- 📜 tabularConstants.ts
|  |  |  |  |  |  |- 📂 types:
|  |  |  |  |  |  |  |- 📜 tabularTypes.ts
|  |  |  |  |  |  |- 📜 index.ts
|  |  |  |  |  |- 📂 Image:
|  |  |  |  |  |  |- 📂 components:
|  |  |  |  |  |  |  |- 📜 ImageFlow.tsx
|  |  |  |  |  |  |  |- 📜 ImageReviewStep.tsx
|  |  |  |  |  |  |  |- 📜 ImageTrainspace.tsx
|  |  |  |  |  |  |  |- 📜 ImageParametersStep.tsx
|  |  |  |  |  |  |  |- 📜 ImageDatasetStep.tsx
|  |  |  |  |  |  |- 📂 redux:
|  |  |  |  |  |  |  |- 📜 imageApi.ts
|  |  |  |  |  |  |  |- 📜 imageActions.ts
|  |  |  |  |  |  |- 📂 constants:
|  |  |  |  |  |  |  |- 📜 imageConstants.ts
|  |  |  |  |  |  |- 📂 types:
|  |  |  |  |  |  |  |- 📜 imageTypes.ts
|  |  |  |  |  |  |- 📜 index.ts
|  |  |  |  |- 📂 types:
|  |  |  |  |  |- 📜 trainTypes.ts
|  |  |  |- 📂 Feedback:
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 feedbackApi.ts
|  |  |- 📂 common:
|  |  |  |- 📂 utils:
|  |  |  |  |- 📜 dndHelpers.ts
|  |  |  |  |- 📜 firebase.ts
|  |  |  |  |- 📜 dateFormat.ts
|  |  |  |- 📂 components:
|  |  |  |  |- 📜 Footer.tsx
|  |  |  |  |- 📜 DlpTooltip.tsx
|  |  |  |  |- 📜 NavBarMain.tsx
|  |  |  |  |- 📜 EmailInput.tsx
|  |  |  |  |- 📜 ClientOnlyPortal.tsx
|  |  |  |  |- 📜 HtmlTooltip.tsx
|  |  |  |  |- 📜 Spacer.tsx
|  |  |  |  |- 📜 TitleText.tsx
|  |  |  |- 📂 redux:
|  |  |  |  |- 📜 hooks.ts
|  |  |  |  |- 📜 backendApi.ts
|  |  |  |  |- 📜 userLogin.ts
|  |  |  |  |- 📜 train.ts
|  |  |  |  |- 📜 store.ts
|  |  |  |- 📂 styles:
|  |  |  |  |- 📜 globals.css
|  |  |  |  |- 📜 Home.module.css
|  |  |- 📜 next-env.d.ts
|  |  |- 📜 GlobalStyle.ts
|  |  |- 📜 iris.csv : Sample CSV data
|  |  |- 📜 constants.ts
|  |- 📂 layer_docs:
|  |  |- 📜 ReLU.md : Doc for ReLU later
|  |  |- 📜 softmax_equation.png : PNG file of Softmax equation
|  |  |- 📜 Linear.md : Doc for Linear layer
|  |  |- 📜 Softmax.md : Doc for Softmax layer
|  |- 📜 tsconfig.json
|  |- 📜 jest.config.ts
|  |- 📜 next.config.js
|  |- 📜 package.json
|  |- 📜 next-env.d.ts
|  |- 📜 .eslintignore
|  |- 📜 pnpm-lock.yaml
|  |- 📜 .eslintrc.json
|  |- 📜 pnpm-workspace.yaml
|  |- 📜 .env.example
```

