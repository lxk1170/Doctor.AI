       �K"	  ��?F�Abrain.Event:2>,V�     �OY�	���?F�A"��
p
dense_1_inputPlaceholder*
dtype0*'
_output_shapes
:���������B*
shape:���������B
m
dense_1/random_uniform/shapeConst*
valueB"B   I� *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *E��*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *E��;*
dtype0*
_output_shapes
: 
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed���)*
T0*
dtype0* 
_output_shapes
:
B��*
seed2�χ
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:
B��
�
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min* 
_output_shapes
:
B��*
T0
�
dense_1/kernel
VariableV2*
dtype0* 
_output_shapes
:
B��*
	container *
shape:
B��*
shared_name 
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(* 
_output_shapes
:
B��*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
B��
^
dense_1/ConstConst*
valueB��*    *
dtype0*
_output_shapes

:��
|
dense_1/bias
VariableV2*
_output_shapes

:��*
	container *
shape:��*
shared_name *
dtype0
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes

:��
s
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes

:��*
T0
�
dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
T0*)
_output_shapes
:�����������*
transpose_a( *
transpose_b( 
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*)
_output_shapes
:�����������
Y
dense_1/ReluReludense_1/BiasAdd*)
_output_shapes
:�����������*
T0
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
�
dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*)
_output_shapes
:�����������
�
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*>
_output_shapes,
*:�����������:�����������*
T0*
_class
loc:@dense_1/Relu
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
out_type0*
_output_shapes
:
�
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*)
_output_shapes
:�����������*
seed2���*
seed���)
�
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*)
_output_shapes
:�����������*
T0
�
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*)
_output_shapes
:�����������
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
�
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*)
_output_shapes
:�����������
�
dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*
T0*)
_output_shapes
:�����������
�
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *)
_output_shapes
:�����������*

DstT0
�
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*)
_output_shapes
:�����������
�
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*>
_output_shapes,
*:�����������:�����������*
T0*
_class
loc:@dense_1/Relu
�
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*
T0*
N*+
_output_shapes
:�����������: 
m
dense_2/random_uniform/shapeConst*
valueB"I�    *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *�*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�;*
dtype0
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
��*
seed2��U*
seed���)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0* 
_output_shapes
:
��
�
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0* 
_output_shapes
:
��
�
dense_2/kernel
VariableV2*
shape:
��*
shared_name *
dtype0* 
_output_shapes
:
��*
	container 
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
}
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
��
Z
dense_2/ConstConst*
dtype0*
_output_shapes
:*
valueB*    
x
dense_2/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
�
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:
�
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:���������
_
Adam/iterations/initial_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R 
s
Adam/iterations
VariableV2*
dtype0	*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
use_locking(*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: 
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
_output_shapes
: *
T0*
_class
loc:@Adam/lr
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *w�?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: *
use_locking(
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 
�
dense_2_targetPlaceholder*0
_output_shapes
:������������������*%
shape:������������������*
dtype0
q
dense_2_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
\
loss/dense_2_loss/ConstConst*
_output_shapes
: *
valueB
 *���3*
dtype0
\
loss/dense_2_loss/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
_output_shapes
: *
T0
�
'loss/dense_2_loss/clip_by_value/MinimumMinimumdense_2/Softmaxloss/dense_2_loss/sub*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*'
_output_shapes
:���������*
T0
^
loss/dense_2_loss/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
loss/dense_2_loss/sub_1Subloss/dense_2_loss/sub_1/xloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/clip_by_valueloss/dense_2_loss/sub_1*
T0*'
_output_shapes
:���������
i
loss/dense_2_loss/LogLogloss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:���������
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:���������
s
#loss/dense_2_loss/logistic_loss/NegNegloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/mulMulloss/dense_2_loss/Logdense_2_target*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
_output_shapes
: *
valueB :
���������*
dtype0
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
m
*loss/dense_2_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Mean*loss/dense_2_loss/Mean_1/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
|
loss/dense_2_loss/mulMulloss/dense_2_loss/Mean_1dense_2_sample_weights*
T0*#
_output_shapes
:���������
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:���������
�
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mulloss/dense_2_loss/Mean_2*#
_output_shapes
:���������*
T0
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/dense_2_loss/Mean_3Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_3*
T0*
_output_shapes
: 
]
metrics/acc/RoundRounddense_2/Softmax*
T0*'
_output_shapes
:���������
o
metrics/acc/EqualEqualdense_2_targetmetrics/acc/Round*
T0*'
_output_shapes
:���������
|
metrics/acc/CastCastmetrics/acc/Equal*
Truncate( *'
_output_shapes
:���������*

DstT0*

SrcT0

m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
�
!training/Adam/gradients/grad_ys_0Const*
valueB
 *  �?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
�
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss/mul
�
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ShapeShapeloss/dense_2_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*#
_output_shapes
:���������
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
:
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2Const*
valueB *+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
_output_shapes
: 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ConstConst*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
?training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/MaximumMaximum<training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: 
�
>training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Cast*#
_output_shapes
:���������*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul*
T0*
out_type0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
�
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
valueB *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
dtype0*
_output_shapes
: 
�
Ntraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*2
_output_shapes 
:���������:���������
�
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/truedivloss/dense_2_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*#
_output_shapes
:���������*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
�
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������*
T0
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/truedivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*#
_output_shapes
:���������*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
�
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/ShapeShapeloss/dense_2_loss/Mean_1*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapedense_2_sample_weights*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*2
_output_shapes 
:���������:���������
�
6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulMul@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*
T0*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������
�
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������*
T0
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Mulloss/dense_2_loss/Mean_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������*
T0
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ShapeShapeloss/dense_2_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/SizeConst*
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
_output_shapes
: 
�
9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/addAdd*loss/dense_2_loss/Mean_1/reduction_indices:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Size*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/modFloorMod9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/add:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Size*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_1
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/startConst*
value	B : *+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
_output_shapes
: 
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/deltaConst*
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
_output_shapes
: 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/rangeRangeAtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/start:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/SizeAtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/FillFill=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitchDynamicStitch;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/mod;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Fill*
N*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/MaximumMaximumCtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:
�
>training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:*
T0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeCtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch*#
_output_shapes
:���������*
T0*
Tshape0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Reshape>training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*#
_output_shapes
:���������
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2Shapeloss/dense_2_loss/Mean*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3Shapeloss/dense_2_loss/Mean_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0
�
<training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/yConst*
_output_shapes
: *
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0
�
?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1Maximum<training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1FloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/CastCast@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
Truncate( 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*#
_output_shapes
:���������
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*
T0
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
value	B :*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
�
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
_output_shapes
: *
valueB *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
value	B : *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*
value	B :*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*

Tidx0
�
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*
value	B :*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
T0*

index_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
N*
_output_shapes
:
�
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
value	B :*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*)
_class
loc:@loss/dense_2_loss/Mean*0
_output_shapes
:������������������
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv*)
_class
loc:@loss/dense_2_loss/Mean*0
_output_shapes
:������������������*

Tmultiples0*
T0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/logistic_loss*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
:
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
valueB: *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
value	B :*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

SrcT0*)
_class
loc:@loss/dense_2_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*'
_output_shapes
:���������*
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
Btraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
_output_shapes
:
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
_output_shapes
:
�
Rtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
�
@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
_output_shapes
:
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
�
Btraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Sum;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivTtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
_output_shapes
:
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*
_output_shapes
:*
T0*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*
T0
�
Vtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*2
_output_shapes 
:���������:���������
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*'
_output_shapes
:���������
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*
_output_shapes
: *
valueB
 *  �?*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
