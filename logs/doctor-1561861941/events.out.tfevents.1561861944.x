       �K"	   �F�Abrain.Event:2��`t��     e� �	Α#�F�A"��
p
dense_1_inputPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
m
dense_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
_
dense_1/random_uniform/minConst*
valueB
 *JQھ*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *JQ�>
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed���)*
T0*
dtype0*
_output_shapes

: *
seed2
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

: 
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes

: 
�
dense_1/kernel
VariableV2*
shape
: *
shared_name *
dtype0*
_output_shapes

: *
	container 
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

: 
{
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

: 
Z
dense_1/ConstConst*
dtype0*
_output_shapes
: *
valueB *    
x
dense_1/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: 
q
dense_1/bias/readIdentitydense_1/bias*
_output_shapes
: *
T0*
_class
loc:@dense_1/bias
�
dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:��������� 
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
_output_shapes
: *
shape: *
dtype0

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
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
~
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*'
_output_shapes
:��������� 
�
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:��������� :��������� 
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
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*'
_output_shapes
:��������� *
seed2��*
seed���)*
T0
�
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:��������� 
�
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:��������� 
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
 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
_output_shapes
: *
T0
�
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:��������� 
�
dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*'
_output_shapes
:��������� *
T0
�
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:��������� *

DstT0
�
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*'
_output_shapes
:��������� 
�
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:��������� :��������� 
�
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:��������� : 
m
dense_2/random_uniform/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *A׾*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *A�>*
dtype0*
_output_shapes
: 
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0*
_output_shapes

: *
seed2���*
seed���)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes

: *
T0
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
_output_shapes

: *
T0
�
dense_2/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes

: *
	container *
