import keras
from keras.layers.core import Dense
from keras.optimizers import Adam
from keras.preprocessing.image import ImageDataGenerator
from keras.models import Model
import matplotlib.pyplot as plt
from keras import losses

# Custom image dataset
train_path = r'./train/'
test_path = r'./test/'
valid_path = r'./valid/'

train_batches = ImageDataGenerator(preprocessing_function=None).flow_from_directory(
    train_path, target_size=(4128, 3096), batch_size=1)
test_batches = ImageDataGenerator(preprocessing_function=None).flow_from_directory(
    test_path, target_size=(4128, 3096), batch_size=1, shuffle=False)
valid_batches = ImageDataGenerator(preprocessing_function=None).flow_from_directory(
    valid_path, target_size=(4128, 3096), batch_size=1)

mobile = keras.applications.mobilenet_v2.MobileNetV2(input_shape=(4128, 3096, 3), alpha=1.0, include_top=False,
                                                     weights=None, input_tensor=None, pooling=None,
                                                     classes=6)
# mobile.load_weights(r'./mobilenet_1_0_224_tf.h5')
mobile.summary()
x = mobile.layers[-6].output
# 10 classes in the model dataset
predictions = Dense(10, activation='softmax')(x)
model = Model(inputs=mobile.input, outputs=predictions)
# training the last 23 layers for sign language
for layer in model.layers[:-23]:
    layer.trainable = False

for i, layer in enumerate(model.layers):
    print(i, layer.name)

model.compile(Adam(lr=0.0001), loss=losses.categorical_crossentropy, metrics=['accuracy'])
# Steps per epoch changed, validation_steps and epochs changed
# fit and fit_generator difference
history = model.fit_generator(train_batches, steps_per_epoch=3, validation_data=valid_batches, validation_steps=3,
                              epochs=3, verbose=2)
# list all data in history
print(history.history.keys())
# summarize history for accuracy
plt.plot(history.history['accuracy'])
plt.plot(history.history['val_accuracy'])
plt.title('model accuracy')
plt.ylabel('accuracy')
plt.xlabel('epoch')
plt.legend(['train', 'test'], loc='upper left')
plt.show()
# summarize history for loss
plt.plot(history.history['loss'])
plt.plot(history.history['val_loss'])
plt.title('model loss')
plt.ylabel('loss')
plt.xlabel('epoch')
plt.legend(['train', 'test'], loc='upper left')
plt.show()

test_labels = test_batches.classes  # shuffle= False
# Shows classes and indices
print(test_batches.class_indices)
# verbose = 0 does not provide output
predictions = model.predict_generator(test_batches, steps=1, verbose=0)