dtype0
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/addAddHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/x#loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������*
T0*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p
�
Mtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add*
T0*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:���������*
T0
�
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_2_loss/Log*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*'
_output_shapes
:���������
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*'
_output_shapes
:���������
�
Ltraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape*'
_output_shapes
:���������*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_2_loss/Log*
T0*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*
T0*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:
�
Vtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*2
_output_shapes 
:���������:���������
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/MulMulJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1dense_2_target*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*'
_output_shapes
:���������*
T0
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumSumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/MulVtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_2_loss/LogJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*0
_output_shapes
:������������������*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mul#loss/dense_2_loss/logistic_loss/Exp*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������
�
Ptraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_2_loss/logistic_loss/Neg*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������
�
Ltraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mul*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������*
T0
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/NegNegLtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Neg*'
_output_shapes
:���������
�
training/Adam/gradients/AddNAddNJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/Neg*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
N*'
_output_shapes
:���������
�
=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/truediv^training/Adam/gradients/AddN*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:���������
�
6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:���������
�
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/ShapeShapeloss/dense_2_loss/clip_by_value*
T0*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/sub_1*
T0*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
�
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*2
_output_shapes 
:���������:���������
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulloss/dense_2_loss/sub_1*'
_output_shapes
:���������*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegloss/dense_2_loss/clip_by_value*'
_output_shapes
:���������*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulMul6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������
�
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/ShapeConst*
valueB **
_class 
loc:@loss/dense_2_loss/sub_1*
dtype0*
_output_shapes
: 
�
<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1Shapeloss/dense_2_loss/clip_by_value*
_output_shapes
:*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/sub_1
�
Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*2
_output_shapes 
:���������:���������
�
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:
�
>training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/sub_1*'
_output_shapes
:���������
�
training/Adam/gradients/AddN_1AddN>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape>training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
N*'
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
�
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
_output_shapes
: 
�
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:���������
�
Itraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*'
_output_shapes
:���������*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Rtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:���������:���������
�
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:���������*
T0
�
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:���������
�
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerostraining/Adam/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/Softmax*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
�
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
�
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_2/Softmaxloss/dense_2_loss/sub*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:���������
�
Ztraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*2
_output_shapes 
:���������:���������
�
Ktraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:���������
�
Mtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*'
_output_shapes
:���������*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 
�
0training/Adam/gradients/dense_2/Softmax_grad/mulMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapedense_2/Softmax*'
_output_shapes
:���������*
T0*"
_class
loc:@dense_2/Softmax
�
Btraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*
valueB :
���������*"
_class
loc:@dense_2/Softmax*
dtype0*
_output_shapes
: 
�
0training/Adam/gradients/dense_2/Softmax_grad/SumSum0training/Adam/gradients/dense_2/Softmax_grad/mulBtraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:���������*

Tidx0*
	keep_dims(
�
0training/Adam/gradients/dense_2/Softmax_grad/subSubLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape0training/Adam/gradients/dense_2/Softmax_grad/Sum*'
_output_shapes
:���������*
T0*"
_class
loc:@dense_2/Softmax
�
2training/Adam/gradients/dense_2/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:���������
�
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:
�
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*)
_output_shapes
:�����������*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul
�
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul* 
_output_shapes
:
��*
transpose_a(
�
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul*>
_output_shapes,
*:�����������:�����������
�
training/Adam/gradients/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*>
_output_shapes,
*:�����������:�����������
�
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
_class
loc:@dense_1/Relu*)
_output_shapes
:�����������*
T0
�
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@dense_1/Relu
�
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
valueB
 *    *
