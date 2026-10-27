# Architecture

## Training Architecture

```
📦 training
|  |- 📂 training:
|  |  |- 📂 routes:
|  |  |  |- 📂 tabular:
|  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 tabular.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |- 📂 image:
|  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 image.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |- 📂 audio:
|  |  |  |  |- 📜 audio.py
|  |  |  |  |- 📜 schemas.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |- 📂 datasets:
|  |  |  |  |- 📂 default:
|  |  |  |  |  |- 📜 columns.py
|  |  |  |  |  |- 📜 schemas.py
|  |  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 __init__.py
|  |  |  |- 📜 schemas.py
|  |  |  |- 📜 __init__.py
|  |  |- 📂 middleware:
|  |  |  |- 📜 __init__.py
|  |  |  |- 📜 health_check_middleware.py
|  |  |- 📂 core:
|  |  |  |- 📂 celery:
|  |  |  |  |- 📜 optimizer.py : what optimizer to use (ie: SGD or Adam for now)
|  |  |  |  |- 📜 dataset.py : read in the dataset through URL or file upload
|  |  |  |  |- 📜 trainer.py
|  |  |  |  |- 📜 dl_model.py : torch model based on user specifications from drag and drop
|  |  |  |  |- 📜 worker.py
|  |  |  |  |- 📜 criterion.py
|  |  |  |  |- 📜 Dockerfile
|  |  |  |  |- 📜 __init__.py
|  |  |  |  |- 📜 train_types.py
|  |  |  |- 📜 authenticator.py
|  |  |  |- 📜 __init__.py
|  |  |- 📜 celery_app.py
|  |  |- 📜 wsgi.py
|  |  |- 📜 constants.py : list of helpful constants
|  |  |- 📜 urls.py
|  |  |- 📜 __init__.py
|  |  |- 📜 settings.py
|  |  |- 📜 asgi.py
|  |  |- 📜 celeryconfig.py
|  |- 📜 cli.py
|  |- 📜 docker-compose.yml
|  |- 📜 pyproject.toml
|  |- 📜 pytest.ini
|  |- 📜 docker-compose.prod.yml
|  |- 📜 poetry.lock
|  |- 📜 README.md
|  |- 📜 Dockerfile
|  |- 📜 manage.py
|  |- 📜 environment.yml
```

## Frontend Architecture

