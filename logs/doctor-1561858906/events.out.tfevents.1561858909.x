       ЃK"	  @зFзAbrain.Event:2мp     {Э	bзFзA"ўр
p
dense_1_inputPlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ
m
dense_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
_
dense_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *JQкО
_
dense_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *JQк>*
dtype0
Ј
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes

: *
seed2лЦЮ
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
_output_shapes

: *
T0
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
_output_shapes

: *
T0

dense_1/kernel
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
М
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
dense_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_1/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Љ
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

dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( *
T0

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 

dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
: *
T0

c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
~
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*'
_output_shapes
:џџџџџџџџџ *
T0
Џ
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ 
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

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Р
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ *
seed2йАЭ*
seedБџх)
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Т
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ 
Д
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ 
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  ?*
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
 *  ?

dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
Љ
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:џџџџџџџџџ 

dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*
T0*'
_output_shapes
:џџџџџџџџџ 

dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ *

DstT0

dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*'
_output_shapes
:џџџџџџџџџ *
T0
­
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ 

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:џџџџџџџџџ : 
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *ЃНН*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *ЃН=*
dtype0*
_output_shapes
: 
Љ
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	 *
seed2нџђ*
seedБџх)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes
:	 *
T0

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	 

dense_2/kernel
VariableV2*
dtype0*
_output_shapes
:	 *
	container *
shape:	 *
shared_name 
Н
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	 
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	 
\
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
z
dense_2/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Њ
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
r
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:

dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ*
T0
^
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
О
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*"
_class
loc:@Adam/iterations
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
 *o:*
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

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
Adam/beta_1/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?
o
Adam/beta_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ў
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
_class
loc:@Adam/beta_1*
_output_shapes
: *
T0
^
Adam/beta_2/initial_valueConst*
valueB
 *wО?*
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
Ў
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
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Њ
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/decay
g
Adam/decay/readIdentity
Adam/decay*
_class
loc:@Adam/decay*
_output_shapes
: *
T0

dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
q
dense_2_sample_weightsPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
r
'loss/dense_2_loss/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ѕ
loss/dense_2_loss/SumSumdense_2/Softmax'loss/dense_2_loss/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ

loss/dense_2_loss/truedivRealDivdense_2/Softmaxloss/dense_2_loss/Sum*(
_output_shapes
:џџџџџџџџџ*
T0
\
loss/dense_2_loss/ConstConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
\
loss/dense_2_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
_output_shapes
: *
T0

'loss/dense_2_loss/clip_by_value/MinimumMinimumloss/dense_2_loss/truedivloss/dense_2_loss/sub*(
_output_shapes
:џџџџџџџџџ*
T0

loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*(
_output_shapes
:џџџџџџџџџ
p
loss/dense_2_loss/LogLogloss/dense_2_loss/clip_by_value*
T0*(
_output_shapes
:џџџџџџџџџ
v
loss/dense_2_loss/mulMuldense_2_targetloss/dense_2_loss/Log*
T0*(
_output_shapes
:џџџџџџџџџ
t
)loss/dense_2_loss/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Ћ
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/mul)loss/dense_2_loss/Sum_1/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
c
loss/dense_2_loss/NegNegloss/dense_2_loss/Sum_1*
T0*#
_output_shapes
:џџџџџџџџџ
k
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Њ
loss/dense_2_loss/MeanMeanloss/dense_2_loss/Neg(loss/dense_2_loss/Mean/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
|
loss/dense_2_loss/mul_1Mulloss/dense_2_loss/Meandense_2_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0

loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
c
loss/dense_2_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mul_1loss/dense_2_loss/Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_2*
_output_shapes
: *
T0
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

metrics/acc/ArgMaxArgMaxdense_2_targetmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0*
output_type0	
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:џџџџџџџџџ
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
Ж
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss/mul
І
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
К
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*+
_class!
loc:@loss/dense_2_loss/Mean_2*
dtype0

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
У
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ShapeShapeloss/dense_2_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
Ћ
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
Х
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
:
­
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2Const*
valueB *+
_class!
loc:@loss/dense_2_loss/Mean_2*
dtype0*
_output_shapes
: 
В
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ConstConst*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_2*
dtype0*
_output_shapes
:
Љ
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
Д
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1Const*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/dense_2_loss/Mean_2*
dtype0
­
<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
Ў
?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_2_loss/Mean_2*
dtype0*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/MaximumMaximum<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/y*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2

>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 
я
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordiv*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
Truncate( *
_output_shapes
: *

DstT0

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
Х
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul_1*
T0*
out_type0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
Г
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
valueB *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
dtype0*
_output_shapes
: 
ж
Ntraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivloss/dense_2_loss/Mean_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ*
T0
Х
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
Е
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
К
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ*
T0

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_1*#
_output_shapes
:џџџџџџџџџ*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
Є
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*#
_output_shapes
:џџџџџџџџџ*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
Х
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
М
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ShapeShapeloss/dense_2_loss/Mean*
_output_shapes
:*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/mul_1
О
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1Shapedense_2_sample_weights*
out_type0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:*
T0
Ц
Jtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0**
_class 
loc:@loss/dense_2_loss/mul_1
ѓ
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/MulMul@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:џџџџџџџџџ*
T0
Б
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/SumSum8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/MulJtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ѕ
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
ѕ
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Mul_1Mulloss/dense_2_loss/Mean@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
З
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Mul_1Ltraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ћ
>training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Reshape_1Reshape:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
Й
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/Neg*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ѕ
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_2_loss/Mean
№
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean

7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
А
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
_output_shapes
:*
valueB: *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0
Ќ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*
value	B : *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
Ќ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*
value	B :*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 
б
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*

Tidx0
Ћ
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*
value	B :*)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*)
_class
loc:@loss/dense_2_loss/Mean

Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_2_loss/Mean*
N*
_output_shapes
:*
T0
Њ
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_2_loss/Mean

;training/Adam/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_2_loss/Mean

<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_2_loss/Mean
Ў
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
Tshape0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:џџџџџџџџџ*
T0
І
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv*

Tmultiples0*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:џџџџџџџџџ
Л
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/Neg*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
М
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*
out_type0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ў
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0*
_output_shapes
:
Ё
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss/dense_2_loss/Mean
А
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *)
_class
loc:@loss/dense_2_loss/Mean*
dtype0
Ѕ
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ќ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_2_loss/Mean

=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
T0

>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
ы
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*)
_class
loc:@loss/dense_2_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:џџџџџџџџџ
в
6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegNeg;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truediv*
T0*(
_class
loc:@loss/dense_2_loss/Neg*#
_output_shapes
:џџџџџџџџџ
Л
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ShapeShapeloss/dense_2_loss/mul*
T0*
out_type0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
Ї
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/SizeConst*
value	B :**
_class 
loc:@loss/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
ђ
8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/addAdd)loss/dense_2_loss/Sum_1/reduction_indices9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/modFloorMod8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/add9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ћ
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1Const*
valueB **
_class 
loc:@loss/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
Ў
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/startConst*
value	B : **
_class 
loc:@loss/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 
Ў
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :**
_class 
loc:@loss/dense_2_loss/Sum_1
ж
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/rangeRange@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/start9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/delta**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:*