shape
: 
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
{
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

: 
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
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
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
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
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
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
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
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
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
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
Adam/beta_1/readIdentityAdam/beta_1*
_output_shapes
: *
T0*
_class
loc:@Adam/beta_1
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
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
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
VariableV2*
dtype0*
_output_shapes
: *
	container *
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
Adam/decay*
_output_shapes
: *
T0*
_class
loc:@Adam/decay
�
dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
q
dense_2_sample_weightsPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
\
loss/dense_2_loss/ConstConst*
_output_shapes
: *
valueB
 *���3*
dtype0
\
loss/dense_2_loss/sub/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*'
_output_shapes
:���������
^
loss/dense_2_loss/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
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
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_2_loss/Log*
T0*'
_output_shapes
:���������
�
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
�
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:���������*
T0
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
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*
T0*#
_output_shapes
:���������*
	keep_dims( *

Tidx0
m
*loss/dense_2_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Mean*loss/dense_2_loss/Mean_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
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
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*
Truncate( *#
_output_shapes
:���������*

DstT0*

SrcT0

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
loss/dense_2_loss/Const_2Const*
_output_shapes
:*
valueB: *
dtype0
�
loss/dense_2_loss/Mean_3Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
metrics/acc/EqualEqualdense_2_targetmetrics/acc/Round*'
_output_shapes
:���������*
T0
|
metrics/acc/CastCastmetrics/acc/Equal*'
_output_shapes
:���������*

DstT0*

SrcT0
*
Truncate( 
m
"metrics/acc/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*#
_output_shapes
:���������*
	keep_dims( *

Tidx0*
T0
[
metrics/acc/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ShapeShapeloss/dense_2_loss/truediv_1*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2Const*
valueB *+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
_output_shapes
: 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_3
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const_1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: 
�
?training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_3*
dtype0*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/MaximumMaximum<training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum/y*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: *
T0
�
>training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/floordiv*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
Truncate( *
_output_shapes
: *

DstT0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*#
_output_shapes
:���������
�
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul*
out_type0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*
T0
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
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������*
T0
�
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������*
T0
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
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
:*

Tidx0*
	keep_dims( 
�
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/ShapeShapeloss/dense_2_loss/Mean_1*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*
T0
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
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/dense_2_loss/mul
�
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Mulloss/dense_2_loss/Mean_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*
T0*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/dense_2_loss/mul
�
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������*
T0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ShapeShapeloss/dense_2_loss/Mean*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1
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
9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/modFloorMod9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/add:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_1Const*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
_output_shapes
:
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
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
N*
_output_shapes
:
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
>training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeCtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss/dense_2_loss/Mean_1*#
_output_shapes
:���������
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
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:
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
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_1*
dtype0*
_output_shapes
:
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
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_1
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
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/CastCast@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
Truncate( *
_output_shapes
: *

DstT0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Cast*#
_output_shapes
:���������*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
value	B :*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
�
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
T0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
valueB *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
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
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean
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
N*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_2_loss/Mean
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
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
Tshape0*)
_class
loc:@loss/dense_2_loss/Mean*0
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
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
:
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
valueB: *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
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
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean
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
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_2_loss/Mean*'
_output_shapes
:���������
�
Btraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
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
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*'
_output_shapes
:���������
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
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*
T0*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:*
T0*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Vtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
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
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*
Tshape0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*'
_output_shapes
:���������*
T0
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:
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
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal*'
_output_shapes
:���������*
T0*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p
�
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_2_loss/Log*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*'
_output_shapes
:���������*
T0
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
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*
_output_shapes
:*
T0*
out_type0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul
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
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*0
_output_shapes
:������������������
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mul#loss/dense_2_loss/logistic_loss/Exp*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������*
T0
�
Ptraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_2_loss/logistic_loss/Neg*'
_output_shapes
:���������*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1
�
Ltraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like*'
_output_shapes
:���������*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1
�
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mul*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������
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
6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*'
_output_shapes
:���������*
T0*(
_class
loc:@loss/dense_2_loss/Log
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
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
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
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/sub_1*'
_output_shapes
:���������*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
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
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������
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
Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0**
_class 
loc:@loss/dense_2_loss/sub_1
�
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/dense_2_loss/sub_1
�
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:
�
>training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/sub_1
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
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
�
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*

index_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
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
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/Softmax*
_output_shapes
:*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
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
Ktraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:���������*
T0
�
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Mtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*'
_output_shapes
:���������*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: *
T0
�
0training/Adam/gradients/dense_2/Softmax_grad/mulMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapedense_2/Softmax*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:���������*
T0
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
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
_output_shapes
:*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC
�
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*
T0*!
_class
loc:@dense_2/MatMul*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(
�
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul
�
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*:
_output_shapes(
&:��������� :��������� *
T0*!
_class
loc:@dense_2/MatMul
�
training/Adam/gradients/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:��������� :��������� *
T0*
_class
loc:@dense_1/Relu
�
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
_class
loc:@dense_1/Relu*'
_output_shapes
:��������� *
T0
�
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
T0*
out_type0*
_class
loc:@dense_1/Relu*
_output_shapes
:
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
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*'
_output_shapes
:��������� *
T0*

index_type0*
_class
loc:@dense_1/Relu
�
>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:��������� : *
T0
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
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*'
_output_shapes
:��������� *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
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
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:��������� 
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*'
_output_shapes
:��������� *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
Ctraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:��������� 
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
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*'
_output_shapes
:��������� *
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
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
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:��������� 
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*'
_output_shapes
:��������� *
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
: 
�
5training/Adam/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
T0*
out_type0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:
�
7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *%
_class
loc:@dropout_1/cond/mul
�
Etraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_1/cond/mul_grad/Shape7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*%
_class
loc:@dropout_1/cond/mul*2
_output_shapes 
:���������:���������*
T0
�
3training/Adam/gradients/dropout_1/cond/mul_grad/MulMul?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshapedropout_1/cond/mul/y*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:��������� 
�
3training/Adam/gradients/dropout_1/cond/mul_grad/SumSum3training/Adam/gradients/dropout_1/cond/mul_grad/MulEtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_1/cond/mul
�
7training/Adam/gradients/dropout_1/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_1/cond/mul_grad/Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Shape*
T0*
Tshape0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:��������� 
�
5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:��������� 
�
5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:
�
9training/Adam/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_17training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
Tshape0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
: *
T0
�
 training/Adam/gradients/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:��������� :��������� *
T0
�
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
_class
loc:@dense_1/Relu*'
_output_shapes
:��������� *
T0
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
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*'
_output_shapes
:��������� *
T0*

index_type0*
_class
loc:@dense_1/Relu
�
@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_17training/Adam/gradients/dropout_1/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:��������� : 
�
training/Adam/gradients/AddN_2AddN>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*'
_output_shapes
:��������� 
�
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_2dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:��������� 
�
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
�
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul*'
_output_shapes
:���������*
transpose_a( 
�
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_1/MatMul*
_output_shapes

: *
transpose_a(*
transpose_b( 
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
�
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*"
_class
loc:@Adam/iterations*
_output_shapes
: *
use_locking( *
T0	
p
training/Adam/CastCastAdam/iterations/read*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
X
training/Adam/add/yConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
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
training/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  �
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
_output_shapes
: *
T0
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
training/Adam/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
h
training/Adam/zerosConst*
_output_shapes

: *
valueB *    *
dtype0
�
training/Adam/Variable
VariableV2*
shared_name *
dtype0*
_output_shapes

: *
	container *
shape
: 
�
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

: 
�
training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*
_output_shapes

: 
b
training/Adam/zeros_1Const*
dtype0*
_output_shapes
: *
valueB *    
�
training/Adam/Variable_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
�
training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: *
T0
j
training/Adam/zeros_2Const*
valueB *    *
dtype0*
_output_shapes

: 
�
training/Adam/Variable_2
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
�
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2
�
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes

: *
T0
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
j
training/Adam/zeros_4Const*
_output_shapes

: *
valueB *    *
dtype0
�
training/Adam/Variable_4
VariableV2*
_output_shapes

: *
	container *
shape
: *
shared_name *
dtype0
�
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

: 
�
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes

: 
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 
�
training/Adam/Variable_5
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: *
use_locking(
�
training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 
j
training/Adam/zeros_6Const*
_output_shapes

: *
valueB *    *
dtype0
�
training/Adam/Variable_6
VariableV2*
shape
: *
shared_name *
dtype0*
_output_shapes

: *
	container 
�
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

: 
�
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes

: *
T0
b
training/Adam/zeros_7Const*
dtype0*
_output_shapes
:*
valueB*    
�
training/Adam/Variable_7
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:
�
training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
_output_shapes
:*
T0*+
_class!
loc:@training/Adam/Variable_7
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
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
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
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
:*
T0
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
training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/Variable_9
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
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
&training/Adam/zeros_10/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/Variable_10
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
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
&training/Adam/zeros_11/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*

index_type0*
_output_shapes
:*
T0
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
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:
�
training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_11
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes

: 
Z
training/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes

: 
t
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_4/read*
_output_shapes

: *
T0
Z
training/Adam/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 
}
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
_output_shapes

: *
T0
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes

: 
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes

: 
Z
training/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
_output_shapes

: 
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0*
_output_shapes

: 
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
_output_shapes

: *
T0
Z
training/Adam/add_3/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes

: 
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes

: 
q
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
T0*
_output_shapes

: 
�
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

: 
�
training/Adam/Assign_1Assigntraining/Adam/Variable_4training/Adam/add_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

: 
�
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
_output_shapes
: *
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
training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes
: *
T0
p
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_5/read*
_output_shapes
: *
T0
Z
training/Adam/sub_6/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes
: *
T0
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
: 
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_5Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes
: 
�
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
: 
Z
training/Adam/add_6/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
_output_shapes
: *
T0
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
: 
k
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes
: 
�
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
�
training/Adam/Assign_4Assigntraining/Adam/Variable_5training/Adam/add_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
�
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
_output_shapes

: *
T0
Z
training/Adam/sub_8/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
_output_shapes
: *
T0
�
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes

: *
T0
u
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_6/read*
T0*
_output_shapes

: 
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

training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes

: *
T0
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes

: *
T0
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
_output_shapes

: *
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
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
_output_shapes

: *
T0
�
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
_output_shapes

: *
T0
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes

: *
T0
Z
training/Adam/add_9/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes

: *
T0
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes

: 
r
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
_output_shapes

: *
T0
�
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2
�
training/Adam/Assign_7Assigntraining/Adam/Variable_6training/Adam/add_8*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

: *
use_locking(
�
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@dense_2/kernel
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
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
_output_shapes
: *
T0
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
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
:*
T0
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
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
_output_shapes
:*
T0
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
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
_output_shapes
:*
T0
�
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
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
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel
�
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_2/bias
�
IsVariableInitialized_4IsVariableInitializedAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
z
IsVariableInitialized_5IsVariableInitializedAdam/lr*
dtype0*
_output_shapes
: *
_class
loc:@Adam/lr
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
Adam/decay*
_output_shapes
: *
_class
loc:@Adam/decay*
dtype0
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
IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_5*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_5
�
IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_7*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_7*
dtype0
�
IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_9*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_9
�
IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_10*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_10
�
IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
�
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign"&�v��     ����	�$�F�AJ��
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
:���������*
shape:���������
m
dense_1/random_uniform/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *JQھ*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *JQ�>
�
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed���)*
T0*
dtype0*
seed2*
_output_shapes

: 
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
�
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

: 
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
_output_shapes

: *
T0
�
dense_1/kernel
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes

: *
shape
: 
�
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

: 
{
dense_1/kernel/readIdentitydense_1/kernel*
_output_shapes

: *
T0*!
_class
loc:@dense_1/kernel
Z
dense_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_1/bias
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
�
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: 
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
: 
�
dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:��������� *
transpose_b( 
�
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
W
dense_1/ReluReludense_1/BiasAdd*'
_output_shapes
:��������� *
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
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
: *
T0

c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
~
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*'
_output_shapes
:��������� 
�
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:��������� :��������� *
T0*
_class
loc:@dense_1/Relu
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
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
�
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed���)*
T0*
dtype0*
seed2��*'
_output_shapes
:��������� 
�
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*'
_output_shapes
:��������� *
T0
�
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:��������� 
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
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
_output_shapes
: *
T0
�
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:��������� 
�
dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*'
_output_shapes
:��������� *
T0
�
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

DstT0*'
_output_shapes
:��������� *

SrcT0
*
Truncate( 
�
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*'
_output_shapes
:��������� *
T0
�
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:��������� :��������� 
�
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:��������� : 
m
dense_2/random_uniform/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
_
dense_2/random_uniform/minConst*
valueB
 *A׾*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *A�>*
dtype0*
_output_shapes
: 
�
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seed2���*
_output_shapes

: *
seed���)*
T0*
dtype0
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
�
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes

: 
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

: 
�
dense_2/kernel
VariableV2*
shape
: *
shared_name *
dtype0*
	container *
_output_shapes

: 
�
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
{
dense_2/kernel/readIdentitydense_2/kernel*
_output_shapes

: *
T0*!
_class
loc:@dense_2/kernel
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
	container *
_output_shapes
:*
shape:*
shared_name *
dtype0
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
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
_output_shapes
:*
T0
�
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*
transpose_a( *'
_output_shapes
:���������*
transpose_b( *
T0
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*'
_output_shapes
:���������*
T0
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
dtype0*
	container *
_output_shapes
: *
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
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
dtype0
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
Adam/beta_2/initial_valueConst*
valueB
 *w�?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
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
Adam/decay/initial_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
Adam/decay*
_class
loc:@Adam/decay*
_output_shapes
: *
T0
�
dense_2_targetPlaceholder*0
_output_shapes
:������������������*%
shape:������������������*
dtype0
q
dense_2_sample_weightsPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
\
loss/dense_2_loss/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
loss/dense_2_loss/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/sub_1Subloss/dense_2_loss/sub_1/xloss/dense_2_loss/clip_by_value*'
_output_shapes
:���������*
T0
�
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/clip_by_valueloss/dense_2_loss/sub_1*
T0*'
_output_shapes
:���������
i
loss/dense_2_loss/LogLogloss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0
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
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:���������
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:���������
m
*loss/dense_2_loss/Mean_1/reduction_indicesConst*
_output_shapes
: *
valueB *
dtype0
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
loss/dense_2_loss/NotEqual/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
loss/dense_2_loss/Mean_3Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_3*
_output_shapes
: *
T0
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
metrics/acc/CastCastmetrics/acc/Equal*

DstT0*'
_output_shapes
:���������*

SrcT0
*
Truncate( 
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*#
_output_shapes
:���������*

Tidx0*
	keep_dims( *
T0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
_output_shapes
: *
_class
loc:@loss/mul*
valueB *
dtype0
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
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: 
�
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_3*
_output_shapes
: *
T0*
_class
loc:@loss/mul
�
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_class
loc:@loss/mul*
_output_shapes
: *
T0
�
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shapeConst*+
_class!
loc:@loss/dense_2_loss/Mean_3*
valueB:*
dtype0*
_output_shapes
:
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Reshape/shape*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
Tshape0*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ShapeShapeloss/dense_2_loss/truediv_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
out_type0*
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
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*+
_class!
loc:@loss/dense_2_loss/Mean_3*
out_type0*
_output_shapes
:*
T0
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
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3
�
=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_3*
valueB: *
dtype0*
_output_shapes
:
�
<training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Const_1*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
>training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/Maximum*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/floordiv*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_3*
Truncate( *

DstT0*
_output_shapes
: 
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
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
valueB *
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
:*
	keep_dims( *

Tidx0*
T0
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
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_2_loss/Mean_3_grad/truedivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:���������
�
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
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
Htraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*2
_output_shapes 
:���������:���������
�
6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulMul@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*#
_output_shapes
:���������*
T0*(
_class
loc:@loss/dense_2_loss/mul
�
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*#
_output_shapes
:���������
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Mulloss/dense_2_loss/Mean_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*
T0*(
_class
loc:@loss/dense_2_loss/mul*#
_output_shapes
:���������
�
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_2_loss/mul
�
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*#
_output_shapes
:���������
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ShapeShapeloss/dense_2_loss/Mean*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
out_type0*
_output_shapes
:
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
9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/modFloorMod9training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/add:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Size*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
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
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/deltaConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/rangeRangeAtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/start:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/SizeAtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/range/delta*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
:*

Tidx0
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
N*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B :*
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
>training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeCtraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/DynamicStitch*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
Tshape0*#
_output_shapes
:���������
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
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3Shapeloss/dense_2_loss/Mean_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
out_type0*
_output_shapes
:
�
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1*
valueB: *
dtype0
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_2;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: *
	keep_dims( *

Tidx0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_1*
valueB: 
�
<training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Shape_3=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
�
?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1Maximum<training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod_1Atraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1/y*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
�
@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1FloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Prod?training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Maximum_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
�
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/CastCast@training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
Truncate( *

DstT0*
_output_shapes
: 
�
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*#
_output_shapes
:���������
�
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
�
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0
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
: *)
_class
loc:@loss/dense_2_loss/Mean*
valueB *
dtype0
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B : *
dtype0
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
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
Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_2_loss/Mean*
N*
_output_shapes
:*
T0
�
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
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
<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*
T0
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
Tshape0*0
_output_shapes
:������������������
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
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
�
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
�
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*)
_class
loc:@loss/dense_2_loss/Mean
�
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
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
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
T0
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
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*)
_class
loc:@loss/dense_2_loss/Mean*'
_output_shapes
:���������*
T0
�
Btraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
out_type0
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
out_type0
�
Rtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
�
@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
Tshape0*'
_output_shapes
:���������
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
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*'
_output_shapes
:���������*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
Tshape0
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
out_type0*
_output_shapes
:*
T0
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
out_type0
�
Vtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
Tshape0*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
Tshape0*'
_output_shapes
:���������
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
valueB
 *  �?*
dtype0*
_output_shapes
: 
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
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal*
T0*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:���������
�
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_2_loss/Log*'
_output_shapes
:���������*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*'
_output_shapes
:���������*
T0
�
Ltraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*'
_output_shapes
:���������
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
:*
	keep_dims( *

Tidx0
�
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
Tshape0*'
_output_shapes
:���������
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_2_loss/LogJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1*'
_output_shapes
:���������*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul
�
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*0
_output_shapes
:������������������*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
Tshape0
�
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mul#loss/dense_2_loss/logistic_loss/Exp*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:���������
�
Ptraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_2_loss/logistic_loss/Neg*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:���������*
T0
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
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulloss/dense_2_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0
�
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:���������
�
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegloss/dense_2_loss/clip_by_value*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������*
T0
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:���������
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
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:
�
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:���������
�
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/ShapeConst**
_class 
loc:@loss/dense_2_loss/sub_1*
valueB *
dtype0*
_output_shapes
: 
�
<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1Shapeloss/dense_2_loss/clip_by_value*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
out_type0*
_output_shapes
:
�
Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*2
_output_shapes 
:���������:���������
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
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:*
	keep_dims( *

Tidx0
�
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:
�
>training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*'
_output_shapes
:���������*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
Tshape0
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
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:*
T0
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
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*

index_type0*'
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
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:���������
�
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*'
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
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*
_output_shapes
: 
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
Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
valueB
 *    
�
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:���������*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*

index_type0
�
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_2/Softmaxloss/dense_2_loss/sub*'
_output_shapes
:���������*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
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
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
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
0training/Adam/gradients/dense_2/Softmax_grad/mulMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapedense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:���������
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
0training/Adam/gradients/dense_2/Softmax_grad/SumSum0training/Adam/gradients/dense_2/Softmax_grad/mulBtraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:���������*
	keep_dims(*

Tidx0
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
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*
transpose_a( *'
_output_shapes
:��������� *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul
�
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*!
_class
loc:@dense_2/MatMul*
transpose_a(*
_output_shapes

: *
transpose_b( 
�
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul*:
_output_shapes(
&:��������� :��������� 
�
training/Adam/gradients/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:��������� :��������� 
�
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:��������� 
�
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
T0*
_class
loc:@dense_1/Relu*
out_type0*
_output_shapes
:
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

index_type0*'
_output_shapes
:��������� 
�
>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:��������� : 
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
out_type0*
_output_shapes
:
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
_output_shapes
:*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
out_type0
�
Otraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*2
_output_shapes 
:���������:���������
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*'
_output_shapes
:��������� *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:��������� *
T0
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*'
_output_shapes
:��������� *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
�
Ctraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:��������� *
T0
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/mul*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
out_type0*
_output_shapes
:
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
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:��������� 
�
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
�
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*'
_output_shapes
:��������� *
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:��������� 
�
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
�
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0*
_output_shapes
: 
�
5training/Adam/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_1/cond/mul*
out_type0*
_output_shapes
:
�
7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *%
_class
loc:@dropout_1/cond/mul*
valueB 
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
loc:@dropout_1/cond/mul*'
_output_shapes
:��������� 
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
7training/Adam/gradients/dropout_1/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_1/cond/mul_grad/Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Shape*%
_class
loc:@dropout_1/cond/mul*
Tshape0*'
_output_shapes
:��������� *
T0
�
5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:��������� 
�
5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
9training/Adam/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_17training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*%
_class
loc:@dropout_1/cond/mul*
Tshape0*
_output_shapes
: *
T0
�
 training/Adam/gradients/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:��������� :��������� 
�
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*'
_output_shapes
:��������� *
T0*
_class
loc:@dense_1/Relu
�
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
_class
loc:@dense_1/Relu*
out_type0*
_output_shapes
:*
T0
�
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
dtype0*
_output_shapes
: *
_class
loc:@dense_1/Relu*
valueB
 *    
�
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*
T0*
_class
loc:@dense_1/Relu*

index_type0*'
_output_shapes
:��������� 
�
@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_17training/Adam/gradients/dropout_1/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:��������� : 
�
training/Adam/gradients/AddN_2AddN>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*'
_output_shapes
:��������� 
�
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_2dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:��������� 
�
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
�
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
T0*!
_class
loc:@dense_1/MatMul*
transpose_a( *'
_output_shapes
:���������*
transpose_b(
�
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes

: *
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul
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
h
training/Adam/zerosConst*
valueB *    *
dtype0*
_output_shapes

: 
�
training/Adam/Variable
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes

: *
shape
: 
�
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
_output_shapes

: *
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(
�
training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*
_output_shapes

: 
b
training/Adam/zeros_1Const*
valueB *    *
dtype0*
_output_shapes
: 
�
training/Adam/Variable_1
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(
�
training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: 
j
training/Adam/zeros_2Const*
valueB *    *
dtype0*
_output_shapes

: 
�
training/Adam/Variable_2
VariableV2*
	container *
_output_shapes

: *
shape
: *
shared_name *
dtype0
�
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
�
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
_output_shapes

: *
T0*+
_class!
loc:@training/Adam/Variable_2
b
training/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/Variable_3
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
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
j
training/Adam/zeros_4Const*
_output_shapes

: *
valueB *    *
dtype0
�
training/Adam/Variable_4
VariableV2*
	container *
_output_shapes

: *
shape
: *
shared_name *
dtype0
�
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
_output_shapes

: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(
�
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes

: 
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 
�
training/Adam/Variable_5
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: *
use_locking(
�
training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 
j
training/Adam/zeros_6Const*
valueB *    *
dtype0*
_output_shapes

: 
�
training/Adam/Variable_6
VariableV2*
shape
: *
shared_name *
dtype0*
	container *
_output_shapes

: 
�
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
_output_shapes

: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(
�
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes

: 
b
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/Variable_7
VariableV2*
	container *
_output_shapes
:*
shape:*
shared_name *
dtype0
�
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:
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
dtype0*
	container *
_output_shapes
:
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
training/Adam/zeros_9/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/Variable_9
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
�
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(
�
training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
_output_shapes
:*
T0*+
_class!
loc:@training/Adam/Variable_9
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
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
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
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
�
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:
�
training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_11
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes

: 
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
training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes

: 
t
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_4/read*
_output_shapes

: *
T0
Z
training/Adam/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 
}
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes

: 
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
_output_shapes

: *
T0
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes

: 
Z
training/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_3Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
_output_shapes

: *
T0
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0*
_output_shapes

: 
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes

: 
Z
training/Adam/add_3/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
_output_shapes

: *
T0
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes

: 
q
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
T0*
_output_shapes

: 
�
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

: 
�
training/Adam/Assign_1Assigntraining/Adam/Variable_4training/Adam/add_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

: 
�
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

: 
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
_output_shapes
: *
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
T0*
_output_shapes
: 
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
: 
p
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
: 
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
: 
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes
: *
T0
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
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes
: 
�
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
_output_shapes
: *
T0
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
: 
Z
training/Adam/add_6/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
: 
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes
: *
T0
k
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes
: 
�
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
�
training/Adam/Assign_4Assigntraining/Adam/Variable_5training/Adam/add_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
�
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense_1/bias
u
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*
_output_shapes

: 
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
_output_shapes

: 
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes

: 
u
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_6/read*
T0*
_output_shapes

: 
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

training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes

: 
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes

: 
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

: 
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
_output_shapes

: *
T0
�
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
_output_shapes

: *
T0
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes

: *
T0
Z
training/Adam/add_9/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes

: 
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes

: 
r
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes

: 
�
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2
�
training/Adam/Assign_7Assigntraining/Adam/Variable_6training/Adam/add_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

: 
�
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: 
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
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
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
training/Adam/sub_12/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
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
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
_output_shapes
:*
T0
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
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes
:*
T0
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
_output_shapes
:*
T0
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
training/Adam/Assign_10Assigntraining/Adam/Variable_7training/Adam/add_11*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
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
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel
�
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_2/bias
�
IsVariableInitialized_4IsVariableInitializedAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
z
IsVariableInitialized_5IsVariableInitializedAdam/lr*
_output_shapes
: *
_class
loc:@Adam/lr*
dtype0
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
IsVariableInitialized_9IsVariableInitializedtraining/Adam/Variable*
dtype0*
_output_shapes
: *)
_class
loc:@training/Adam/Variable
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
IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 
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
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08���       ���	�´�F�A*

val_loss��=߸Y�       �	�ô�F�A*

val_accf�z?��!       �K"	!Ĵ�F�A*

loss���=bA<       ���	�Ĵ�F�A*


acc��z?���Q       ��2	TrK�F�A*

val_loss�=��IW       `/�#	WsK�F�A*

val_accf�z?��       ��-	�sK�F�A*

loss<��=�W�       ��(	atK�F�A*


acc>{?��S       ��2	����F�A*

val_loss'��=�c�V       `/�#	����F�A*

val_accf�z?�<�G       ��-	9���F�A*

lossM8�=�t��       ��(	����F�A*


acc>{?\���       ��2	pW��F�A*

val_loss���=!Y�       `/�#	EX��F�A*

val_accf�z?�8$�       ��-	�X��F�A*

loss��=�t�       ��(		Y��F�A*


acc>{?��g       ��2	ݽ�F�A*

val_loss���=T��       `/�#	���F�A*

val_accf�z?���       ��-	��F�A*

loss8�=���       ��(	9��F�A*


acc>{?�ڦ       ��2	�y��F�A*

val_loss���=�hp�       `/�#	7z��F�A*

val_accf�z?&RV>       ��-	�z��F�A*

loss蒽=7KM       ��(	�z��F�A*


acc>{?�W �       ��2	��8�F�A*

val_loss���=Al�       `/�#	c�8�F�A*

val_accf�z?Aj�!       ��-	ă8�F�A*

lossˋ�=E6!a       ��(	�8�F�A*


acc>{?�XM       ��2	����F�A*

val_loss���=땀�       `/�#	����F�A*

val_accf�z?�$E�       ��-	0���F�A*

loss�h�=1
�       ��(	����F�A*


acc>{?��Z�       ��2	C��F�A*

val_loss���=���	       `/�#	��F�A*

val_accf�z?#��H       ��-	h��F�A*

loss�|�=XTN�       ��(	���F�A*


acc>{?�+�       ��2	|^�F�A	*

val_loss|$�=u�u       `/�#	8^�F�A	*

val_accf�z?�� 8       ��-	�^�F�A	*

loss|r�=�ˁ�       ��(	�^�F�A	*


acc>{?�X��       ��2	���F�A
*

val_loss�'�=�;��       `/�#	���F�A
*

val_accf�z?���       ��-	��F�A
*

loss<j�=WYΘ       ��(	j��F�A
*


acc>{?sN�       ��2	p���F�A*

val_loss���=/	�>       `/�#	G���F�A*

val_accf�z?�5�       ��-	����F�A*

loss�o�=O ��       ��(	K���F�A*


acc>{?L"��       ��2	�l��F�A*

val_lossE&�=�#       `/�#	�m��F�A*

val_accf�z?l4\       ��-	n��F�A*

lossk�=��       ��(	�n��F�A*


acc>{?�x       ��2	��;�F�A*

val_loss��=ڛg�       `/�#	��;�F�A*

val_accf�z? �       ��-	I�;�F�A*

loss_o�=�ώ       ��(	��;�F�A*


acc>{?����       ��2	����F�A*

val_loss��=� �       `/�#	����F�A*

val_accf�z?N{g�       ��-	���F�A*

lossSq�=���       ��(	Y���F�A*


acc>{?.��       ��2	G6��F�A*

val_loss��=���       `/�#	%7��F�A*

val_accf�z?��x       ��-	�7��F�A*

loss�m�=��G       ��(	�7��F�A*


acc>{?�>-       ��2	�H�F�A*

val_loss+ �=�N�       `/�#	FH�F�A*

val_accf�z?˨�       ��-	�H�F�A*

loss�j�=x�xI       ��(	�H�F�A*


acc>{?��b�       ��2	��F�A*

val_loss��=v�%       `/�#	�	�F�A*

val_accf�z?�P��       ��-	�	�F�A*

lossp�=�6�       ��(	T
�F�A*


acc>{?_m��       ��2	����F�A*

val_loss���=�E%<       `/�#	����F�A*

val_accf�z?S�       ��-	���F�A*

losstg�=
#bA       ��(	q���F�A*


acc>{?@�4�       ��2	)�g�F�A*

val_loss��=����       `/�#	��g�F�A*

val_accf�z?�$��       ��-	A�g�F�A*

lossYi�=|U�       ��(	��g�F�A*


acc>{?����       ��2	x �F�A*

val_loss)��=.       `/�#	Z �F�A*

val_accf�z?�~�       ��-	� �F�A*

loss|o�=}�4C       ��(	9 �F�A*


acc>{?�_/       ��2	 ���F�A*

val_loss)�=uaQ       `/�#	����F�A*

val_accf�z?g�@�       ��-	4���F�A*

lossTp�=Y� ~       ��(	����F�A*


acc>{?}�x�       ��2	I�q�F�A*

val_loss}�=�|h
       `/�#	�q�F�A*

val_accf�z?H4[�       ��-	Q�q�F�A*

loss�j�=FSi�       ��(	��q�F�A*


acc>{?�_��       ��2	��F�A*

val_losso#�={[��       `/�#	o�F�A*

val_accf�z?���       ��-	��F�A*

lossil�=n�       ��(	�F�A*


acc>{?gIn�       ��2	D��F�A*

val_loss��=,�H&       `/�#	�D��F�A*

val_accf�z?�g��       ��-	�E��F�A*

lossi�=�-��       ��(	�E��F�A*


acc>{?h�ǆ       ��2	��B�F�A*

val_loss��=�b�       `/�#	��B�F�A*

val_accf�z?05�       ��-	'�B�F�A*

loss6k�=�.�       ��(	��B�F�A*


acc>{?�A��       ��2	 ���F�A*

val_loss�A�=
�E�       `/�#	ˊ��F�A*

val_accf�z?Pb�S       ��-	9���F�A*

loss�m�=���       ��(	����F�A*


acc>{?L/�       ��2	/0��F�A*

val_loss�<�=��K       `/�#	�0��F�A*

val_accf�z?^�       ��-	f1��F�A*

loss�m�=�֧       ��(	�1��F�A*


acc>{?7��T       ��2	��M�F�A*

val_loss1��=o�,f       `/�#	��M�F�A*

val_accf�z?oT�       ��-	��M�F�A*

loss�m�=��~       ��(	=�M�F�A*


acc>{?��K1       ��2	E���F�A*

val_loss���=��g�       `/�#	���F�A*

val_accf�z?�sn       ��-	B���F�A*

loss�s�=n[�       ��(	����F�A*


acc>{?�[��       ��2	w�F�A*

val_loss���=��       `/�#	3�F�A*

val_accf�z?n���       ��-	��F�A*

loss�a�=͌�       ��(	��F�A*


acc>{?#+�!       ��2	l�LF�A*

val_loss�1�=;d#�       `/�#	I�LF�A*

val_accf�z?��7�       ��-	��LF�A*

lossj�=���       ��(	�LF�A*


acc>{?�2�%       ��2	�@�F�A *

val_loss���=����       `/�#	\A�F�A *

val_accf�z?���
       ��-	�A�F�A *

loss�k�=��@�       ��(	 B�F�A *


acc>{?�64�       ��2	��F�A!*

val_loss��=Ѐ��       `/�#	ֵ�F�A!*

val_accf�z?��1H       ��-	;��F�A!*

lossq�=N�e�       ��(	���F�A!*


acc>{?�`�]       ��2	�IF�A"*

val_lossy�=�ɰ�       `/�#	��IF�A"*

val_accf�z?����       ��-	��IF�A"*

loss8k�=�qʛ       ��(	D�IF�A"*


acc>{?��:       ��2	���	F�A#*

val_loss)�=o�;       `/�#	���	F�A#*

val_accf�z?d       ��-	/��	F�A#*

loss3n�=���$       ��(	���	F�A#*


acc>{?_qm�       ��2	�F�A$*

val_loss��=��l       `/�#	��F�A$*

val_accf�z?��a2       ��-	�F�A$*

loss9m�=U "       ��(	Z�F�A$*


acc>{?M/K       ��2	�veF�A%*

val_loss; �=�:y       `/�#	EweF�A%*

val_accf�z?����       ��-	�weF�A%*

loss�k�=�a��       ��(	�weF�A%*


acc>{?ݳ��       ��2	4lF�A&*

val_loss:�=w���       `/�#	�lF�A&*

val_accf�z?=�||       ��-	NmF�A&*

loss�n�=����       ��(	�mF�A&*


acc>{?�
gM       ��2	��F�A'*

val_loss���=(1�       `/�#	��F�A'*

val_accf�z?�>X`       ��-	��F�A'*

loss�k�=
�Z       ��(	V�F�A'*


acc>{?S���       ��2	��F�A(*

val_lossa�=>�9z       `/�#	��F�A(*

val_accf�z?��       ��-	@�F�A(*

lossj�=ޓ��       ��(	��F�A(*


acc>{?CQ۩       ��2	U�/F�A)*

val_loss�6�=elν       `/�#	"�/F�A)*

val_accf�z?��]       ��-	��/F�A)*

lossmn�=+v�s       ��(	�/F�A)*


acc>{?\��       ��2	��F�A**

val_loss���=�       `/�#	��F�A**

val_accf�z?9��       ��-	W	�F�A**

loss�k�=��mv       ��(	

�F�A**


acc>{?"wl       ��2	��F�A+*

val_loss:��=R�[�       `/�#	���F�A+*

val_accf�z?�O�>       ��-	I��F�A+*

loss�n�=$8��       ��(	���F�A+*


acc>{?��f       ��2	w :F�A,*

val_loss��=�ۇO       `/�#	A!:F�A,*

val_accf�z?QTއ       ��-	�!:F�A,*

loss�m�=!�2�       ��(	
":F�A,*


acc>{?%#�~       ��2	 R�F�A-*

val_loss���=���       `/�#	�R�F�A-*

val_accf�z?_2n~       ��-	BS�F�A-*

lossak�=�o�       ��(	�S�F�A-*


acc>{?�L)       ��2	ȒF�A.*

val_loss��=�#�       `/�#	�ȒF�A.*

val_accf�z?UWx       ��-	KɒF�A.*

loss$o�=��       ��(	�ɒF�A.*


acc>{?C��       ��2	C�7F�A/*

val_loss��=�JkI       `/�#	��7F�A/*

val_accf�z?��is       ��-	_�7F�A/*

lossln�=���H       ��(	��7F�A/*


acc>{?$���       ��2	���F�A0*

val_loss$��=J�q       `/�#	m��F�A0*

val_accf�z?��!�       ��-	���F�A0*

loss<o�=!��       ��(	/��F�A0*


acc>{?\+��       ��2	�D�!F�A1*

val_loss\1�=�/       `/�#	�E�!F�A1*

val_accf�z?��*       ��-	�E�!F�A1*

loss�m�=a��       ��(	EF�!F�A1*


acc>{?P_��