```
📦 frontend
|  |- 📂 public:
|  |  |- 📂 images:
|  |  |  |- 📂 wiki_images:
|  |  |  |  |- 📜 batchnorm_diagram.png
|  |  |  |  |- 📜 sigmoid_equation.png
|  |  |  |  |- 📜 maxpool2d.gif
|  |  |  |  |- 📜 tanh_plot.png
|  |  |  |  |- 📜 avgpool_maxpool.gif
|  |  |  |  |- 📜 softmax_equation.png : PNG file of Softmax equation
|  |  |  |  |- 📜 tanh_equation.png
|  |  |  |  |- 📜 dropout_diagram.png
|  |  |  |  |- 📜 conv2d.gif
|  |  |  |  |- 📜 conv2d2.gif
|  |  |  |- 📂 logos:
|  |  |  |  |- 📂 dlp_branding:
|  |  |  |  |  |- 📜 dlp-logo.svg : DLP Logo, duplicate of files in public, but essential as the frontend can't read public
|  |  |  |  |  |- 📜 dlp-logo.png : DLP Logo, duplicate of files in public, but essential as the frontend can't read public
|  |  |  |  |- 📜 flask-logo.png
|  |  |  |  |- 📜 aws-logo.png
|  |  |  |  |- 📜 react-logo.png
|  |  |  |  |- 📜 pandas-logo.png
|  |  |  |  |- 📜 python-logo.png
|  |  |  |  |- 📜 dsgt-logo-light.png
|  |  |  |  |- 📜 google.png
|  |  |  |  |- 📜 github.png
|  |  |  |  |- 📜 pytorch-logo.png
|  |  |  |  |- 📜 dsgt-logo-dark.png
|  |  |  |  |- 📜 dsgt-logo-white-back.png
|  |  |  |- 📂 learn_mod_images:
|  |  |  |  |- 📜 ReLUactivation.png
|  |  |  |  |- 📜 sigmoidfunction.png
|  |  |  |  |- 📜 tanhactivation.png
|  |  |  |  |- 📜 lossExample.png
|  |  |  |  |- 📜 neuralnet.png
|  |  |  |  |- 📜 sigmoidactivation.png
|  |  |  |  |- 📜 lossExampleTable.png
|  |  |  |  |- 📜 lossExampleEquation.png
|  |  |  |  |- 📜 LeakyReLUactivation.png
|  |  |  |  |- 📜 binarystepactivation.png
|  |  |  |  |- 📜 neuronWithEquation.png
|  |  |  |  |- 📜 robotImage.jpg
|  |  |  |  |- 📜 neuron.png
|  |  |  |- 📜 demo_video.gif : GIF tutorial of a simple classification training session
|  |  |- 📜 manifest.json : Default React file for choosing icon based on
|  |  |- 📜 dlp-logo.ico : DLP Logo
|  |  |- 📜 index.html : Base HTML file that will be initially rendered
|  |  |- 📜 robots.txt
|  |- 📂 src:
|  |  |- 📂 backend_outputs:
|  |  |  |- 📜 model.pkl
|  |  |  |- 📜 model.pt : Last model.pt output
|  |  |  |- 📜 my_deep_learning_model.onnx : Last ONNX file output
|  |  |- 📂 features:
|  |  |  |- 📂 Train:
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 trainspaceApi.ts
|  |  |  |  |  |- 📜 trainspaceSlice.ts
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 DatasetStepLayout.tsx
|  |  |  |  |  |- 📜 TrainspaceLayout.tsx
|  |  |  |  |  |- 📜 CreateTrainspace.tsx
|  |  |  |  |- 📂 features:
|  |  |  |  |  |- 📂 Image:
|  |  |  |  |  |  |- 📂 redux:
|  |  |  |  |  |  |  |- 📜 imageActions.ts
|  |  |  |  |  |  |  |- 📜 imageApi.ts
|  |  |  |  |  |  |- 📂 components:
|  |  |  |  |  |  |  |- 📜 ImageDatasetStep.tsx
|  |  |  |  |  |  |  |- 📜 ImageParametersStep.tsx
|  |  |  |  |  |  |  |- 📜 ImageReviewStep.tsx
|  |  |  |  |  |  |  |- 📜 ImageTrainspace.tsx
|  |  |  |  |  |  |  |- 📜 ImageFlow.tsx
|  |  |  |  |  |  |- 📂 constants:
|  |  |  |  |  |  |  |- 📜 imageConstants.ts
|  |  |  |  |  |  |- 📂 types:
|  |  |  |  |  |  |  |- 📜 imageTypes.ts
|  |  |  |  |  |  |- 📜 index.ts
|  |  |  |  |  |- 📂 Tabular:
|  |  |  |  |  |  |- 📂 redux:
|  |  |  |  |  |  |  |- 📜 tabularActions.ts
|  |  |  |  |  |  |  |- 📜 tabularApi.ts
|  |  |  |  |  |  |- 📂 components:
|  |  |  |  |  |  |  |- 📜 TabularFlow.tsx
|  |  |  |  |  |  |  |- 📜 TabularDatasetStep.tsx
|  |  |  |  |  |  |  |- 📜 TabularTrainspace.tsx
|  |  |  |  |  |  |  |- 📜 TabularReviewStep.tsx
|  |  |  |  |  |  |  |- 📜 TabularParametersStep.tsx
|  |  |  |  |  |  |- 📂 constants:
|  |  |  |  |  |  |  |- 📜 tabularConstants.ts
|  |  |  |  |  |  |- 📂 types:
|  |  |  |  |  |  |  |- 📜 tabularTypes.ts
|  |  |  |  |  |  |- 📜 index.ts
|  |  |  |  |- 📂 constants:
|  |  |  |  |  |- 📜 trainConstants.ts
|  |  |  |  |- 📂 types:
|  |  |  |  |  |- 📜 trainTypes.ts
|  |  |  |- 📂 LearnMod:
|  |  |  |  |- 📜 ModulesSideBar.tsx
|  |  |  |  |- 📜 MCQuestion.tsx
|  |  |  |  |- 📜 FRQuestion.tsx
|  |  |  |  |- 📜 ClassCard.tsx
|  |  |  |  |- 📜 ImageComponent.tsx
|  |  |  |  |- 📜 Exercise.tsx
|  |  |  |  |- 📜 LearningModulesContent.tsx
|  |  |  |- 📂 Feedback:
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 feedbackApi.ts
|  |  |  |- 📂 Dashboard:
|  |  |  |  |- 📂 redux:
|  |  |  |  |  |- 📜 dashboardApi.ts
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 TrainBarChart.tsx
|  |  |  |  |  |- 📜 TrainDoughnutChart.tsx
|  |  |  |  |  |- 📜 TrainDataGrid.tsx
|  |  |  |- 📂 OpenAi:
|  |  |  |  |- 📜 openAiUtils.ts
|  |  |- 📂 pages:
|  |  |  |- 📂 train:
|  |  |  |  |- 📜 [train_space_id].tsx
|  |  |  |  |- 📜 metrics_to_charts.tsx
|  |  |  |  |- 📜 index.tsx
|  |  |  |- 📜 about.tsx
|  |  |  |- 📜 settings.tsx
|  |  |  |- 📜 LearnContent.tsx
|  |  |  |- 📜 _document.tsx
|  |  |  |- 📜 feedback.tsx
|  |  |  |- 📜 forgot.tsx
|  |  |  |- 📜 dashboard.tsx
|  |  |  |- 📜 learn.tsx
|  |  |  |- 📜 login.tsx
|  |  |  |- 📜 wiki.tsx
|  |  |  |- 📜 _app.tsx
|  |  |- 📂 common:
|  |  |  |- 📂 redux:
|  |  |  |  |- 📜 train.ts
|  |  |  |  |- 📜 hooks.ts
|  |  |  |  |- 📜 userLogin.ts
|  |  |  |  |- 📜 backendApi.ts
|  |  |  |  |- 📜 store.ts
|  |  |  |- 📂 components:
|  |  |  |  |- 📜 HtmlTooltip.tsx
|  |  |  |  |- 📜 Spacer.tsx
|  |  |  |  |- 📜 Footer.tsx
|  |  |  |  |- 📜 TitleText.tsx
|  |  |  |  |- 📜 ClientOnlyPortal.tsx
|  |  |  |  |- 📜 NavBarMain.tsx
|  |  |  |  |- 📜 EmailInput.tsx
|  |  |  |  |- 📜 DlpTooltip.tsx
|  |  |  |- 📂 utils:
|  |  |  |  |- 📜 dateFormat.ts
|  |  |  |  |- 📜 dndHelpers.ts
|  |  |  |  |- 📜 firebase.ts
|  |  |  |- 📂 styles:
|  |  |  |  |- 📜 globals.css
|  |  |  |  |- 📜 Home.module.css
|  |  |- 📂 __tests__:
|  |  |  |- 📂 common:
|  |  |  |  |- 📂 components:
|  |  |  |  |  |- 📜 TitleText.test.tsx
|  |  |- 📜 constants.ts
|  |  |- 📜 next-env.d.ts
|  |  |- 📜 GlobalStyle.ts
|  |  |- 📜 iris.csv : Sample CSV data
|  |- 📂 layer_docs:
|  |  |- 📜 softmax_equation.png : PNG file of Softmax equation
|  |  |- 📜 ReLU.md : Doc for ReLU later
|  |  |- 📜 Softmax.md : Doc for Softmax layer
|  |  |- 📜 Linear.md : Doc for Linear layer
|  |- 📜 next-env.d.ts
|  |- 📜 .eslintrc.json
|  |- 📜 pnpm-lock.yaml
|  |- 📜 next.config.js
|  |- 📜 tsconfig.json
|  |- 📜 jest.config.ts
|  |- 📜 .env.example
|  |- 📜 package.json
|  |- 📜 .eslintignore
```