Tidx0
­
?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :**
_class 
loc:@loss/dense_2_loss/Sum_1

9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/FillFill<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/value*
T0*

index_type0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

Btraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitchDynamicStitch:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/mod:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
N*
_output_shapes
:
Ќ
>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/yConst*
value	B :**
_class 
loc:@loss/dense_2_loss/Sum_1*
dtype0*
_output_shapes
: 

<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/MaximumMaximumBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/y*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:

=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
И
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch*
Tshape0**
_class 
loc:@loss/dense_2_loss/Sum_1*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
Џ
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/TileTile<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordiv*(
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1
А
8training/Adam/gradients/loss/dense_2_loss/mul_grad/ShapeShapedense_2_target*
_output_shapes
:*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/mul
Й
:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapeloss/dense_2_loss/Log*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:
О
Htraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ь
6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulMul9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tileloss/dense_2_loss/Log*
T0*(
_class
loc:@loss/dense_2_loss/mul*(
_output_shapes
:џџџџџџџџџ
Љ
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Њ
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ч
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Muldense_2_target9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tile*
T0*(
_class
loc:@loss/dense_2_loss/mul*(
_output_shapes
:џџџџџџџџџ
Џ
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ј
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/mul*(
_output_shapes
:џџџџџџџџџ

=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/clip_by_value=^training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1*
T0*(
_class
loc:@loss/dense_2_loss/Log*(
_output_shapes
:џџџџџџџџџ

6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMul<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*(
_output_shapes
:џџџџџџџџџ
н
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
T0*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
Л
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
valueB *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
_output_shapes
: 
ю
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shape6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
out_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
T0
С
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
dtype0*
_output_shapes
: 
г
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*(
_output_shapes
:џџџџџџџџџ

Itraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*(
_output_shapes
:џџџџџџџџџ*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
ц
Rtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
ћ
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqual6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*(
_output_shapes
:џџџџџџџџџ
д
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
Ъ
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*(
_output_shapes
:џџџџџџџџџ
§
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*(
_output_shapes
:џџџџџџџџџ
к
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
О
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
: 
п
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapeloss/dense_2_loss/truediv*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
Ы
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 

Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*
out_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:
б
Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
ѓ
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*(
_output_shapes
:џџџџџџџџџ
ќ
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/dense_2_loss/truedivloss/dense_2_loss/sub*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*(
_output_shapes
:џџџџџџџџџ

Ztraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
І
Ktraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*(
_output_shapes
:џџџџџџџџџ*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
є
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
ъ
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*(
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
Ј
Mtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*(
_output_shapes
:џџџџџџџџџ
њ
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
о
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
: 
Й
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/ShapeShapedense_2/Softmax*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*
T0
С
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/Sum*
_output_shapes
:*
T0*
out_type0*,
_class"
 loc:@loss/dense_2_loss/truediv
Ю
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDivLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapeloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ
Н
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
В
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ
Г
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegdense_2/Softmax*(
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
џ
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ

@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ
В
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ
Н
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
З
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:џџџџџџџџџ
Б
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/ShapeShapedense_2/Softmax*
T0*
out_type0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
Ѓ
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/SizeConst*
value	B :*(
_class
loc:@loss/dense_2_loss/Sum*
dtype0*
_output_shapes
: 
ъ
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/addAdd'loss/dense_2_loss/Sum/reduction_indices7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
ў
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/modFloorMod6training/Adam/gradients/loss/dense_2_loss/Sum_grad/add7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ї
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *(
_class
loc:@loss/dense_2_loss/Sum
Њ
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/startConst*
value	B : *(
_class
loc:@loss/dense_2_loss/Sum*
dtype0*
_output_shapes
: 
Њ
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*(
_class
loc:@loss/dense_2_loss/Sum
Ь
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/rangeRange>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/start7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*(
_class
loc:@loss/dense_2_loss/Sum
Љ
=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/valueConst*
_output_shapes
: *
value	B :*(
_class
loc:@loss/dense_2_loss/Sum*
dtype0

7training/Adam/gradients/loss/dense_2_loss/Sum_grad/FillFill:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*(
_class
loc:@loss/dense_2_loss/Sum

@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitchDynamicStitch8training/Adam/gradients/loss/dense_2_loss/Sum_grad/range6training/Adam/gradients/loss/dense_2_loss/Sum_grad/mod8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
N
Ј
<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/yConst*
value	B :*(
_class
loc:@loss/dense_2_loss/Sum*
dtype0*
_output_shapes
: 

:training/Adam/gradients/loss/dense_2_loss/Sum_grad/MaximumMaximum@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/y*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:

;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordivFloorDiv8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
М
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch*
T0*
Tshape0*(
_class
loc:@loss/dense_2_loss/Sum*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ї
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordiv*

Tmultiples0*
T0*(
_class
loc:@loss/dense_2_loss/Sum*(
_output_shapes
:џџџџџџџџџ

training/Adam/gradients/AddNAddN>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Tile*,
_class"
 loc:@loss/dense_2_loss/truediv*
N*(
_output_shapes
:џџџџџџџџџ*
T0
Н
0training/Adam/gradients/dense_2/Softmax_grad/mulMultraining/Adam/gradients/AddNdense_2/Softmax*(
_output_shapes
:џџџџџџџџџ*
T0*"
_class
loc:@dense_2/Softmax
Б
Btraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*"
_class
loc:@dense_2/Softmax*
dtype0*
_output_shapes
: 
 
0training/Adam/gradients/dense_2/Softmax_grad/SumSum0training/Adam/gradients/dense_2/Softmax_grad/mulBtraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:џџџџџџџџџ
о
0training/Adam/gradients/dense_2/Softmax_grad/subSubtraining/Adam/gradients/AddN0training/Adam/gradients/dense_2/Softmax_grad/Sum*(
_output_shapes
:џџџџџџџџџ*
T0*"
_class
loc:@dense_2/Softmax
г
2training/Adam/gradients/dense_2/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_2/Softmax_grad/subdense_2/Softmax*(
_output_shapes
:џџџџџџџџџ*
T0*"
_class
loc:@dense_2/Softmax
м
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
_output_shapes	
:*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC

2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*
T0*!
_class
loc:@dense_2/MatMul*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b(
ћ
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
_output_shapes
:	 *
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul
љ
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *
T0*!
_class
loc:@dense_2/MatMul
Д
training/Adam/gradients/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ 
Ё
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:џџџџџџџџџ 
 
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@dense_1/Relu
Ќ
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
valueB
 *    *
_class
loc:@dense_1/Relu*
dtype0*
_output_shapes
: 
а
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/Relu*'
_output_shapes
:џџџџџџџџџ 

>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:џџџџџџџџџ : 
Ъ
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
Э
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
T0*
out_type0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
к
Otraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:џџџџџџџџџ *
T0
Х
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Н
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:џџџџџџџџџ 

?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:џџџџџџџџџ 
Ы
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
У
Ctraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:џџџџџџџџџ 
О
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/mul*
T0*
out_type0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:
Б
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_1/cond/dropout/mul*
dtype0*
_output_shapes
: 
в
Mtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:џџџџџџџџџ 
Н
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
Е
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:џџџџџџџџџ 
ќ
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ *
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
У
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Њ
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
: 
З
5training/Adam/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
_output_shapes
:*
T0*
out_type0*%
_class
loc:@dropout_1/cond/mul
Ё
7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_1/cond/mul*
dtype0*
_output_shapes
: 
В
Etraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_1/cond/mul_grad/Shape7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_1/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ъ
3training/Adam/gradients/dropout_1/cond/mul_grad/MulMul?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshapedropout_1/cond/mul/y*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:џџџџџџџџџ 

3training/Adam/gradients/dropout_1/cond/mul_grad/SumSum3training/Adam/gradients/dropout_1/cond/mul_grad/MulEtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 

7training/Adam/gradients/dropout_1/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_1/cond/mul_grad/Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Shape*
T0*
Tshape0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:џџџџџџџџџ 
ѓ
5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:џџџџџџџџџ 
Ѓ
5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 

9training/Adam/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_17training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
T0*
Tshape0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
: 
Ж
 training/Adam/gradients/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *
T0*
_class
loc:@dense_1/Relu
Ѓ
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:џџџџџџџџџ 
 
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
T0*
out_type0*
_class
loc:@dense_1/Relu*
_output_shapes
:
А
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense_1/Relu*
dtype0
д
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*
T0*

index_type0*
_class
loc:@dense_1/Relu*'
_output_shapes
:џџџџџџџџџ 

@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_17training/Adam/gradients/dropout_1/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:џџџџџџџџџ : 

training/Adam/gradients/AddN_1AddN>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*'
_output_shapes
:џџџџџџџџџ 
П
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_1dense_1/Relu*'
_output_shapes
:џџџџџџџџџ *
T0*
_class
loc:@dense_1/Relu
л
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
_output_shapes
: *
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC

2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul
ѓ
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
Ќ
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0	*"
_class
loc:@Adam/iterations
p
training/Adam/CastCastAdam/iterations/read*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
X
training/Adam/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
training/Adam/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
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
training/Adam/Const_1Const*
_output_shapes
: *
valueB
 *  *
dtype0
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 

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
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
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

training/Adam/Variable
VariableV2*
shape
: *
shared_name *
dtype0*
_output_shapes

: *
	container 
б
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

: *
use_locking(*
T0

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

training/Adam/Variable_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
е
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: *
use_locking(

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: 
v
%training/Adam/zeros_2/shape_as_tensorConst*
valueB"      *
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

training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
_output_shapes
:	 *
T0*

index_type0

training/Adam/Variable_2
VariableV2*
dtype0*
_output_shapes
:	 *
	container *
shape:	 *
shared_name 
к
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	 

training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
_output_shapes
:	 *
T0*+
_class!
loc:@training/Adam/Variable_2
d
training/Adam/zeros_3Const*
dtype0*
_output_shapes	
:*
valueB*    

training/Adam/Variable_3
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ж
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes	
:
j
training/Adam/zeros_4Const*
dtype0*
_output_shapes

: *
valueB *    

training/Adam/Variable_4
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
й
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

: 

training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes

: *
T0
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_5
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
е
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"      *
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

training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*
_output_shapes
:	 

training/Adam/Variable_6
VariableV2*
shape:	 *
shared_name *
dtype0*
_output_shapes
:	 *
	container 
к
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
:	 

training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
:	 
d
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_7
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ж
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes	
:
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

training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_8
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
е
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

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

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_9
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
е
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
_output_shapes
:*
T0*+
_class!
loc:@training/Adam/Variable_9
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

training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_10
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
й
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(

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

training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_11
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
й
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
:
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes

: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 

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
 *  ?*
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
 *  

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0*
_output_shapes

: 

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
 *Пж3*
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
Ш
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

: 
Ю
training/Adam/Assign_1Assigntraining/Adam/Variable_4training/Adam/add_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

: 
К
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
training/Adam/sub_5/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes
: *
T0
p
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes
: 

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes
: *
T0
Z
training/Adam/add_6/yConst*
valueB
 *Пж3*
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
Ъ
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
Ъ
training/Adam/Assign_4Assigntraining/Adam/Variable_5training/Adam/add_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
В
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense_1/bias
v
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
_output_shapes
:	 *
T0
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes
:	 *
T0
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes
:	 
v
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_6/read*
T0*
_output_shapes
:	 
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	 
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:	 
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes
:	 *
T0
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:	 
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*
_output_shapes
:	 

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes
:	 
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	 
Z
training/Adam/add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:	 
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:	 
s
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes
:	 
Я
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	 
Я
training/Adam/Assign_7Assigntraining/Adam/Variable_6training/Adam/add_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
:	 
М
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
r
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
_output_shapes	
:*
T0
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes	
:
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_7/read*
T0*
_output_shapes	
:
[
training/Adam/sub_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
_output_shapes	
:*
T0
m
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes	
:*
T0
j
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes	
:*
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes	
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes	
:
[
training/Adam/add_12/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes	
:*
T0
t
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes	
:
m
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
_output_shapes	
:*
T0
Ь
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes	
:
Э
training/Adam/Assign_10Assigntraining/Adam/Variable_7training/Adam/add_11*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes	
:
Е
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
џ
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9
0

group_depsNoOp	^loss/mul^metrics/acc/Mean

IsVariableInitializedIsVariableInitializeddense_1/kernel*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
dtype0

IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_output_shapes
: *
_class
loc:@dense_1/bias*
dtype0

IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 

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

IsVariableInitialized_6IsVariableInitializedAdam/beta_1*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_1

IsVariableInitialized_7IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_8IsVariableInitialized
Adam/decay*
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay

IsVariableInitialized_9IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedtraining/Adam/Variable_1*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_1

IsVariableInitialized_11IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_12IsVariableInitializedtraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_9*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_9*
dtype0

IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
ш
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign"&oMВ     ўњ	ЪcзFзAJЏ
В  
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
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
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

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
ref"dtype
is_initialized
"
dtypetype
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

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
2	
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

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

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
2	
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

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
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.14.02v1.14.0-rc1-22-gaf24dc9ўр
p
dense_1_inputPlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ
m
dense_1/random_uniform/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *JQкО*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *JQк>*
dtype0*
_output_shapes
: 
Ј
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed2лЦЮ*
_output_shapes

: *
seedБџх)*
T0*
dtype0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

: 
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
_output_shapes

: *
T0

dense_1/kernel
VariableV2*
shape
: *
shared_name *
dtype0*
	container *
_output_shapes

: 
М
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

: 
{
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
_output_shapes

: *
T0
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
dtype0*
	container *
_output_shapes
: 
Љ
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

dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ *
transpose_b( 

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ *
T0
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
shape: *
dtype0
*
_output_shapes
: 

dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
: *
T0

c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
~
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*'
_output_shapes
:џџџџџџџџџ *
T0
Џ
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ 
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

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Р
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*
seed2йАЭ*'
_output_shapes
:џџџџџџџџџ *
seedБџх)
Ї
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Т
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ 
Д
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ 
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  ?*
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
 *  ?*
dtype0*
_output_shapes
: 

dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
_output_shapes
: *
T0
Љ
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:џџџџџџџџџ 

dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*
T0*'
_output_shapes
:џџџџџџџџџ 

dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *

DstT0*'
_output_shapes
:џџџџџџџџџ 

dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*'
_output_shapes
:џџџџџџџџџ *
T0
­
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *
T0*
_class
loc:@dense_1/Relu

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:џџџџџџџџџ : 
m
dense_2/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
_
dense_2/random_uniform/minConst*
valueB
 *ЃНН*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЃН=
Љ
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seedБџх)*
T0*
dtype0*
seed2нџђ*
_output_shapes
:	 
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes
:	 *
T0

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	 

dense_2/kernel
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:	 *
shape:	 
Н
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*!
_class
loc:@dense_2/kernel
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	 
\
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
z
dense_2/bias
VariableV2*
dtype0*
	container *
_output_shapes	
:*
shape:*
shared_name 
Њ
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
r
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
_output_shapes	
:*
T0

dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*
T0*
transpose_a( *(
_output_shapes
:џџџџџџџџџ*
transpose_b( 

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:џџџџџџџџџ
^
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
_
Adam/iterations/initial_valueConst*
_output_shapes
: *
value	B	 R *
dtype0	
s
Adam/iterations
VariableV2*
shape: *
shared_name *
dtype0	*
	container *
_output_shapes
: 
О
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
 *o:*
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

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
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
Ў
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(
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
 *wО?*
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
Ў
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
_class
loc:@Adam/beta_2*
_output_shapes
: *
T0
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
Њ
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

dense_2_targetPlaceholder*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ*
dtype0
q
dense_2_sample_weightsPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
r
'loss/dense_2_loss/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Ѕ
loss/dense_2_loss/SumSumdense_2/Softmax'loss/dense_2_loss/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims(*
T0

loss/dense_2_loss/truedivRealDivdense_2/Softmaxloss/dense_2_loss/Sum*
T0*(
_output_shapes
:џџџџџџџџџ
\
loss/dense_2_loss/ConstConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
_output_shapes
: *
T0

'loss/dense_2_loss/clip_by_value/MinimumMinimumloss/dense_2_loss/truedivloss/dense_2_loss/sub*
T0*(
_output_shapes
:џџџџџџџџџ

loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*(
_output_shapes
:џџџџџџџџџ*
T0
p
loss/dense_2_loss/LogLogloss/dense_2_loss/clip_by_value*(
_output_shapes
:џџџџџџџџџ*
T0
v
loss/dense_2_loss/mulMuldense_2_targetloss/dense_2_loss/Log*(
_output_shapes
:џџџџџџџџџ*
T0
t
)loss/dense_2_loss/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ
Ћ
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/mul)loss/dense_2_loss/Sum_1/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( 
c
loss/dense_2_loss/NegNegloss/dense_2_loss/Sum_1*
T0*#
_output_shapes
:џџџџџџџџџ
k
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Њ
loss/dense_2_loss/MeanMeanloss/dense_2_loss/Neg(loss/dense_2_loss/Mean/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( 
|
loss/dense_2_loss/mul_1Mulloss/dense_2_loss/Meandense_2_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss/dense_2_loss/NotEqual/yConst*
_output_shapes
: *
valueB
 *    *
dtype0

loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ

loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:џџџџџџџџџ
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mul_1loss/dense_2_loss/Mean_1*#
_output_shapes
:џџџџџџџџџ*
T0
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_2*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ

metrics/acc/ArgMaxArgMaxdense_2_targetmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*#
_output_shapes
:џџџџџџџџџ*
T0	
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:џџџџџџџџџ
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
}
training/Adam/gradients/ShapeConst*
_class
loc:@loss/mul*
valueB *
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
_class
loc:@loss/mul*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ж
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: 
І
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_2*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
К
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB:

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shape*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
Tshape0
У
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ShapeShapeloss/dense_2_loss/truediv_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
out_type0*
_output_shapes
:
Ћ
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
Х
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
out_type0*
_output_shapes
:
­
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2Const*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB *
dtype0*
_output_shapes
: 
В
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ConstConst*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB: *
dtype0*
_output_shapes
:
Љ
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Д
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB: *
dtype0*
_output_shapes
:
­
<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Ў
?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_2*
value	B :*
dtype0*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/MaximumMaximum<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2
я
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordiv*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
Truncate( *

DstT0*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
Х
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
out_type0*
_output_shapes
:
Г
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
_output_shapes
: *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
valueB *
dtype0
ж
Ntraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivloss/dense_2_loss/Mean_1*#
_output_shapes
:џџџџџџџџџ*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
Х
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:
Е
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*#
_output_shapes
:џџџџџџџџџ
К
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
Є
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ*
T0
Х
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*
	keep_dims( *

Tidx0
Ў
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
_output_shapes
: *
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0
М
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ShapeShapeloss/dense_2_loss/Mean*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
out_type0*
_output_shapes
:
О
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1Shapedense_2_sample_weights*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
out_type0*
_output_shapes
:
Ц
Jtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ѓ
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/MulMul@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
Б
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/SumSum8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/MulJtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@loss/dense_2_loss/mul_1
Ѕ
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape**
_class 
loc:@loss/dense_2_loss/mul_1*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
ѕ
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Mul_1Mulloss/dense_2_loss/Mean@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
З
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Mul_1Ltraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@loss/dense_2_loss/mul_1
Ћ
>training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Reshape_1Reshape:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
Tshape0
Й
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/Neg*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
Ѕ
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :
№
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
T0
А
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
_output_shapes
:*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0
Ќ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B : *
dtype0*
_output_shapes
: 
Ќ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
б
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ћ
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :

8training/Adam/gradients/loss/dense_2_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean*

index_type0

Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_2_loss/Mean*
N*
_output_shapes
:*
T0
Њ
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 

;training/Adam/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:

<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Ў
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
Tshape0*#
_output_shapes
:џџџџџџџџџ
І
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0*)
_class
loc:@loss/dense_2_loss/Mean
Л
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/Neg*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:*
T0
М
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
Ў
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
Ё
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
А
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
Ѕ
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*)
_class
loc:@loss/dense_2_loss/Mean
Ќ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean
ы
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

DstT0*
_output_shapes
: *

SrcT0*)
_class
loc:@loss/dense_2_loss/Mean*
Truncate( 

;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:џџџџџџџџџ
в
6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegNeg;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truediv*#
_output_shapes
:џџџџџџџџџ*
T0*(
_class
loc:@loss/dense_2_loss/Neg
Л
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ShapeShapeloss/dense_2_loss/mul*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
out_type0*
_output_shapes
:
Ї
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/SizeConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 
ђ
8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/addAdd)loss/dense_2_loss/Sum_1/reduction_indices9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/modFloorMod8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/add9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 
Ћ
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1Const*
_output_shapes
: **
_class 
loc:@loss/dense_2_loss/Sum_1*
valueB *
dtype0
Ў
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/startConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B : *
dtype0*
_output_shapes
: 
Ў
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/deltaConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 
ж
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/rangeRange@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/start9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/delta**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:*

Tidx0
­
?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/valueConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 

9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/FillFill<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/value*
_output_shapes
: *
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*

index_type0

Btraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitchDynamicStitch:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/mod:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
N*
_output_shapes
:
Ќ
>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/yConst*
_output_shapes
: **
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0

<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/MaximumMaximumBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/y*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:

=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
:
И
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Џ
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/TileTile<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordiv*(
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1
А
8training/Adam/gradients/loss/dense_2_loss/mul_grad/ShapeShapedense_2_target*
T0*(
_class
loc:@loss/dense_2_loss/mul*
out_type0*
_output_shapes
:
Й
:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapeloss/dense_2_loss/Log*
T0*(
_class
loc:@loss/dense_2_loss/mul*
out_type0*
_output_shapes
:
О
Htraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*(
_class
loc:@loss/dense_2_loss/mul
ь
6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulMul9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tileloss/dense_2_loss/Log*
T0*(
_class
loc:@loss/dense_2_loss/mul*(
_output_shapes
:џџџџџџџџџ
Љ
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_2_loss/mul
Њ
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ч
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Muldense_2_target9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tile*
T0*(
_class
loc:@loss/dense_2_loss/mul*(
_output_shapes
:џџџџџџџџџ
Џ
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_2_loss/mul
Ј
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*(
_output_shapes
:џџџџџџџџџ*
T0

=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/clip_by_value=^training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1*
T0*(
_class
loc:@loss/dense_2_loss/Log*(
_output_shapes
:џџџџџџџџџ

6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMul<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*(
_output_shapes
:џџџџџџџџџ
н
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:
Л
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
_output_shapes
: *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB *
dtype0
ю
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shape6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:*
T0
С
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
г
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*

index_type0*(
_output_shapes
:џџџџџџџџџ

Itraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*(
_output_shapes
:џџџџџџџџџ
ц
Rtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ћ
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqual6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*(
_output_shapes
:џџџџџџџџџ*
T0
д
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
Ъ
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*(
_output_shapes
:џџџџџџџџџ
§
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*(
_output_shapes
:џџџџџџџџџ
к
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
О
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0
п
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapeloss/dense_2_loss/truediv*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0
Ы
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 

Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0
б
Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
ѓ
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*

index_type0*(
_output_shapes
:џџџџџџџџџ
ќ
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/dense_2_loss/truedivloss/dense_2_loss/sub*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*(
_output_shapes
:џџџџџџџџџ

Ztraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
І
Ktraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*(
_output_shapes
:џџџџџџџџџ
є
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
ъ
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
Tshape0*(
_output_shapes
:џџџџџџџџџ
Ј
Mtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*(
_output_shapes
:џџџџџџџџџ
њ
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
о
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 
Й
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/ShapeShapedense_2/Softmax*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0*
_output_shapes
:
С
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/Sum*
_output_shapes
:*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0
Ю
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*,
_class"
 loc:@loss/dense_2_loss/truediv*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDivLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapeloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ
Н
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
В
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*(
_output_shapes
:џџџџџџџџџ
Г
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegdense_2/Softmax*(
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
џ
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ

@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/Sum*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ*
T0
В
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*,
_class"
 loc:@loss/dense_2_loss/truediv*(
_output_shapes
:џџџџџџџџџ*
T0
Н
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
З
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Б
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/ShapeShapedense_2/Softmax*(
_class
loc:@loss/dense_2_loss/Sum*
out_type0*
_output_shapes
:*
T0
Ѓ
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/SizeConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 
ъ
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/addAdd'loss/dense_2_loss/Sum/reduction_indices7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
_output_shapes
: *
T0*(
_class
loc:@loss/dense_2_loss/Sum
ў
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/modFloorMod6training/Adam/gradients/loss/dense_2_loss/Sum_grad/add7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
: 
Ї
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1Const*(
_class
loc:@loss/dense_2_loss/Sum*
valueB *
dtype0*
_output_shapes
: 
Њ
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/startConst*
_output_shapes
: *(
_class
loc:@loss/dense_2_loss/Sum*
value	B : *
dtype0
Њ
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/deltaConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 
Ь
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/rangeRange>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/start7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/delta*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:*

Tidx0
Љ
=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/valueConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 

7training/Adam/gradients/loss/dense_2_loss/Sum_grad/FillFill:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/value*
T0*(
_class
loc:@loss/dense_2_loss/Sum*

index_type0*
_output_shapes
: 

@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitchDynamicStitch8training/Adam/gradients/loss/dense_2_loss/Sum_grad/range6training/Adam/gradients/loss/dense_2_loss/Sum_grad/mod8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
N*
_output_shapes
:
Ј
<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/yConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 

:training/Adam/gradients/loss/dense_2_loss/Sum_grad/MaximumMaximum@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/y*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/Sum

;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordivFloorDiv8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:*
T0
М
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ї
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordiv*

Tmultiples0*
T0*(
_class
loc:@loss/dense_2_loss/Sum*(
_output_shapes
:џџџџџџџџџ

training/Adam/gradients/AddNAddN>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Tile*,
_class"
 loc:@loss/dense_2_loss/truediv*
N*(
_output_shapes
:џџџџџџџџџ*
T0
Н
0training/Adam/gradients/dense_2/Softmax_grad/mulMultraining/Adam/gradients/AddNdense_2/Softmax*(
_output_shapes
:џџџџџџџџџ*
T0*"
_class
loc:@dense_2/Softmax
Б
Btraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*"
_class
loc:@dense_2/Softmax*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
 
0training/Adam/gradients/dense_2/Softmax_grad/SumSum0training/Adam/gradients/dense_2/Softmax_grad/mulBtraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*

Tidx0
о
0training/Adam/gradients/dense_2/Softmax_grad/subSubtraining/Adam/gradients/AddN0training/Adam/gradients/dense_2/Softmax_grad/Sum*(
_output_shapes
:џџџџџџџџџ*
T0*"
_class
loc:@dense_2/Softmax
г
2training/Adam/gradients/dense_2/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*(
_output_shapes
:џџџџџџџџџ
м
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes	
:

2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul
ћ
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
transpose_b( *
T0*!
_class
loc:@dense_2/MatMul*
transpose_a(*
_output_shapes
:	 
љ
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ 
Д
training/Adam/gradients/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ 
Ё
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:џџџџџџџџџ 
 
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
T0*
_class
loc:@dense_1/Relu*
out_type0*
_output_shapes
:
Ќ
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
dtype0*
_output_shapes
: *
_class
loc:@dense_1/Relu*
valueB
 *    
а
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*
_class
loc:@dense_1/Relu*

index_type0*'
_output_shapes
:џџџџџџџџџ 

>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:џџџџџџџџџ : 
Ъ
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Э
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
out_type0*
_output_shapes
:
к
Otraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:џџџџџџџџџ 
Х
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
Н
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ 

?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:џџџџџџџџџ 
Ы
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
У
Ctraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ 
О
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/mul*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
out_type0*
_output_shapes
:
Б
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Const*-
_class#
!loc:@dropout_1/cond/dropout/mul*
valueB *
dtype0*
_output_shapes
: 
в
Mtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:џџџџџџџџџ 
Н
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Е
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0*'
_output_shapes
:џџџџџџџџџ 
ќ
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:џџџџџџџџџ 
У
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:
Њ
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0*
_output_shapes
: 
З
5training/Adam/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
_output_shapes
:*
T0*%
_class
loc:@dropout_1/cond/mul*
out_type0
Ё
7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1Const*
_output_shapes
: *%
_class
loc:@dropout_1/cond/mul*
valueB *
dtype0
В
Etraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_1/cond/mul_grad/Shape7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*%
_class
loc:@dropout_1/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ъ
3training/Adam/gradients/dropout_1/cond/mul_grad/MulMul?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshapedropout_1/cond/mul/y*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:џџџџџџџџџ 

3training/Adam/gradients/dropout_1/cond/mul_grad/SumSum3training/Adam/gradients/dropout_1/cond/mul_grad/MulEtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_1/cond/mul

7training/Adam/gradients/dropout_1/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_1/cond/mul_grad/Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Shape*'
_output_shapes
:џџџџџџџџџ *
T0*%
_class
loc:@dropout_1/cond/mul*
Tshape0
ѓ
5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ *
T0*%
_class
loc:@dropout_1/cond/mul
Ѓ
5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:

9training/Adam/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_17training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*%
_class
loc:@dropout_1/cond/mul*
Tshape0*
_output_shapes
: *
T0
Ж
 training/Adam/gradients/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:џџџџџџџџџ :џџџџџџџџџ *
T0
Ѓ
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:џџџџџџџџџ 
 
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
_output_shapes
:*
T0*
_class
loc:@dense_1/Relu*
out_type0
А
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
_class
loc:@dense_1/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
д
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*'
_output_shapes
:џџџџџџџџџ *
T0*
_class
loc:@dense_1/Relu*

index_type0

@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_17training/Adam/gradients/dropout_1/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:џџџџџџџџџ : 

training/Adam/gradients/AddN_1AddN>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*'
_output_shapes
:џџџџџџџџџ 
П
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_1dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:џџџџџџџџџ 
л
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 

2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul
ѓ
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
Ќ
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*"
_class
loc:@Adam/iterations*
_output_shapes
: *
use_locking( *
T0	
p
training/Adam/CastCastAdam/iterations/read*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
X
training/Adam/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
 *  ?*
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
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 

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
training/Adam/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
dtype0*
_output_shapes

: *
valueB *    

training/Adam/Variable
VariableV2*
shape
: *
shared_name *
dtype0*
	container *
_output_shapes

: 
б
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

: 

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

training/Adam/Variable_1
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
е
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: 
v
%training/Adam/zeros_2/shape_as_tensorConst*
valueB"      *
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

training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
T0*

index_type0*
_output_shapes
:	 

training/Adam/Variable_2
VariableV2*
dtype0*
	container *
_output_shapes
:	 *
shape:	 *
shared_name 
к
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2

training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
:	 
d
training/Adam/zeros_3Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_3
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes	
:
ж
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
_output_shapes	
:*
T0*+
_class!
loc:@training/Adam/Variable_3
j
training/Adam/zeros_4Const*
dtype0*
_output_shapes

: *
valueB *    

training/Adam/Variable_4
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes

: *
shape
: 
й
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

: *
use_locking(

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

training/Adam/Variable_5
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
е
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: *
T0
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"      *
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

training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*
_output_shapes
:	 

training/Adam/Variable_6
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:	 *
shape:	 
к
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6

training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
_output_shapes
:	 *
T0*+
_class!
loc:@training/Adam/Variable_6
d
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_7
VariableV2*
dtype0*
	container *
_output_shapes	
:*
shape:*
shared_name 
ж
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes	
:
o
%training/Adam/zeros_8/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_8
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
е
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:

training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
_output_shapes
:*
T0*+
_class!
loc:@training/Adam/Variable_8
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

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_9
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
е
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:

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
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_10
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
й
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10

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

training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_11
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
й
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_11
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
_output_shapes

: *
T0
Z
training/Adam/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
_output_shapes

: *
T0
t
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_4/read*
T0*
_output_shapes

: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 
}
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes

: 
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes

: 
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
_output_shapes

: *
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
_output_shapes

: *
T0

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
 *Пж3*
dtype0*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes

: 
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
_output_shapes

: *
T0
q
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
T0*
_output_shapes

: 
Ш
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

: 
Ю
training/Adam/Assign_1Assigntraining/Adam/Variable_4training/Adam/add_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

: 
К
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
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
 *  ?*
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes
: 

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
 *Пж3*
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
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
_output_shapes
: *
T0
Ъ
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
Ъ
training/Adam/Assign_4Assigntraining/Adam/Variable_5training/Adam/add_5*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
В
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: 
v
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
_output_shapes
:	 *
T0
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	 
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes
:	 *
T0
v
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_6/read*
_output_shapes
:	 *
T0
Z
training/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	 
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:	 
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes
:	 *
T0
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:	 
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*
_output_shapes
:	 

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes
:	 
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	 
Z
training/Adam/add_9/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes
:	 *
T0
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:	 
s
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes
:	 
Я
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
:	 
Я
training/Adam/Assign_7Assigntraining/Adam/Variable_6training/Adam/add_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
:	 
М
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
r
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes	
:
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
m
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes	
:
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_7/read*
T0*
_output_shapes	
:
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes	
:
m
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes	
:*
T0
j
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes	
:
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes	
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
_output_shapes	
:*
T0
a
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes	
:
[
training/Adam/add_12/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
o
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes	
:*
T0
t
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes	
:
m
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
T0*
_output_shapes	
:
Ь
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes	
:*
use_locking(
Э
training/Adam/Assign_10Assigntraining/Adam/Variable_7training/Adam/add_11*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes	
:
Е
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes	
:
џ
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9
0

group_depsNoOp	^loss/mul^metrics/acc/Mean

IsVariableInitializedIsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializeddense_2/bias*
dtype0*
_output_shapes
: *
_class
loc:@dense_2/bias

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

IsVariableInitialized_6IsVariableInitializedAdam/beta_1*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_1

IsVariableInitialized_7IsVariableInitializedAdam/beta_2*
_output_shapes
: *
_class
loc:@Adam/beta_2*
dtype0

IsVariableInitialized_8IsVariableInitialized
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedtraining/Adam/Variable*
_output_shapes
: *)
_class
loc:@training/Adam/Variable*
dtype0

IsVariableInitialized_10IsVariableInitializedtraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedtraining/Adam/Variable_2*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_2*
dtype0

IsVariableInitialized_12IsVariableInitializedtraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_6*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_6

IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
ш
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign"&"э
trainable_variablesев
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
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08"№	
cond_contextп	м	
Є
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *а
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
В
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*о
dense_1/Relu:0
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0+
dense_1/Relu:0dropout_1/cond/Switch_1:0"у
	variablesев
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
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08оeg       ШС	?ЦќйFзA*

val_lossЯ@ЪшдT       	ЧќйFзA*

val_acc\Љ>ї
oЂ       ЃK"	ЧќйFзA*

lossiV@ЧЂR?       чЮј	мЧќйFзA*


accх>ЕfЄ       йм2	CgУмFзA*

val_lossk@єіn       `/п#	hУмFзA*

val_acc\Љ>гяє       и-	chУмFзA*

lossШ@,       ё(	ЏhУмFзA*


accT>w i       йм2	aЭPпFзA*

val_lossЫp@lCdV       `/п#	-ЮPпFзA*

val_acc\Љ>]Qм       и-	ЮPпFзA*

lossD`@+~Р       ё(	яЮPпFзA*


accT>нzO       йм2	tксFзA*

val_lossйt@ш$;,       `/п#	аtксFзA*

val_acc\Љ>Жйё       и-	/uксFзA*

loss@zЗўD       ё(	uксFзA*


accT>/ИЖ       йм2	]	pфFзA*

val_lossys@k\HЕ       `/п#	6
pфFзA*

val_acc\Љ>Dц5       и-	І
pфFзA*

lossъу@5n       ё(	pфFзA*


accT>IзF       йм2	mћMчFзA*

val_lossCo@d5ф       `/п#	iќMчFзA*

val_acc\Љ>SЋЩФ       и-	ыќMчFзA*

loss+Ш@с,Ј       ё(	S§MчFзA*


accT>rA[       йм2	e?WъFзA*

val_lossСi@йьрЕ       `/п#	;@WъFзA*

val_acc\Љ>cн2f       и-	@WъFзA*

lossЌ@Џ       ё(	љ@WъFзA*


accT>ГRЁр       йм2	ЎэFзA*

val_lossнj@;? Л       `/п#	zЏэFзA*

val_acc\Љ>28б       и-	тЏэFзA*

lossя@2
bЙ       ё(	=АэFзA*


accT>Е/4       йм2	/яFзA*

val_lossBw@МSМU       `/п#	яFзA*

val_acc\Љ>ЮF*       и-	hяFзA*

loss@Ц/Аj       ё(	ШяFзA*


accT>rЉ6       йм2	§1ђFзA	*

val_losse@EЋ       `/п#	bў1ђFзA	*

val_acc\Љ>o8p       и-	вў1ђFзA	*

lossЊ@эљ       ё(	7џ1ђFзA	*


accT>vІЯ