_class
loc:@dense_1/Relu*
dtype0*
_output_shapes
: 
�
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/Relu*)
_output_shapes
:�����������
�
>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
T0*
_class
loc:@dense_1/Relu*
N*+
_output_shapes
:�����������: 
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
T0*
out_type0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
�
Otraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*2
_output_shapes 
:���������:���������
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*)
_output_shapes
:�����������
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*)
_output_shapes
:�����������
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*)
_output_shapes
:�����������*
T0
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
�
Ctraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*)
_output_shapes
:�����������
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/mul*
T0*
out_type0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_1/cond/dropout/mul*
dtype0*
_output_shapes
: 
�
Mtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*2
_output_shapes 
:���������:���������
�
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*)
_output_shapes
:�����������
�
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*)
_output_shapes
:�����������*
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*)
_output_shapes
:�����������
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul
�
5training/Adam/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
T0*
out_type0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:
�
7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_1/cond/mul*
dtype0*
_output_shapes
: 
�
Etraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_1/cond/mul_grad/Shape7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*%
_class
loc:@dropout_1/cond/mul
�
3training/Adam/gradients/dropout_1/cond/mul_grad/MulMul?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshapedropout_1/cond/mul/y*%
_class
loc:@dropout_1/cond/mul*)
_output_shapes
:�����������*
T0
�
3training/Adam/gradients/dropout_1/cond/mul_grad/SumSum3training/Adam/gradients/dropout_1/cond/mul_grad/MulEtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
7training/Adam/gradients/dropout_1/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_1/cond/mul_grad/Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Shape*
Tshape0*%
_class
loc:@dropout_1/cond/mul*)
_output_shapes
:�����������*
T0
�
5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*)
_output_shapes
:�����������*
T0*%
_class
loc:@dropout_1/cond/mul
�
5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
9training/Adam/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_17training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
T0*
Tshape0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
: 
�
 training/Adam/gradients/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*>
_output_shapes,
*:�����������:�����������*
T0*
_class
loc:@dense_1/Relu
�
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
T0*
_class
loc:@dense_1/Relu*)
_output_shapes
:�����������
�
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
T0*
out_type0*
_class
loc:@dense_1/Relu*
_output_shapes
:
�
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
valueB
 *    *
_class
loc:@dense_1/Relu*
dtype0*
_output_shapes
: 
�
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*)
_output_shapes
:�����������*
T0*

index_type0*
_class
loc:@dense_1/Relu
�
@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_17training/Adam/gradients/dropout_1/cond/mul_grad/Reshape*+
_output_shapes
:�����������: *
T0*
_class
loc:@dense_1/Relu*
N
�
training/Adam/gradients/AddN_2AddN>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:�����������
�
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_2dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*)
_output_shapes
:�����������
�
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes

:��
�
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
T0*!
_class
loc:@dense_1/MatMul*'
_output_shapes
:���������B*
transpose_a( *
transpose_b(
�
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_1/MatMul* 
_output_shapes
:
B��*
transpose_a(*
transpose_b( 
_
training/Adam/AssignAdd/valueConst*
_output_shapes
: *
value	B	 R*
dtype0	
�
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
use_locking( *
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
p
training/Adam/CastCastAdam/iterations/read*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
X
training/Adam/add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
_output_shapes
: *
T0
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 
�
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
T0*
_output_shapes
: 
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"B   I� *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*

index_type0* 
_output_shapes
:
B��
�
training/Adam/Variable
VariableV2*
shape:
B��*
shared_name *
dtype0* 
_output_shapes
:
B��*
	container 
�
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(* 
_output_shapes
:
B��
�
training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable* 
_output_shapes
:
B��
q
%training/Adam/zeros_1/shape_as_tensorConst*
_output_shapes
:*
valueB:��*
dtype0
`
training/Adam/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_1Fill%training/Adam/zeros_1/shape_as_tensortraining/Adam/zeros_1/Const*
T0*

index_type0*
_output_shapes

:��
�
training/Adam/Variable_1
VariableV2*
dtype0*
_output_shapes

:��*
	container *
shape:��*
shared_name 
�
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes

:��*
use_locking(
�
training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes

:��
v
%training/Adam/zeros_2/shape_as_tensorConst*
valueB"I�    *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training/Adam/Variable_2
VariableV2*
shape:
��*
shared_name *
dtype0* 
_output_shapes
:
��*
	container 
�
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(* 
_output_shapes
:
��
�
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2* 
_output_shapes
:
��
b
training/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/Variable_3
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:
�
training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
:
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"B   I� *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0* 
_output_shapes
:
B��
�
training/Adam/Variable_4
VariableV2*
dtype0* 
_output_shapes
:
B��*
	container *
shape:
B��*
shared_name 
�
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(* 
_output_shapes
:
B��
�
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4* 
_output_shapes
:
B��
q
%training/Adam/zeros_5/shape_as_tensorConst*
valueB:��*
dtype0*
_output_shapes
:
`
training/Adam/zeros_5/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/zeros_5Fill%training/Adam/zeros_5/shape_as_tensortraining/Adam/zeros_5/Const*
T0*

index_type0*
_output_shapes

:��
�
training/Adam/Variable_5
VariableV2*
dtype0*
_output_shapes

:��*
	container *
shape:��*
shared_name 
�
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes

:��
�
training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes

:��
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"I�    *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training/Adam/Variable_6
VariableV2*
dtype0* 
_output_shapes
:
��*
	container *
shape:
��*
shared_name 
�
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6* 
_output_shapes
:
��*
T0*+
_class!
loc:@training/Adam/Variable_6
b
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/Variable_7
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
�
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(
�
training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
:
o
%training/Adam/zeros_8/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
`
training/Adam/zeros_8/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/Variable_8
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
�
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8
�
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
:
o
%training/Adam/zeros_9/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/Variable_9
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
�
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
:
p
&training/Adam/zeros_10/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/Variable_10
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
�
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10
�
training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
T0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
:
p
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/Variable_11
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:*
use_locking(
�
training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
:
t
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0* 
_output_shapes
:
B��
Z
training/Adam/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
B��*
T0
o
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2* 
_output_shapes
:
B��*
T0
v
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_4/read*
T0* 
_output_shapes
:
B��
Z
training/Adam/sub_3/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
B��
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0* 
_output_shapes
:
B��
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0* 
_output_shapes
:
B��
m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1* 
_output_shapes
:
B��*
T0
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0* 
_output_shapes
:
B��
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2* 
_output_shapes
:
B��*
T0
f
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1* 
_output_shapes
:
B��*
T0
Z
training/Adam/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0* 
_output_shapes
:
B��
w
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0* 
_output_shapes
:
B��
s
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1* 
_output_shapes
:
B��*
T0
�
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(* 
_output_shapes
:
B��
�
training/Adam/Assign_1Assigntraining/Adam/Variable_4training/Adam/add_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(* 
_output_shapes
:
B��
�
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
B��
r
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes

:��
Z
training/Adam/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes

:��
k
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes

:��
r
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_5/read*
T0*
_output_shapes

:��
Z
training/Adam/sub_6/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 
�
training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes

:��*
T0
n
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes

:��*
T0
k
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
_output_shapes

:��*
T0
j
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes

:��*
T0
Z
training/Adam/Const_4Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_5Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes

:��
�
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
_output_shapes

:��*
T0
b
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes

:��
Z
training/Adam/add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
n
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
_output_shapes

:��*
T0
t
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes

:��
m
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
_output_shapes

:��*
T0
�
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes

:��*
use_locking(*
T0
�
training/Adam/Assign_4Assigntraining/Adam/Variable_5training/Adam/add_5*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes

:��*
use_locking(*
T0
�
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes

:��
w
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0* 
_output_shapes
:
��
Z
training/Adam/sub_8/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
q
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12* 
_output_shapes
:
��*
T0
w
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_6/read*
T0* 
_output_shapes
:
��
Z
training/Adam/sub_9/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 
�
training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
s
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0* 
_output_shapes
:
��
q
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0* 
_output_shapes
:
��
n
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7* 
_output_shapes
:
��*
T0
Z
training/Adam/Const_6Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_7Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0* 
_output_shapes
:
��
�
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6* 
_output_shapes
:
��*
T0
f
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0* 
_output_shapes
:
��
Z
training/Adam/add_9/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
r
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y* 
_output_shapes
:
��*
T0
x
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9* 
_output_shapes
:
��*
T0
t
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0* 
_output_shapes
:
��
�
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(* 
_output_shapes
:
��
�
training/Adam/Assign_7Assigntraining/Adam/Variable_6training/Adam/add_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(* 
_output_shapes
:
��
�
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:
��
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
:
[
training/Adam/sub_11/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
_output_shapes
:*
T0
q
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
:
[
training/Adam/sub_12/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
_output_shapes
:*
T0
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:
Z
training/Adam/Const_8Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_9Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes
:
�
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes
:
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
_output_shapes
:*
T0
[
training/Adam/add_12/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes
:*
T0
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
:*
T0
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
T0*
_output_shapes
:
�
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(
�
training/Adam/Assign_10Assigntraining/Adam/Variable_7training/Adam/add_11*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:*
use_locking(
�
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9
2

group_depsNoOp	^loss/mul^metrics/acc/Mean_1
�
IsVariableInitializedIsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializedAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
z
IsVariableInitialized_5IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_7IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_8IsVariableInitialized
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedtraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedtraining/Adam/Variable_3*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_3
�
IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_4*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_4
�
IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_11*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_11*
dtype0
�
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign"&��U�*�     7�		'��?F�AJ��
� � 
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype�
is_initialized
"
dtypetype�
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
�
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
0
Round
x"T
y"T"
Ttype:

2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.14.02v1.14.0-rc1-22-gaf24dc9��
p
dense_1_inputPlaceholder*
dtype0*'
_output_shapes
:���������B*
shape:���������B
m
dense_1/random_uniform/shapeConst*
valueB"B   I� *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *E��*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *E��;*
dtype0*
_output_shapes
: 
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
seed2�χ* 
_output_shapes
:
B��*
seed���)*
T0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub* 
_output_shapes
:
B��*
T0
�
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:
B��
�
dense_1/kernel
VariableV2*
shared_name *
dtype0*
	container * 
_output_shapes
:
B��*
shape:
B��
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
B��*
use_locking(
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
B��
^
dense_1/ConstConst*
valueB��*    *
dtype0*
_output_shapes

:��
|
dense_1/bias
VariableV2*
dtype0*
	container *
_output_shapes

:��*
shape:��*
shared_name 
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes

:��*
use_locking(*
T0
s
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes

:��*
T0
�
dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
T0*
transpose_a( *)
_output_shapes
:�����������*
transpose_b( 
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*)
_output_shapes
:�����������
Y
dense_1/ReluReludense_1/BiasAdd*
T0*)
_output_shapes
:�����������
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
�
dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*)
_output_shapes
:�����������
�
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*>
_output_shapes,
*:�����������:�����������
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
out_type0*
_output_shapes
:
�
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*
seed2���*)
_output_shapes
:�����������*
seed���)*
T0
�
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*)
_output_shapes
:�����������*
T0
�
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*)
_output_shapes
:�����������
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
�
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*)
_output_shapes
:�����������*
T0
�
dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*)
_output_shapes
:�����������*
T0
�
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *

DstT0*)
_output_shapes
:�����������
�
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*)
_output_shapes
:�����������
�
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
_class
loc:@dense_1/Relu*>
_output_shapes,
*:�����������:�����������*
T0
�
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*
T0*
N*+
_output_shapes
:�����������: 
m
dense_2/random_uniform/shapeConst*
_output_shapes
:*
valueB"I�    *
dtype0
_
dense_2/random_uniform/minConst*
valueB
 *�*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *�;*
dtype0*
_output_shapes
: 
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0*
seed2��U* 
_output_shapes
:
��*
seed���)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub* 
_output_shapes
:
��*
T0
�
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0* 
_output_shapes
:
��
�
dense_2/kernel
VariableV2*
shape:
��*
shared_name *
dtype0*
	container * 
_output_shapes
:
��
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
}
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:
��
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
�
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
_output_shapes
:*
T0*
_class
loc:@dense_2/bias
�
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:���������
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:���������
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
dtype0	*
	container *
_output_shapes
: *
shape: *
shared_name 
�
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*"
_class
loc:@Adam/iterations
v
Adam/iterations/readIdentityAdam/iterations*
_output_shapes
: *
T0	*"
_class
loc:@Adam/iterations
Z
Adam/lr/initial_valueConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
�
Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
_output_shapes
: *
valueB
 *w�?*
dtype0
o
Adam/beta_2
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
�
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
�
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 
�
dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
q
dense_2_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
\
loss/dense_2_loss/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
T0*
_output_shapes
: 
�
'loss/dense_2_loss/clip_by_value/MinimumMinimumdense_2/Softmaxloss/dense_2_loss/sub*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*'
_output_shapes
:���������
^
loss/dense_2_loss/sub_1/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
loss/dense_2_loss/sub_1Subloss/dense_2_loss/sub_1/xloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/clip_by_valueloss/dense_2_loss/sub_1*'
_output_shapes
:���������*
T0
i
loss/dense_2_loss/LogLogloss/dense_2_loss/truediv*
T0*'
_output_shapes
:���������
�
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:���������
s
#loss/dense_2_loss/logistic_loss/NegNegloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/mulMulloss/dense_2_loss/Logdense_2_target*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*
T0*'
_output_shapes
:���������
�
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:���������
�
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*
T0*'
_output_shapes
:���������
�
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:���������*
T0
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:���������
m
*loss/dense_2_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Mean*loss/dense_2_loss/Mean_1/reduction_indices*#
_output_shapes
:���������*

Tidx0*
	keep_dims( *
T0
|
loss/dense_2_loss/mulMulloss/dense_2_loss/Mean_1dense_2_sample_weights*
T0*#
_output_shapes
:���������
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:���������
�
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:���������
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
�
loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mulloss/dense_2_loss/Mean_2*
T0*#
_output_shapes
:���������
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
�
loss/dense_2_loss/Mean_3Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_3*
T0*
_output_shapes
: 
]
metrics/acc/RoundRounddense_2/Softmax*'
_output_shapes
:���������*
T0
o
metrics/acc/EqualEqualdense_2_targetmetrics/acc/Round*
T0*'
_output_shapes
:���������
|
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*'
_output_shapes
:���������
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
T0*#
_output_shapes
:���������*

Tidx0*
	keep_dims( 
[
metrics/acc/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
_class
loc:@loss/mul*
valueB *
dtype0*
_output_shapes
: 
�
!training/Adam/gradients/grad_ys_0Const*
_class
loc:@loss/mul*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*
_class
loc:@loss/mul*

index_type0
�
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_3*
_class
loc:@loss/mul*
_output_shapes
: *
T0
�
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shapeConst*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_3*
valueB:*
dtype0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shape*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
Tshape0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ShapeShapeloss/dense_2_loss/truediv_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
out_type0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*#
_output_shapes
:���������*

Tmultiples0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
out_type0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2Const*+
_class!
loc:@loss/dense_2_loss/Mean_3*
valueB *
dtype0*
_output_shapes
: 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ConstConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
valueB: *
dtype0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const_1Const*
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_3*
valueB: 
�
<training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
?training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
value	B :*
dtype0*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/MaximumMaximum<training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: 
�
>training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
Truncate( 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*#
_output_shapes
:���������
�
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
out_type0*
_output_shapes
:
�
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
_output_shapes
: *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
valueB *
dtype0
�
Ntraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
�
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/truedivloss/dense_2_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*
	keep_dims( *

Tidx0
�
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*#
_output_shapes
:���������
�
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������*
T0
�
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/truedivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*
_output_shapes
: 
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/ShapeShapeloss/dense_2_loss/Mean_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*
out_type0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapedense_2_sample_weights*
T0*(
_class
loc:@loss/dense_2_loss/mul*
out_type0*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*2
_output_shapes 
:���������:���������*
T0
�
6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulMul@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*
T0*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������
�
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
�
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*#
_output_shapes
:���������
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Mulloss/dense_2_loss/Mean_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������*
T0
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*#
_output_shapes
:���������
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ShapeShapeloss/dense_2_loss/Mean*+
_class!
loc:@loss/dense_2_loss/Mean_1*
out_type0*
_output_shapes
:*
T0
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/SizeConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
�
9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/addAdd*loss/dense_2_loss/Mean_1/reduction_indices:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/modFloorMod9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/add:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/startConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B : *
dtype0*
_output_shapes
: 
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/deltaConst*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B :*
dtype0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/rangeRangeAtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/start:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/SizeAtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Fill/valueConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/FillFill=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Fill/value*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*

index_type0*
_output_shapes
: 
�
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitchDynamicStitch;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/mod;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Fill*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
N*
_output_shapes
:
�
?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/MaximumMaximumCtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/y*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
>training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeCtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch*#
_output_shapes
:���������*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
Tshape0
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Reshape>training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv*#
_output_shapes
:���������*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2Shapeloss/dense_2_loss/Mean*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
out_type0*
_output_shapes
:
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3Shapeloss/dense_2_loss/Mean_1*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
out_type0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/yConst*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B :*
dtype0
�
?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1Maximum<training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1FloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/CastCast@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Cast*+
_class!
loc:@loss/dense_2_loss/Mean_1*#
_output_shapes
:���������*
T0
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
�
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
valueB *
dtype0*
_output_shapes
: 
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B : 
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean
�
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
T0*)
_class
loc:@loss/dense_2_loss/Mean*

index_type0*
_output_shapes
: 
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
N*
_output_shapes
:
�
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*)
_class
loc:@loss/dense_2_loss/Mean*
Tshape0*0
_output_shapes
:������������������*
T0
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv*

Tmultiples0*
T0*)
_class
loc:@loss/dense_2_loss/Mean*0
_output_shapes
:������������������
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/logistic_loss*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

DstT0*
_output_shapes
: *

SrcT0*)
_class
loc:@loss/dense_2_loss/Mean*
Truncate( 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_2_loss/Mean*'
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
out_type0*
_output_shapes
:
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
out_type0*
_output_shapes
:
�
Rtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
�
@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
_output_shapes
:
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*'
_output_shapes
:���������*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
Tshape0
�
Btraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Sum;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivTtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs:1*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
Tshape0*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
out_type0*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
out_type0*
_output_shapes
:*
T0
�
Vtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
Tshape0*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
Tshape0*'
_output_shapes
:���������*
T0
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*
_output_shapes
: *8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
valueB
 *  �?*
dtype0
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/addAddHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/x#loss/dense_2_loss/logistic_loss/Exp*
T0*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:���������
�
Mtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add*
T0*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:���������*
T0
�
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*'
_output_shapes
:���������
�
Ltraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape*'
_output_shapes
:���������*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_2_loss/Log*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
out_type0*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
out_type0*
_output_shapes
:
�
Vtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*2
_output_shapes 
:���������:���������
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/MulMulJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1dense_2_target*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*'
_output_shapes
:���������
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumSumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/MulVtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
Tshape0*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_2_loss/LogJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
Tshape0*0
_output_shapes
:������������������
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mul#loss/dense_2_loss/logistic_loss/Exp*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������
�
Ptraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_2_loss/logistic_loss/Neg*'
_output_shapes
:���������*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1
�
Ltraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mul*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/NegNegLtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select*'
_output_shapes
:���������*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Neg
�
training/Adam/gradients/AddNAddNJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/Neg*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
N*'
_output_shapes
:���������
�
=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/truediv^training/Adam/gradients/AddN*'
_output_shapes
:���������*
T0*(
_class
loc:@loss/dense_2_loss/Log
�
6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:���������
�
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/ShapeShapeloss/dense_2_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0*
_output_shapes
:
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0*
_output_shapes
:
�
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*2
_output_shapes 
:���������:���������
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:���������
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegloss/dense_2_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/sub_1*'
_output_shapes
:���������*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulMul6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*'
_output_shapes
:���������*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*'
_output_shapes
:���������*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0
�
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/ShapeConst**
_class 
loc:@loss/dense_2_loss/sub_1*
valueB *
dtype0*
_output_shapes
: 
�
<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1Shapeloss/dense_2_loss/clip_by_value**
_class 
loc:@loss/dense_2_loss/sub_1*
out_type0*
_output_shapes
:*
T0
�
Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0**
_class 
loc:@loss/dense_2_loss/sub_1
�
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@loss/dense_2_loss/sub_1
�
<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
Tshape0*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:
�
>training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
Tshape0*'
_output_shapes
:���������
�
training/Adam/gradients/AddN_1AddN>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape>training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
N*'
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:
�
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
�
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*

index_type0*'
_output_shapes
:���������*
T0
�
Itraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:���������
�
Rtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:���������:���������
�
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:���������
�
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
�
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*'
_output_shapes
:���������
�
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerostraining/Adam/gradients/AddN_1*'
_output_shapes
:���������*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
�
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/Softmax*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:
�
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 
�
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:
�
Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*

index_type0*'
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_2/Softmaxloss/dense_2_loss/sub*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:���������*
T0
�
Ztraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*2
_output_shapes 
:���������:���������
�
Ktraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:���������
�
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:���������
�
Mtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:���������
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
�
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 
�
0training/Adam/gradients/dense_2/Softmax_grad/mulMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapedense_2/Softmax*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:���������*
T0
�
Btraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*"
_class
loc:@dense_2/Softmax*
valueB :
���������*
dtype0*
_output_shapes
: 
�
0training/Adam/gradients/dense_2/Softmax_grad/SumSum0training/Adam/gradients/dense_2/Softmax_grad/mulBtraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:���������*
	keep_dims(*

Tidx0*
T0*"
_class
loc:@dense_2/Softmax
�
0training/Adam/gradients/dense_2/Softmax_grad/subSubLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape0training/Adam/gradients/dense_2/Softmax_grad/Sum*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:���������
�
2training/Adam/gradients/dense_2/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:���������
�
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:
�
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul*
transpose_a( *)
_output_shapes
:�����������
�
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*!
_class
loc:@dense_2/MatMul*
transpose_a(* 
_output_shapes
:
��*
transpose_b( 
�
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul*>
_output_shapes,
*:�����������:�����������
�
training/Adam/gradients/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*>
_output_shapes,
*:�����������:�����������
�
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
T0*
_class
loc:@dense_1/Relu*)
_output_shapes
:�����������
�
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
_class
loc:@dense_1/Relu*
out_type0*
_output_shapes
:*
T0
�
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
dtype0*
_output_shapes
: *
_class
loc:@dense_1/Relu*
valueB
 *    
�
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*
_class
loc:@dense_1/Relu*

index_type0*)
_output_shapes
:�����������
�
>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*+
_output_shapes
:�����������: *
T0*
_class
loc:@dense_1/Relu*
N
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
out_type0*
_output_shapes
:
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
out_type0*
_output_shapes
:*
T0
�
Otraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*2
_output_shapes 
:���������:���������
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*)
_output_shapes
:�����������*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
Tshape0*)
_output_shapes
:�����������*
T0
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*)
_output_shapes
:�����������
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Ctraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*)
_output_shapes
:�����������*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
Tshape0
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/mul*
_output_shapes
:*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
out_type0
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Const*-
_class#
!loc:@dropout_1/cond/dropout/mul*
valueB *
dtype0*
_output_shapes
: 
�
Mtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*2
_output_shapes 
:���������:���������
�
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*)
_output_shapes
:�����������
�
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0*)
_output_shapes
:�����������*
T0
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*)
_output_shapes
:�����������*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0*
_output_shapes
: 
�
5training/Adam/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*%
_class
loc:@dropout_1/cond/mul*
out_type0*
_output_shapes
:*
T0
�
7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_1/cond/mul*
valueB *
dtype0*
_output_shapes
: 
�
Etraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_1/cond/mul_grad/Shape7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_1/cond/mul*2
_output_shapes 
:���������:���������
�
3training/Adam/gradients/dropout_1/cond/mul_grad/MulMul?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshapedropout_1/cond/mul/y*
T0*%
_class
loc:@dropout_1/cond/mul*)
_output_shapes
:�����������
�
3training/Adam/gradients/dropout_1/cond/mul_grad/SumSum3training/Adam/gradients/dropout_1/cond/mul_grad/MulEtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
7training/Adam/gradients/dropout_1/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_1/cond/mul_grad/Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_1/cond/mul*
Tshape0*)
_output_shapes
:�����������
�
5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*)
_output_shapes
:�����������*
T0*%
_class
loc:@dropout_1/cond/mul
�
5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
�
9training/Adam/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_17training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
_output_shapes
: *
T0*%
_class
loc:@dropout_1/cond/mul*
Tshape0
�
 training/Adam/gradients/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*>
_output_shapes,
*:�����������:�����������
�
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
_class
loc:@dense_1/Relu*)
_output_shapes
:�����������*
T0
�
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
_output_shapes
:*
T0*
_class
loc:@dense_1/Relu*
out_type0
�
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
_class
loc:@dense_1/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*
T0*
_class
loc:@dense_1/Relu*

index_type0*)
_output_shapes
:�����������
�
@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_17training/Adam/gradients/dropout_1/cond/mul_grad/Reshape*+
_output_shapes
:�����������: *
T0*
_class
loc:@dense_1/Relu*
N
�
training/Adam/gradients/AddN_2AddN>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:�����������
�
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_2dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*)
_output_shapes
:�����������
�
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes

:��
�
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*!
_class
loc:@dense_1/MatMul*
transpose_a( *'
_output_shapes
:���������B*
transpose_b(*
T0
�
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul*
transpose_a(* 
_output_shapes
:
B��
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
�
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
use_locking( *
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
p
training/Adam/CastCastAdam/iterations/read*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
X
training/Adam/add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
_output_shapes
: *
valueB
 *  �*
dtype0
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 
�
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
_output_shapes
: *
T0
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
T0*
_output_shapes
: 
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"B   I� *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const* 
_output_shapes
:
B��*
T0*

index_type0
�
training/Adam/Variable
VariableV2*
shape:
B��*
shared_name *
dtype0*
	container * 
_output_shapes
:
B��
�
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(* 
_output_shapes
:
B��
�
training/Adam/Variable/readIdentitytraining/Adam/Variable* 
_output_shapes
:
B��*
T0*)
_class
loc:@training/Adam/Variable
q
%training/Adam/zeros_1/shape_as_tensorConst*
valueB:��*
dtype0*
_output_shapes
:
`
training/Adam/zeros_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/zeros_1Fill%training/Adam/zeros_1/shape_as_tensortraining/Adam/zeros_1/Const*
T0*

index_type0*
_output_shapes

:��
�
training/Adam/Variable_1
VariableV2*
dtype0*
	container *
_output_shapes

:��*
shape:��*
shared_name 
�
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
validate_shape(*
_output_shapes

:��*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1
�
training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes

:��
v
%training/Adam/zeros_2/shape_as_tensorConst*
valueB"I�    *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training/Adam/Variable_2
VariableV2*
shared_name *
dtype0*
	container * 
_output_shapes
:
��*
shape:
��
�
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(* 
_output_shapes
:
��
�
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2* 
_output_shapes
:
��
b
training/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/Variable_3
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
�
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
_output_shapes
:*
T0*+
_class!
loc:@training/Adam/Variable_3
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"B   I� *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0* 
_output_shapes
:
B��
�
training/Adam/Variable_4
VariableV2*
shared_name *
dtype0*
	container * 
_output_shapes
:
B��*
shape:
B��
�
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(* 
_output_shapes
:
B��
�
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4* 
_output_shapes
:
B��
q
%training/Adam/zeros_5/shape_as_tensorConst*
_output_shapes
:*
valueB:��*
dtype0
`
training/Adam/zeros_5/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/zeros_5Fill%training/Adam/zeros_5/shape_as_tensortraining/Adam/zeros_5/Const*
T0*

index_type0*
_output_shapes

:��
�
training/Adam/Variable_5
VariableV2*
	container *
_output_shapes

:��*
shape:��*
shared_name *
dtype0
�
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
validate_shape(*
_output_shapes

:��*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5
�
training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes

:��
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"I�    *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const* 
_output_shapes
:
��*
T0*

index_type0
�
training/Adam/Variable_6
VariableV2*
dtype0*
	container * 
_output_shapes
:
��*
shape:
��*
shared_name 
�
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(* 
_output_shapes
:
��*
use_locking(*
T0
�
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6* 
_output_shapes
:
��*
T0
b
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/Variable_7
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
�
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:*
use_locking(
�
training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
:
o
%training/Adam/zeros_8/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/Variable_8
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
�
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:
�
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
:
o
%training/Adam/zeros_9/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*

index_type0*
_output_shapes
:*
T0
�
training/Adam/Variable_9
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
�
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:
�
training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
:
p
&training/Adam/zeros_10/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/Variable_10
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
�
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:
�
training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_10
p
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/Variable_11
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
�
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11
�
training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
:
t
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read* 
_output_shapes
:
B��*
T0
Z
training/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:
B��*
T0
o
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0* 
_output_shapes
:
B��
v
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_4/read*
T0* 
_output_shapes
:
B��
Z
training/Adam/sub_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
B��
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square* 
_output_shapes
:
B��*
T0
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4* 
_output_shapes
:
B��*
T0
m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1* 
_output_shapes
:
B��*
T0
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0* 
_output_shapes
:
B��
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0* 
_output_shapes
:
B��
f
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0* 
_output_shapes
:
B��
Z
training/Adam/add_3/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y* 
_output_shapes
:
B��*
T0
w
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3* 
_output_shapes
:
B��*
T0
s
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
T0* 
_output_shapes
:
B��
�
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(* 
_output_shapes
:
B��
�
training/Adam/Assign_1Assigntraining/Adam/Variable_4training/Adam/add_2*
validate_shape(* 
_output_shapes
:
B��*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4
�
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
validate_shape(* 
_output_shapes
:
B��*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
r
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
_output_shapes

:��*
T0
Z
training/Adam/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes

:��
k
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes

:��*
T0
r
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_5/read*
T0*
_output_shapes

:��
Z
training/Adam/sub_6/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 
�
training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes

:��*
T0
n
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes

:��
k
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes

:��
j
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes

:��
Z
training/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_5Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
_output_shapes

:��*
T0
�
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
T0*
_output_shapes

:��
b
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes

:��
Z
training/Adam/add_6/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
n
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes

:��
t
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes

:��
m
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
_output_shapes

:��*
T0
�
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes

:��
�
training/Adam/Assign_4Assigntraining/Adam/Variable_5training/Adam/add_5*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes

:��*
use_locking(*
T0
�
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
validate_shape(*
_output_shapes

:��*
use_locking(*
T0*
_class
loc:@dense_1/bias
w
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0* 
_output_shapes
:
��
Z
training/Adam/sub_8/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 
�
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
q
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0* 
_output_shapes
:
��
w
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_6/read*
T0* 
_output_shapes
:
��
Z
training/Adam/sub_9/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
_output_shapes
: *
T0
�
training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
s
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0* 
_output_shapes
:
��
q
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14* 
_output_shapes
:
��*
T0
n
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7* 
_output_shapes
:
��*
T0
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0* 
_output_shapes
:
��
�
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0* 
_output_shapes
:
��
f
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0* 
_output_shapes
:
��
Z
training/Adam/add_9/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
r
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0* 
_output_shapes
:
��
x
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9* 
_output_shapes
:
��*
T0
t
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0* 
_output_shapes
:
��
�
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(* 
_output_shapes
:
��
�
training/Adam/Assign_7Assigntraining/Adam/Variable_6training/Adam/add_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(* 
_output_shapes
:
��
�
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:
��
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
:
[
training/Adam/sub_11/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:
q
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
:
[
training/Adam/sub_12/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:
Z
training/Adam/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_9Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes
:
�
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes
:
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:
[
training/Adam/add_12/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
:*
T0
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
T0*
_output_shapes
:
�
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:
�
training/Adam/Assign_10Assigntraining/Adam/Variable_7training/Adam/add_11*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:
�
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_2/bias
�
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9
2

group_depsNoOp	^loss/mul^metrics/acc/Mean_1
�
IsVariableInitializedIsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializedAdam/iterations*
dtype0	*
_output_shapes
: *"
_class
loc:@Adam/iterations
z
IsVariableInitialized_5IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitializedAdam/beta_1*
_output_shapes
: *
_class
loc:@Adam/beta_1*
dtype0
�
IsVariableInitialized_7IsVariableInitializedAdam/beta_2*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2
�
IsVariableInitialized_8IsVariableInitialized
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedtraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedtraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_4*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_4
�
IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_6*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_6
�
IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_7*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_7
�
IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
�
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign"&"�	
cond_context�	�	
�
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *�
dense_1/Relu:0
dropout_1/cond/dropout/Cast:0
%dropout_1/cond/dropout/GreaterEqual:0
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/mul:0
dropout_1/cond/dropout/mul_1:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/dropout/rate:0
dropout_1/cond/dropout/sub/x:0
dropout_1/cond/dropout/sub:0
"dropout_1/cond/dropout/truediv/x:0
 dropout_1/cond/dropout/truediv:0
dropout_1/cond/mul/Switch:1
dropout_1/cond/mul/y:0
dropout_1/cond/mul:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0-
dense_1/Relu:0dropout_1/cond/mul/Switch:1
�
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*�
dense_1/Relu:0
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0+
dense_1/Relu:0dropout_1/cond/Switch_1:0"�
	variables��
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08"�
trainable_variables��
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08]
J1