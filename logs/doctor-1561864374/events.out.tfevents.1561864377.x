       £K"	  @.
F„Abrain.Event:2ƒ3ХC‘     <Кh™	»Эl.
F„A"ґ®
p
dense_1_inputPlaceholder*
shape:€€€€€€€€€*
dtype0*'
_output_shapes
:€€€€€€€€€
m
dense_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *МнЊ*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *Мн>*
dtype0*
_output_shapes
: 
®
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
_output_shapes

:*
seed2БиЕ*
seed±€е)*
T0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
М
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

:
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes

:
В
dense_1/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes

:*
	container *
shape
:
Љ
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
{
dense_1/kernel/readIdentitydense_1/kernel*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel
Z
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
©
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
Ф
dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( *
T0
Ж
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Р
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
В
dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

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
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
_output_shapes
:*
T0*
out_type0
И
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed±€е)*
T0*
dtype0*'
_output_shapes
:€€€€€€€€€*
seed2кџґ
І
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:€€€€€€€€€
і
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
©
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*'
_output_shapes
:€€€€€€€€€*
T0
З
dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€
Щ
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0

О
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€
≠
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*
T0
С
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*)
_output_shapes
:€€€€€€€€€: *
T0*
N
m
dense_2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
_
dense_2/random_uniform/minConst*
valueB
 *dF£Њ*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *dF£>*
dtype0*
_output_shapes
: 
®
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seed±€е)*
T0*
dtype0*
_output_shapes

: *
seed2лОі
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
М
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes

: *
T0
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

: 
В
dense_2/kernel
VariableV2*
shape
: *
shared_name *
dtype0*
_output_shapes

: *
	container 
Љ
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: 
{
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

: 
Z
dense_2/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_2/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
©
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
: 
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
_output_shapes
: *
T0
Ы
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( *
T0
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ *
T0
W
dense_2/ReluReludense_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€ 
В
dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
_output_shapes
: *
T0

c
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
~
dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*'
_output_shapes
:€€€€€€€€€ *
T0
ѓ
dropout_2/cond/mul/SwitchSwitchdense_2/Reludropout_2/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_2/Relu
z
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
И
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*'
_output_shapes
:€€€€€€€€€ *
seed2Иђµ*
seed±€е)*
T0*
dtype0
І
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:€€€€€€€€€ 
і
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*'
_output_shapes
:€€€€€€€€€ *
T0
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_2/cond/dropout/truediv/xConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_2/cond/dropout/truedivRealDiv dropout_2/cond/dropout/truediv/xdropout_2/cond/dropout/sub*
T0*
_output_shapes
: 
©
#dropout_2/cond/dropout/GreaterEqualGreaterEqual%dropout_2/cond/dropout/random_uniformdropout_2/cond/dropout/rate*
T0*'
_output_shapes
:€€€€€€€€€ 
З
dropout_2/cond/dropout/mulMuldropout_2/cond/muldropout_2/cond/dropout/truediv*'
_output_shapes
:€€€€€€€€€ *
T0
Щ
dropout_2/cond/dropout/CastCast#dropout_2/cond/dropout/GreaterEqual*'
_output_shapes
:€€€€€€€€€ *

DstT0*

SrcT0
*
Truncate( 
О
dropout_2/cond/dropout/mul_1Muldropout_2/cond/dropout/muldropout_2/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€ 
≠
dropout_2/cond/Switch_1Switchdense_2/Reludropout_2/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_2/Relu
С
dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul_1*
N*)
_output_shapes
:€€€€€€€€€ : *
T0
m
dense_3/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"        
_
dense_3/random_uniform/minConst*
valueB
 *qƒЬЊ*
dtype0*
_output_shapes
: 
_
dense_3/random_uniform/maxConst*
valueB
 *qƒЬ>*
dtype0*
_output_shapes
: 
®
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
_output_shapes

:  *
seed2ВЃе*
seed±€е)*
T0*
dtype0
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
T0*
_output_shapes
: 
М
dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub*
T0*
_output_shapes

:  
~
dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
T0*
_output_shapes

:  
В
dense_3/kernel
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
Љ
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes

:  
{
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:  
Z
dense_3/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_3/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
©
dense_3/bias/AssignAssigndense_3/biasdense_3/Const*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
: 
q
dense_3/bias/readIdentitydense_3/bias*
_output_shapes
: *
T0*
_class
loc:@dense_3/bias
Ы
dense_3/MatMulMatMuldropout_2/cond/Mergedense_3/kernel/read*
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( 
Ж
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
W
dense_3/ReluReludense_3/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€ 
В
dropout_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
_output_shapes
: *
T0

c
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_3/cond/mul/yConst^dropout_3/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_3/cond/mul/SwitchSwitchdense_3/Reludropout_3/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_3/Relu
z
dropout_3/cond/dropout/rateConst^dropout_3/cond/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
n
dropout_3/cond/dropout/ShapeShapedropout_3/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*'
_output_shapes
:€€€€€€€€€ *
seed2вМм*
seed±€е)*
T0*
dtype0
І
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*'
_output_shapes
:€€€€€€€€€ *
T0
і
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€ 
{
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_3/cond/dropout/subSubdropout_3/cond/dropout/sub/xdropout_3/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_3/cond/dropout/truediv/xConst^dropout_3/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_3/cond/dropout/truedivRealDiv dropout_3/cond/dropout/truediv/xdropout_3/cond/dropout/sub*
_output_shapes
: *
T0
©
#dropout_3/cond/dropout/GreaterEqualGreaterEqual%dropout_3/cond/dropout/random_uniformdropout_3/cond/dropout/rate*'
_output_shapes
:€€€€€€€€€ *
T0
З
dropout_3/cond/dropout/mulMuldropout_3/cond/muldropout_3/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€ 
Щ
dropout_3/cond/dropout/CastCast#dropout_3/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€ *

DstT0
О
dropout_3/cond/dropout/mul_1Muldropout_3/cond/dropout/muldropout_3/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€ 
≠
dropout_3/cond/Switch_1Switchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
С
dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:€€€€€€€€€ : 
m
dense_4/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
_
dense_4/random_uniform/minConst*
valueB
 *qƒЬЊ*
dtype0*
_output_shapes
: 
_
dense_4/random_uniform/maxConst*
valueB
 *qƒЬ>*
dtype0*
_output_shapes
: 
®
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
dtype0*
_output_shapes

:  *
seed2ЙќХ*
seed±€е)*
T0
z
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
T0*
_output_shapes
: 
М
dense_4/random_uniform/mulMul$dense_4/random_uniform/RandomUniformdense_4/random_uniform/sub*
T0*
_output_shapes

:  
~
dense_4/random_uniformAdddense_4/random_uniform/muldense_4/random_uniform/min*
_output_shapes

:  *
T0
В
dense_4/kernel
VariableV2*
shape
:  *
shared_name *
dtype0*
_output_shapes

:  *
	container 
Љ
dense_4/kernel/AssignAssigndense_4/kerneldense_4/random_uniform*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
{
dense_4/kernel/readIdentitydense_4/kernel*
_output_shapes

:  *
T0*!
_class
loc:@dense_4/kernel
Z
dense_4/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_4/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
©
dense_4/bias/AssignAssigndense_4/biasdense_4/Const*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
: *
use_locking(
q
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias*
_output_shapes
: 
Ы
dense_4/MatMulMatMuldropout_3/cond/Mergedense_4/kernel/read*
T0*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( 
Ж
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
W
dense_4/ReluReludense_4/BiasAdd*'
_output_shapes
:€€€€€€€€€ *
T0
В
dropout_4/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_4/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_4/cond/mul/yConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
~
dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_4/cond/mul/SwitchSwitchdense_4/Reludropout_4/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_4/Relu
z
dropout_4/cond/dropout/rateConst^dropout_4/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_4/cond/dropout/ShapeShapedropout_4/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
ј
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
dtype0*'
_output_shapes
:€€€€€€€€€ *
seed2©ЖЉ*
seed±€е)*
T0
І
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*'
_output_shapes
:€€€€€€€€€ *
T0
і
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€ 
{
dropout_4/cond/dropout/sub/xConst^dropout_4/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_4/cond/dropout/subSubdropout_4/cond/dropout/sub/xdropout_4/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_4/cond/dropout/truediv/xConst^dropout_4/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
И
dropout_4/cond/dropout/truedivRealDiv dropout_4/cond/dropout/truediv/xdropout_4/cond/dropout/sub*
_output_shapes
: *
T0
©
#dropout_4/cond/dropout/GreaterEqualGreaterEqual%dropout_4/cond/dropout/random_uniformdropout_4/cond/dropout/rate*
T0*'
_output_shapes
:€€€€€€€€€ 
З
dropout_4/cond/dropout/mulMuldropout_4/cond/muldropout_4/cond/dropout/truediv*'
_output_shapes
:€€€€€€€€€ *
T0
Щ
dropout_4/cond/dropout/CastCast#dropout_4/cond/dropout/GreaterEqual*
Truncate( *'
_output_shapes
:€€€€€€€€€ *

DstT0*

SrcT0

О
dropout_4/cond/dropout/mul_1Muldropout_4/cond/dropout/muldropout_4/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€ 
≠
dropout_4/cond/Switch_1Switchdense_4/Reludropout_4/cond/pred_id*
T0*
_class
loc:@dense_4/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
С
dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:€€€€€€€€€ : 
m
dense_5/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
_
dense_5/random_uniform/minConst*
valueB
 *qƒЬЊ*
dtype0*
_output_shapes
: 
_
dense_5/random_uniform/maxConst*
valueB
 *qƒЬ>*
dtype0*
_output_shapes
: 
®
$dense_5/random_uniform/RandomUniformRandomUniformdense_5/random_uniform/shape*
_output_shapes

:  *
seed2оХи*
seed±€е)*
T0*
dtype0
z
dense_5/random_uniform/subSubdense_5/random_uniform/maxdense_5/random_uniform/min*
T0*
_output_shapes
: 
М
dense_5/random_uniform/mulMul$dense_5/random_uniform/RandomUniformdense_5/random_uniform/sub*
T0*
_output_shapes

:  
~
dense_5/random_uniformAdddense_5/random_uniform/muldense_5/random_uniform/min*
T0*
_output_shapes

:  
В
dense_5/kernel
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
Љ
dense_5/kernel/AssignAssigndense_5/kerneldense_5/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
_output_shapes

:  
{
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes

:  
Z
dense_5/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_5/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
©
dense_5/bias/AssignAssigndense_5/biasdense_5/Const*
_class
loc:@dense_5/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
q
dense_5/bias/readIdentitydense_5/bias*
_output_shapes
: *
T0*
_class
loc:@dense_5/bias
Ы
dense_5/MatMulMatMuldropout_4/cond/Mergedense_5/kernel/read*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( *
T0
Ж
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
W
dense_5/ReluReludense_5/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€ 
В
dropout_5/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_5/cond/switch_tIdentitydropout_5/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_5/cond/switch_fIdentitydropout_5/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_5/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_5/cond/mul/yConst^dropout_5/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_5/cond/mulMuldropout_5/cond/mul/Switch:1dropout_5/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_5/cond/mul/SwitchSwitchdense_5/Reludropout_5/cond/pred_id*
T0*
_class
loc:@dense_5/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
z
dropout_5/cond/dropout/rateConst^dropout_5/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_5/cond/dropout/ShapeShapedropout_5/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
ј
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*
seed±€е)*
T0*
dtype0*'
_output_shapes
:€€€€€€€€€ *
seed2фƒз
І
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:€€€€€€€€€ 
і
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€ 
{
dropout_5/cond/dropout/sub/xConst^dropout_5/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
}
dropout_5/cond/dropout/subSubdropout_5/cond/dropout/sub/xdropout_5/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_5/cond/dropout/truediv/xConst^dropout_5/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_5/cond/dropout/truedivRealDiv dropout_5/cond/dropout/truediv/xdropout_5/cond/dropout/sub*
T0*
_output_shapes
: 
©
#dropout_5/cond/dropout/GreaterEqualGreaterEqual%dropout_5/cond/dropout/random_uniformdropout_5/cond/dropout/rate*'
_output_shapes
:€€€€€€€€€ *
T0
З
dropout_5/cond/dropout/mulMuldropout_5/cond/muldropout_5/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€ 
Щ
dropout_5/cond/dropout/CastCast#dropout_5/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€ *

DstT0
О
dropout_5/cond/dropout/mul_1Muldropout_5/cond/dropout/muldropout_5/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€ 
≠
dropout_5/cond/Switch_1Switchdense_5/Reludropout_5/cond/pred_id*
T0*
_class
loc:@dense_5/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
С
dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:€€€€€€€€€ : 
m
dense_6/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
_
dense_6/random_uniform/minConst*
_output_shapes
: *
valueB
 *qƒЬЊ*
dtype0
_
dense_6/random_uniform/maxConst*
valueB
 *qƒЬ>*
dtype0*
_output_shapes
: 
®
$dense_6/random_uniform/RandomUniformRandomUniformdense_6/random_uniform/shape*
T0*
dtype0*
_output_shapes

:  *
seed2 „Р*
seed±€е)
z
dense_6/random_uniform/subSubdense_6/random_uniform/maxdense_6/random_uniform/min*
_output_shapes
: *
T0
М
dense_6/random_uniform/mulMul$dense_6/random_uniform/RandomUniformdense_6/random_uniform/sub*
_output_shapes

:  *
T0
~
dense_6/random_uniformAdddense_6/random_uniform/muldense_6/random_uniform/min*
T0*
_output_shapes

:  
В
dense_6/kernel
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
Љ
dense_6/kernel/AssignAssigndense_6/kerneldense_6/random_uniform*!
_class
loc:@dense_6/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
{
dense_6/kernel/readIdentitydense_6/kernel*!
_class
loc:@dense_6/kernel*
_output_shapes

:  *
T0
Z
dense_6/ConstConst*
dtype0*
_output_shapes
: *
valueB *    
x
dense_6/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
©
dense_6/bias/AssignAssigndense_6/biasdense_6/Const*
use_locking(*
T0*
_class
loc:@dense_6/bias*
validate_shape(*
_output_shapes
: 
q
dense_6/bias/readIdentitydense_6/bias*
T0*
_class
loc:@dense_6/bias*
_output_shapes
: 
Ы
dense_6/MatMulMatMuldropout_5/cond/Mergedense_6/kernel/read*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( *
T0
Ж
dense_6/BiasAddBiasAdddense_6/MatMuldense_6/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ *
T0
W
dense_6/ReluReludense_6/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€ 
В
dropout_6/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_6/cond/switch_tIdentitydropout_6/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_6/cond/switch_fIdentitydropout_6/cond/Switch*
_output_shapes
: *
T0

c
dropout_6/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_6/cond/mul/yConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
~
dropout_6/cond/mulMuldropout_6/cond/mul/Switch:1dropout_6/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_6/cond/mul/SwitchSwitchdense_6/Reludropout_6/cond/pred_id*
T0*
_class
loc:@dense_6/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
z
dropout_6/cond/dropout/rateConst^dropout_6/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_6/cond/dropout/ShapeShapedropout_6/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
И
)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*
seed±€е)*
T0*
dtype0*'
_output_shapes
:€€€€€€€€€ *
seed2Џ°и
І
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
¬
)dropout_6/cond/dropout/random_uniform/mulMul3dropout_6/cond/dropout/random_uniform/RandomUniform)dropout_6/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:€€€€€€€€€ 
і
%dropout_6/cond/dropout/random_uniformAdd)dropout_6/cond/dropout/random_uniform/mul)dropout_6/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€ 
{
dropout_6/cond/dropout/sub/xConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
}
dropout_6/cond/dropout/subSubdropout_6/cond/dropout/sub/xdropout_6/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_6/cond/dropout/truediv/xConst^dropout_6/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_6/cond/dropout/truedivRealDiv dropout_6/cond/dropout/truediv/xdropout_6/cond/dropout/sub*
T0*
_output_shapes
: 
©
#dropout_6/cond/dropout/GreaterEqualGreaterEqual%dropout_6/cond/dropout/random_uniformdropout_6/cond/dropout/rate*'
_output_shapes
:€€€€€€€€€ *
T0
З
dropout_6/cond/dropout/mulMuldropout_6/cond/muldropout_6/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€ 
Щ
dropout_6/cond/dropout/CastCast#dropout_6/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€ *

DstT0
О
dropout_6/cond/dropout/mul_1Muldropout_6/cond/dropout/muldropout_6/cond/dropout/Cast*'
_output_shapes
:€€€€€€€€€ *
T0
≠
dropout_6/cond/Switch_1Switchdense_6/Reludropout_6/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_6/Relu
С
dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul_1*)
_output_shapes
:€€€€€€€€€ : *
T0*
N
m
dense_7/random_uniform/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
_
dense_7/random_uniform/minConst*
valueB
 *A„Њ*
dtype0*
_output_shapes
: 
_
dense_7/random_uniform/maxConst*
valueB
 *A„>*
dtype0*
_output_shapes
: 
І
$dense_7/random_uniform/RandomUniformRandomUniformdense_7/random_uniform/shape*
T0*
dtype0*
_output_shapes

: *
seed2ќйN*
seed±€е)
z
dense_7/random_uniform/subSubdense_7/random_uniform/maxdense_7/random_uniform/min*
T0*
_output_shapes
: 
М
dense_7/random_uniform/mulMul$dense_7/random_uniform/RandomUniformdense_7/random_uniform/sub*
T0*
_output_shapes

: 
~
dense_7/random_uniformAdddense_7/random_uniform/muldense_7/random_uniform/min*
_output_shapes

: *
T0
В
dense_7/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes

: *
	container *
shape
: 
Љ
dense_7/kernel/AssignAssigndense_7/kerneldense_7/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_7/kernel*
validate_shape(*
_output_shapes

: 
{
dense_7/kernel/readIdentitydense_7/kernel*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes

: 
Z
dense_7/ConstConst*
_output_shapes
:*
valueB*    *
dtype0
x
dense_7/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
©
dense_7/bias/AssignAssigndense_7/biasdense_7/Const*
use_locking(*
T0*
_class
loc:@dense_7/bias*
validate_shape(*
_output_shapes
:
q
dense_7/bias/readIdentitydense_7/bias*
_output_shapes
:*
T0*
_class
loc:@dense_7/bias
Ы
dense_7/MatMulMatMuldropout_6/cond/Mergedense_7/kernel/read*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
Ж
dense_7/BiasAddBiasAdddense_7/MatMuldense_7/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
]
dense_7/SoftmaxSoftmaxdense_7/BiasAdd*'
_output_shapes
:€€€€€€€€€*
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
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
Њ
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
Adam/lr/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
k
Adam/lr
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ю
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
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
Ѓ
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
 *wЊ?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
Ѓ
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
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
™
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 
Г
dense_7_targetPlaceholder*%
shape:€€€€€€€€€€€€€€€€€€*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
q
dense_7_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
\
loss/dense_7_loss/ConstConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
\
loss/dense_7_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
loss/dense_7_loss/subSubloss/dense_7_loss/sub/xloss/dense_7_loss/Const*
_output_shapes
: *
T0
М
'loss/dense_7_loss/clip_by_value/MinimumMinimumdense_7/Softmaxloss/dense_7_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€
Ю
loss/dense_7_loss/clip_by_valueMaximum'loss/dense_7_loss/clip_by_value/Minimumloss/dense_7_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€
^
loss/dense_7_loss/sub_1/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
М
loss/dense_7_loss/sub_1Subloss/dense_7_loss/sub_1/xloss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
Р
loss/dense_7_loss/truedivRealDivloss/dense_7_loss/clip_by_valueloss/dense_7_loss/sub_1*'
_output_shapes
:€€€€€€€€€*
T0
i
loss/dense_7_loss/LogLogloss/dense_7_loss/truediv*
T0*'
_output_shapes
:€€€€€€€€€
А
*loss/dense_7_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_7_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0
±
,loss/dense_7_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_7_loss/Log*loss/dense_7_loss/logistic_loss/zeros_like*'
_output_shapes
:€€€€€€€€€*
T0
”
&loss/dense_7_loss/logistic_loss/SelectSelect,loss/dense_7_loss/logistic_loss/GreaterEqualloss/dense_7_loss/Log*loss/dense_7_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
s
#loss/dense_7_loss/logistic_loss/NegNegloss/dense_7_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
ќ
(loss/dense_7_loss/logistic_loss/Select_1Select,loss/dense_7_loss/logistic_loss/GreaterEqual#loss/dense_7_loss/logistic_loss/Negloss/dense_7_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0
Г
#loss/dense_7_loss/logistic_loss/mulMulloss/dense_7_loss/Logdense_7_target*
T0*'
_output_shapes
:€€€€€€€€€
©
#loss/dense_7_loss/logistic_loss/subSub&loss/dense_7_loss/logistic_loss/Select#loss/dense_7_loss/logistic_loss/mul*
T0*'
_output_shapes
:€€€€€€€€€
Ж
#loss/dense_7_loss/logistic_loss/ExpExp(loss/dense_7_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:€€€€€€€€€
Е
%loss/dense_7_loss/logistic_loss/Log1pLog1p#loss/dense_7_loss/logistic_loss/Exp*
T0*'
_output_shapes
:€€€€€€€€€
§
loss/dense_7_loss/logistic_lossAdd#loss/dense_7_loss/logistic_loss/sub%loss/dense_7_loss/logistic_loss/Log1p*'
_output_shapes
:€€€€€€€€€*
T0
s
(loss/dense_7_loss/Mean/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
і
loss/dense_7_loss/MeanMeanloss/dense_7_loss/logistic_loss(loss/dense_7_loss/Mean/reduction_indices*#
_output_shapes
:€€€€€€€€€*
	keep_dims( *

Tidx0*
T0
m
*loss/dense_7_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
ѓ
loss/dense_7_loss/Mean_1Meanloss/dense_7_loss/Mean*loss/dense_7_loss/Mean_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:€€€€€€€€€
|
loss/dense_7_loss/mulMulloss/dense_7_loss/Mean_1dense_7_sample_weights*#
_output_shapes
:€€€€€€€€€*
T0
a
loss/dense_7_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
К
loss/dense_7_loss/NotEqualNotEqualdense_7_sample_weightsloss/dense_7_loss/NotEqual/y*#
_output_shapes
:€€€€€€€€€*
T0
З
loss/dense_7_loss/CastCastloss/dense_7_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
c
loss/dense_7_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
С
loss/dense_7_loss/Mean_2Meanloss/dense_7_loss/Castloss/dense_7_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Е
loss/dense_7_loss/truediv_1RealDivloss/dense_7_loss/mulloss/dense_7_loss/Mean_2*
T0*#
_output_shapes
:€€€€€€€€€
c
loss/dense_7_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Ц
loss/dense_7_loss/Mean_3Meanloss/dense_7_loss/truediv_1loss/dense_7_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_7_loss/Mean_3*
T0*
_output_shapes
: 
]
metrics/acc/RoundRounddense_7/Softmax*'
_output_shapes
:€€€€€€€€€*
T0
o
metrics/acc/EqualEqualdense_7_targetmetrics/acc/Round*
T0*'
_output_shapes
:€€€€€€€€€
|
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Щ
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:€€€€€€€€€
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
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
Г
!training/Adam/gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  А?*
_class
loc:@loss/mul*
dtype0
ґ
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
¶
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_7_loss/Mean_3*
_output_shapes
: *
T0*
_class
loc:@loss/mul
Ъ
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ї
Ctraining/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Reshape/shapeConst*
valueB:*+
_class!
loc:@loss/dense_7_loss/Mean_3*
dtype0*
_output_shapes
:
Ъ
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
:
√
;training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/ShapeShapeloss/dense_7_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
:
Ђ
:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/TileTile=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Reshape;training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
≈
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape_1Shapeloss/dense_7_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
:
≠
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape_2Const*
valueB *+
_class!
loc:@loss/dense_7_loss/Mean_3*
dtype0*
_output_shapes
: 
≤
;training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/ConstConst*
valueB: *+
_class!
loc:@loss/dense_7_loss/Mean_3*
dtype0*
_output_shapes
:
©
:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/ProdProd=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape_1;training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Const*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
: 
і
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/dense_7_loss/Mean_3*
dtype0*
_output_shapes
:
≠
<training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Prod_1Prod=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape_2=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3
Ѓ
?training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_7_loss/Mean_3*
dtype0*
_output_shapes
: 
Х
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/MaximumMaximum<training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Prod_1?training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Maximum/y*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
: *
T0
У
>training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Prod=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Maximum*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3
п
:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/CastCast>training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/floordiv*

SrcT0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
Truncate( *
_output_shapes
: *

DstT0
Ы
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/truedivRealDiv:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Tile:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Cast*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*#
_output_shapes
:€€€€€€€€€
√
>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/ShapeShapeloss/dense_7_loss/mul*
out_type0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*
_output_shapes
:*
T0
≥
@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape_1Const*
valueB *.
_class$
" loc:@loss/dense_7_loss/truediv_1*
dtype0*
_output_shapes
: 
÷
Ntraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
В
@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/truedivloss/dense_7_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
≈
<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1
µ
@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape*
T0*
Tshape0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
Є
<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/NegNegloss/dense_7_loss/mul*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
Г
Btraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Negloss/dense_7_loss/Mean_2*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€*
T0
Й
Btraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDiv_1loss/dense_7_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
§
<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/truedivBtraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
≈
>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/BroadcastGradientArgs:1*.
_class$
" loc:@loss/dense_7_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ѓ
Btraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*
_output_shapes
: 
Ї
8training/Adam/gradients/loss/dense_7_loss/mul_grad/ShapeShapeloss/dense_7_loss/Mean_1*
T0*
out_type0*(
_class
loc:@loss/dense_7_loss/mul*
_output_shapes
:
Ї
:training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape_1Shapedense_7_sample_weights*
T0*
out_type0*(
_class
loc:@loss/dense_7_loss/mul*
_output_shapes
:
Њ
Htraining/Adam/gradients/loss/dense_7_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_7_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
п
6training/Adam/gradients/loss/dense_7_loss/mul_grad/MulMul@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Reshapedense_7_sample_weights*
T0*(
_class
loc:@loss/dense_7_loss/mul*#
_output_shapes
:€€€€€€€€€
©
6training/Adam/gradients/loss/dense_7_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_7_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_7_loss/mul_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/dense_7_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Э
:training/Adam/gradients/loss/dense_7_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_7_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape*
T0*
Tshape0*(
_class
loc:@loss/dense_7_loss/mul*#
_output_shapes
:€€€€€€€€€
у
8training/Adam/gradients/loss/dense_7_loss/mul_grad/Mul_1Mulloss/dense_7_loss/Mean_1@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Reshape*#
_output_shapes
:€€€€€€€€€*
T0*(
_class
loc:@loss/dense_7_loss/mul
ѓ
8training/Adam/gradients/loss/dense_7_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_7_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_7_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/dense_7_loss/mul
£
<training/Adam/gradients/loss/dense_7_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_7_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/dense_7_loss/mul*#
_output_shapes
:€€€€€€€€€
Њ
;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/ShapeShapeloss/dense_7_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
:
©
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/SizeConst*
value	B :*+
_class!
loc:@loss/dense_7_loss/Mean_1*
dtype0*
_output_shapes
: 
ш
9training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/addAdd*loss/dense_7_loss/Mean_1/reduction_indices:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: 
М
9training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/modFloorMod9training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/add:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Size*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: *
T0
і
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/dense_7_loss/Mean_1
∞
Atraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range/startConst*
value	B : *+
_class!
loc:@loss/dense_7_loss/Mean_1*
dtype0*
_output_shapes
: 
∞
Atraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range/deltaConst*
value	B :*+
_class!
loc:@loss/dense_7_loss/Mean_1*
dtype0*
_output_shapes
: 
џ
;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/rangeRangeAtraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range/start:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/SizeAtraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0*+
_class!
loc:@loss/dense_7_loss/Mean_1
ѓ
@training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss/dense_7_loss/Mean_1*
dtype0*
_output_shapes
: 
•
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/FillFill=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_1@training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: 
†
Ctraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/DynamicStitchDynamicStitch;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range9training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/mod;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Fill*
N*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1
Ѓ
?training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_7_loss/Mean_1*
dtype0*
_output_shapes
: 
†
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/MaximumMaximumCtraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/DynamicStitch?training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum/y*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
:*
T0
Ш
>training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
:
≤
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/ReshapeReshape:training/Adam/gradients/loss/dense_7_loss/mul_grad/ReshapeCtraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss/dense_7_loss/Mean_1*#
_output_shapes
:€€€€€€€€€
Ѓ
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Reshape>training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/floordiv*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1
ј
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_2Shapeloss/dense_7_loss/Mean*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/dense_7_loss/Mean_1
¬
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_3Shapeloss/dense_7_loss/Mean_1*
T0*
out_type0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
:
≤
;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/ConstConst*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/dense_7_loss/Mean_1*
dtype0
©
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/ProdProd=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_2;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Const*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
і
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/dense_7_loss/Mean_1*
dtype0*
_output_shapes
:
≠
<training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Prod_1Prod=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_3=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Const_1*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
∞
Atraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum_1/yConst*
_output_shapes
: *
value	B :*+
_class!
loc:@loss/dense_7_loss/Mean_1*
dtype0
Щ
?training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum_1Maximum<training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Prod_1Atraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum_1/y*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: *
T0
Ч
@training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/floordiv_1FloorDiv:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Prod?training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum_1*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1
с
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/CastCast@training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
Truncate( *
_output_shapes
: *

DstT0
Ы
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Tile:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Cast*+
_class!
loc:@loss/dense_7_loss/Mean_1*#
_output_shapes
:€€€€€€€€€*
T0
√
9training/Adam/gradients/loss/dense_7_loss/Mean_grad/ShapeShapeloss/dense_7_loss/logistic_loss*
T0*
out_type0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
:
•
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/SizeConst*
value	B :*)
_class
loc:@loss/dense_7_loss/Mean*
dtype0*
_output_shapes
: 
о
7training/Adam/gradients/loss/dense_7_loss/Mean_grad/addAdd(loss/dense_7_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
В
7training/Adam/gradients/loss/dense_7_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_7_loss/Mean_grad/add8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
©
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_1Const*
_output_shapes
: *
valueB *)
_class
loc:@loss/dense_7_loss/Mean*
dtype0
ђ
?training/Adam/gradients/loss/dense_7_loss/Mean_grad/range/startConst*
value	B : *)
_class
loc:@loss/dense_7_loss/Mean*
dtype0*
_output_shapes
: 
ђ
?training/Adam/gradients/loss/dense_7_loss/Mean_grad/range/deltaConst*
value	B :*)
_class
loc:@loss/dense_7_loss/Mean*
dtype0*
_output_shapes
: 
—
9training/Adam/gradients/loss/dense_7_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_7_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_7_loss/Mean_grad/range/delta*

Tidx0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
:
Ђ
>training/Adam/gradients/loss/dense_7_loss/Mean_grad/Fill/valueConst*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_7_loss/Mean*
dtype0
Ы
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_7_loss/Mean_grad/Fill/value*

index_type0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: *
T0
Ф
Atraining/Adam/gradients/loss/dense_7_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_7_loss/Mean_grad/range7training/Adam/gradients/loss/dense_7_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_7_loss/Mean*
N*
_output_shapes
:*
T0
™
=training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_7_loss/Mean
Ш
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_7_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
:
Р
<training/Adam/gradients/loss/dense_7_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_7_loss/Mean
Љ
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/ReshapeReshape=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/truedivAtraining/Adam/gradients/loss/dense_7_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*)
_class
loc:@loss/dense_7_loss/Mean*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
≥
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_7_loss/Mean_grad/floordiv*

Tmultiples0*
T0*)
_class
loc:@loss/dense_7_loss/Mean*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
≈
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_2Shapeloss/dense_7_loss/logistic_loss*
T0*
out_type0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
:
Љ
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_3Shapeloss/dense_7_loss/Mean*
T0*
out_type0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
:
Ѓ
9training/Adam/gradients/loss/dense_7_loss/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *)
_class
loc:@loss/dense_7_loss/Mean*
dtype0
°
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_7_loss/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
∞
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Const_1Const*
valueB: *)
_class
loc:@loss/dense_7_loss/Mean*
dtype0*
_output_shapes
:
•
:training/Adam/gradients/loss/dense_7_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
ђ
?training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum_1/yConst*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_7_loss/Mean*
dtype0
С
=training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_7_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
П
>training/Adam/gradients/loss/dense_7_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum_1*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: *
T0
л
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_7_loss/Mean_grad/floordiv_1*

SrcT0*)
_class
loc:@loss/dense_7_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
Ч
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_7_loss/Mean*'
_output_shapes
:€€€€€€€€€
ў
Btraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ShapeShape#loss/dense_7_loss/logistic_loss/sub*
T0*
out_type0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
_output_shapes
:
Ё
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Shape_1Shape%loss/dense_7_loss/logistic_loss/Log1p*
T0*
out_type0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
_output_shapes
:
ж
Rtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ћ
@training/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/dense_7_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
_output_shapes
:
…
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*'
_output_shapes
:€€€€€€€€€
–
Btraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Sum_1Sum;training/Adam/gradients/loss/dense_7_loss/Mean_grad/truedivTtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss
ѕ
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*'
_output_shapes
:€€€€€€€€€
д
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_7_loss/logistic_loss/Select*
T0*
out_type0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
_output_shapes
:
г
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_7_loss/logistic_loss/mul*
_output_shapes
:*
T0*
out_type0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub
ц
Vtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub
б
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
ў
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Shape*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*'
_output_shapes
:€€€€€€€€€
е
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
о
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Sum_1*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub
Ё
Jtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*'
_output_shapes
:€€€€€€€€€
Р
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Reshape_1*
_output_shapes
: *
valueB
 *  А?*8
_class.
,*loc:@loss/dense_7_loss/logistic_loss/Log1p*
dtype0
®
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/addAddHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/add/x#loss/dense_7_loss/logistic_loss/Exp*
T0*8
_class.
,*loc:@loss/dense_7_loss/logistic_loss/Log1p*'
_output_shapes
:€€€€€€€€€
П
Mtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/add*
T0*8
_class.
,*loc:@loss/dense_7_loss/logistic_loss/Log1p*'
_output_shapes
:€€€€€€€€€
–
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/Reciprocal*'
_output_shapes
:€€€€€€€€€*
T0*8
_class.
,*loc:@loss/dense_7_loss/logistic_loss/Log1p
я
Ntraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_7_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0*9
_class/
-+loc:@loss/dense_7_loss/logistic_loss/Select
Й
Jtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_7_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/zeros_like*'
_output_shapes
:€€€€€€€€€*
T0*9
_class/
-+loc:@loss/dense_7_loss/logistic_loss/Select
Л
Ltraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_7_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Reshape*9
_class/
-+loc:@loss/dense_7_loss/logistic_loss/Select*'
_output_shapes
:€€€€€€€€€*
T0
”
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_7_loss/Log*
T0*
out_type0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
_output_shapes
:
ќ
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Shape_1Shapedense_7_target*
T0*
out_type0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
_output_shapes
:
ц
Vtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/ShapeHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
С
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/MulMulJtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Reshape_1dense_7_target*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*'
_output_shapes
:€€€€€€€€€
б
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/SumSumDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/MulVtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
ў
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Shape*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*'
_output_shapes
:€€€€€€€€€
Ъ
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_7_loss/LogJtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Reshape_1*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*'
_output_shapes
:€€€€€€€€€
з
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
_output_shapes
:
и
Jtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Shape_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul
Ґ
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/mul#loss/dense_7_loss/logistic_loss/Exp*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/Exp*'
_output_shapes
:€€€€€€€€€
с
Ptraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_7_loss/logistic_loss/Neg*'
_output_shapes
:€€€€€€€€€*
T0*;
_class1
/-loc:@loss/dense_7_loss/logistic_loss/Select_1
Л
Ltraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_7_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/zeros_like*'
_output_shapes
:€€€€€€€€€*
T0*;
_class1
/-loc:@loss/dense_7_loss/logistic_loss/Select_1
Н
Ntraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_7_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Exp_grad/mul*;
_class1
/-loc:@loss/dense_7_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€*
T0
Г
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Neg_grad/NegNegLtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/Select*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/Neg*'
_output_shapes
:€€€€€€€€€
∆
training/Adam/gradients/AddNAddNJtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/SelectHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/ReshapeNtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/Select_1Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Neg_grad/Neg*
T0*9
_class/
-+loc:@loss/dense_7_loss/logistic_loss/Select*
N*'
_output_shapes
:€€€€€€€€€
б
=training/Adam/gradients/loss/dense_7_loss/Log_grad/Reciprocal
Reciprocalloss/dense_7_loss/truediv^training/Adam/gradients/AddN*'
_output_shapes
:€€€€€€€€€*
T0*(
_class
loc:@loss/dense_7_loss/Log
ц
6training/Adam/gradients/loss/dense_7_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/dense_7_loss/Log_grad/Reciprocal*'
_output_shapes
:€€€€€€€€€*
T0*(
_class
loc:@loss/dense_7_loss/Log
…
<training/Adam/gradients/loss/dense_7_loss/truediv_grad/ShapeShapeloss/dense_7_loss/clip_by_value*
out_type0*,
_class"
 loc:@loss/dense_7_loss/truediv*
_output_shapes
:*
T0
√
>training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape_1Shapeloss/dense_7_loss/sub_1*
T0*
out_type0*,
_class"
 loc:@loss/dense_7_loss/truediv*
_output_shapes
:
ќ
Ltraining/Adam/gradients/loss/dense_7_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv
ъ
>training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_7_loss/Log_grad/mulloss/dense_7_loss/sub_1*'
_output_shapes
:€€€€€€€€€*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv
љ
:training/Adam/gradients/loss/dense_7_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_7_loss/truediv_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
±
>training/Adam/gradients/loss/dense_7_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_7_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*,
_class"
 loc:@loss/dense_7_loss/truediv
¬
:training/Adam/gradients/loss/dense_7_loss/truediv_grad/NegNegloss/dense_7_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*'
_output_shapes
:€€€€€€€€€
А
@training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_7_loss/truediv_grad/Negloss/dense_7_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*'
_output_shapes
:€€€€€€€€€
Ж
@training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDiv_1loss/dense_7_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*'
_output_shapes
:€€€€€€€€€
Ы
:training/Adam/gradients/loss/dense_7_loss/truediv_grad/mulMul6training/Adam/gradients/loss/dense_7_loss/Log_grad/mul@training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*'
_output_shapes
:€€€€€€€€€
љ
<training/Adam/gradients/loss/dense_7_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_7_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_7_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
_output_shapes
:
Ј
@training/Adam/gradients/loss/dense_7_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_7_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss/dense_7_loss/truediv*'
_output_shapes
:€€€€€€€€€
©
:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/ShapeConst*
valueB **
_class 
loc:@loss/dense_7_loss/sub_1*
dtype0*
_output_shapes
: 
«
<training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape_1Shapeloss/dense_7_loss/clip_by_value*
T0*
out_type0**
_class 
loc:@loss/dense_7_loss/sub_1*
_output_shapes
:
∆
Jtraining/Adam/gradients/loss/dense_7_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_7_loss/sub_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
є
8training/Adam/gradients/loss/dense_7_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/dense_7_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/dense_7_loss/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/dense_7_loss/sub_1
Ш
<training/Adam/gradients/loss/dense_7_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Sum:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_7_loss/sub_1*
_output_shapes
: 
љ
:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_7_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_7_loss/sub_1_grad/BroadcastGradientArgs:1**
_class 
loc:@loss/dense_7_loss/sub_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
 
8training/Adam/gradients/loss/dense_7_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Sum_1*
_output_shapes
:*
T0**
_class 
loc:@loss/dense_7_loss/sub_1
≠
>training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/dense_7_loss/sub_1*'
_output_shapes
:€€€€€€€€€
П
training/Adam/gradients/AddN_1AddN>training/Adam/gradients/loss/dense_7_loss/truediv_grad/Reshape>training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Reshape_1*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
N*'
_output_shapes
:€€€€€€€€€
Ё
Btraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/ShapeShape'loss/dense_7_loss/clip_by_value/Minimum*
T0*
out_type0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
_output_shapes
:
ї
Dtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_1Const*
valueB *2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
dtype0*
_output_shapes
: 
÷
Dtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*
T0*
out_type0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
_output_shapes
:
Ѕ
Htraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
dtype0*
_output_shapes
: 
“
Btraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
Б
Itraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_7_loss/clip_by_value/Minimumloss/dense_7_loss/Const*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
ж
Rtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
в
Ctraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
‘
@training/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value
…
Dtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape*
Tshape0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
д
Etraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zerostraining/Adam/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
Џ
Btraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value
Њ
Ftraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
_output_shapes
: 
’
Jtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/ShapeShapedense_7/Softmax*
T0*
out_type0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
_output_shapes
:
Ћ
Ltraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
М
Ltraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Reshape*
T0*
out_type0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
_output_shapes
:
—
Ptraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
т
Jtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
с
Ntraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_7/Softmaxloss/dense_7_loss/sub*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€*
T0
Ж
Ztraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
•
Ktraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
ф
Htraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
й
Ltraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum
І
Mtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
ъ
Jtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
_output_shapes
:
ё
Ntraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
_output_shapes
: 
м
0training/Adam/gradients/dense_7/Softmax_grad/mulMulLtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Reshapedense_7/Softmax*
T0*"
_class
loc:@dense_7/Softmax*'
_output_shapes
:€€€€€€€€€
±
Btraining/Adam/gradients/dense_7/Softmax_grad/Sum/reduction_indicesConst*
valueB :
€€€€€€€€€*"
_class
loc:@dense_7/Softmax*
dtype0*
_output_shapes
: 
†
0training/Adam/gradients/dense_7/Softmax_grad/SumSum0training/Adam/gradients/dense_7/Softmax_grad/mulBtraining/Adam/gradients/dense_7/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims(*
T0*"
_class
loc:@dense_7/Softmax
Н
0training/Adam/gradients/dense_7/Softmax_grad/subSubLtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Reshape0training/Adam/gradients/dense_7/Softmax_grad/Sum*
T0*"
_class
loc:@dense_7/Softmax*'
_output_shapes
:€€€€€€€€€
“
2training/Adam/gradients/dense_7/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_7/Softmax_grad/subdense_7/Softmax*
T0*"
_class
loc:@dense_7/Softmax*'
_output_shapes
:€€€€€€€€€
џ
8training/Adam/gradients/dense_7/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_7/Softmax_grad/mul_1*
T0*"
_class
loc:@dense_7/BiasAdd*
data_formatNHWC*
_output_shapes
:
А
2training/Adam/gradients/dense_7/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_7/Softmax_grad/mul_1dense_7/kernel/read*
T0*!
_class
loc:@dense_7/MatMul*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b(
ъ
4training/Adam/gradients/dense_7/MatMul_grad/MatMul_1MatMuldropout_6/cond/Merge2training/Adam/gradients/dense_7/Softmax_grad/mul_1*
T0*!
_class
loc:@dense_7/MatMul*
_output_shapes

: *
transpose_a(*
transpose_b( 
щ
;training/Adam/gradients/dropout_6/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_7/MatMul_grad/MatMuldropout_6/cond/pred_id*
T0*!
_class
loc:@dense_7/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
і
training/Adam/gradients/SwitchSwitchdense_6/Reludropout_6/cond/pred_id*
T0*
_class
loc:@dense_6/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
°
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_6/Relu
†
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
out_type0*
_class
loc:@dense_6/Relu*
_output_shapes
:*
T0
ђ
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
valueB
 *    *
_class
loc:@dense_6/Relu*
dtype0*
_output_shapes
: 
–
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*

index_type0*
_class
loc:@dense_6/Relu*'
_output_shapes
:€€€€€€€€€ 
Б
>training/Adam/gradients/dropout_6/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_6/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
T0*
_class
loc:@dense_6/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
 
?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/ShapeShapedropout_6/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Shape_1Shapedropout_6/cond/dropout/Cast*
_output_shapes
:*
T0*
out_type0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1
Џ
Otraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Shape_1*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Г
=training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_6/cond/Merge_grad/cond_grad:1dropout_6/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
≈
=training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
_output_shapes
:
љ
Atraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Д
?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Mul_1Muldropout_6/cond/dropout/mul=training/Adam/gradients/dropout_6/cond/Merge_grad/cond_grad:1*'
_output_shapes
:€€€€€€€€€ *
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1
Ћ
?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
√
Ctraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/ShapeShapedropout_6/cond/mul*
_output_shapes
:*
T0*
out_type0*-
_class#
!loc:@dropout_6/cond/dropout/mul
±
?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_6/cond/dropout/mul*
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_6/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_6/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Reshapedropout_6/cond/dropout/truediv*-
_class#
!loc:@dropout_6/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ *
T0
љ
;training/Adam/gradients/dropout_6/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_6/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_6/cond/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*
_output_shapes
:
µ
?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*
Tshape0*-
_class#
!loc:@dropout_6/cond/dropout/mul
ь
=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Mul_1Muldropout_6/cond/mulAtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
√
=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_6/cond/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*
_output_shapes
:
™
Atraining/Adam/gradients/dropout_6/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_6/cond/dropout/mul*
_output_shapes
: 
Ј
5training/Adam/gradients/dropout_6/cond/mul_grad/ShapeShapedropout_6/cond/mul/Switch:1*
T0*
out_type0*%
_class
loc:@dropout_6/cond/mul*
_output_shapes
:
°
7training/Adam/gradients/dropout_6/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_6/cond/mul*
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_6/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_6/cond/mul_grad/Shape7training/Adam/gradients/dropout_6/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_6/cond/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
3training/Adam/gradients/dropout_6/cond/mul_grad/MulMul?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Reshapedropout_6/cond/mul/y*
T0*%
_class
loc:@dropout_6/cond/mul*'
_output_shapes
:€€€€€€€€€ 
Э
3training/Adam/gradients/dropout_6/cond/mul_grad/SumSum3training/Adam/gradients/dropout_6/cond/mul_grad/MulEtraining/Adam/gradients/dropout_6/cond/mul_grad/BroadcastGradientArgs*%
_class
loc:@dropout_6/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Х
7training/Adam/gradients/dropout_6/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_6/cond/mul_grad/Sum5training/Adam/gradients/dropout_6/cond/mul_grad/Shape*
T0*
Tshape0*%
_class
loc:@dropout_6/cond/mul*'
_output_shapes
:€€€€€€€€€ 
у
5training/Adam/gradients/dropout_6/cond/mul_grad/Mul_1Muldropout_6/cond/mul/Switch:1?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_6/cond/mul*'
_output_shapes
:€€€€€€€€€ 
£
5training/Adam/gradients/dropout_6/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_6/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_6/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_6/cond/mul
К
9training/Adam/gradients/dropout_6/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_6/cond/mul_grad/Sum_17training/Adam/gradients/dropout_6/cond/mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*%
_class
loc:@dropout_6/cond/mul
ґ
 training/Adam/gradients/Switch_1Switchdense_6/Reludropout_6/cond/pred_id*
T0*
_class
loc:@dense_6/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
£
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
T0*
_class
loc:@dense_6/Relu*'
_output_shapes
:€€€€€€€€€ 
†
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
T0*
out_type0*
_class
loc:@dense_6/Relu*
_output_shapes
:
∞
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
valueB
 *    *
_class
loc:@dense_6/Relu*
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*

index_type0*
_class
loc:@dense_6/Relu*'
_output_shapes
:€€€€€€€€€ *
T0
Б
@training/Adam/gradients/dropout_6/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_17training/Adam/gradients/dropout_6/cond/mul_grad/Reshape*
_class
loc:@dense_6/Relu*
N*)
_output_shapes
:€€€€€€€€€ : *
T0
Д
training/Adam/gradients/AddN_2AddN>training/Adam/gradients/dropout_6/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_6/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_6/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_6/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_2dense_6/Relu*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_6/Relu
џ
8training/Adam/gradients/dense_6/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_6/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_6/BiasAdd*
data_formatNHWC*
_output_shapes
: 
А
2training/Adam/gradients/dense_6/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_6/Relu_grad/ReluGraddense_6/kernel/read*
T0*!
_class
loc:@dense_6/MatMul*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b(
ъ
4training/Adam/gradients/dense_6/MatMul_grad/MatMul_1MatMuldropout_5/cond/Merge2training/Adam/gradients/dense_6/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_6/MatMul*
_output_shapes

:  *
transpose_a(*
transpose_b( 
щ
;training/Adam/gradients/dropout_5/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_6/MatMul_grad/MatMuldropout_5/cond/pred_id*
T0*!
_class
loc:@dense_6/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
ґ
 training/Adam/gradients/Switch_2Switchdense_5/Reludropout_5/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_5/Relu
•
"training/Adam/gradients/Identity_2Identity"training/Adam/gradients/Switch_2:1*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_5/Relu
Ґ
training/Adam/gradients/Shape_3Shape"training/Adam/gradients/Switch_2:1*
T0*
out_type0*
_class
loc:@dense_5/Relu*
_output_shapes
:
∞
%training/Adam/gradients/zeros_2/ConstConst#^training/Adam/gradients/Identity_2*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense_5/Relu*
dtype0
‘
training/Adam/gradients/zeros_2Filltraining/Adam/gradients/Shape_3%training/Adam/gradients/zeros_2/Const*
T0*

index_type0*
_class
loc:@dense_5/Relu*'
_output_shapes
:€€€€€€€€€ 
Г
>training/Adam/gradients/dropout_5/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_5/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_2*)
_output_shapes
:€€€€€€€€€ : *
T0*
_class
loc:@dense_5/Relu*
N
 
?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/ShapeShapedropout_5/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Shape_1Shapedropout_5/cond/dropout/Cast*
T0*
out_type0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
_output_shapes
:
Џ
Otraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Г
=training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_5/cond/Merge_grad/cond_grad:1dropout_5/cond/dropout/Cast*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ *
T0
≈
=training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
љ
Atraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Д
?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Mul_1Muldropout_5/cond/dropout/mul=training/Adam/gradients/dropout_5/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Ћ
?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1
√
Ctraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/ShapeShapedropout_5/cond/mul*
_output_shapes
:*
T0*
out_type0*-
_class#
!loc:@dropout_5/cond/dropout/mul
±
?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_5/cond/dropout/mul*
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_5/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul
Ж
;training/Adam/gradients/dropout_5/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Reshapedropout_5/cond/dropout/truediv*'
_output_shapes
:€€€€€€€€€ *
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul
љ
;training/Adam/gradients/dropout_5/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_5/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_5/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul
µ
?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@dropout_5/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
ь
=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Mul_1Muldropout_5/cond/mulAtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
√
=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_5/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
™
Atraining/Adam/gradients/dropout_5/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*-
_class#
!loc:@dropout_5/cond/dropout/mul
Ј
5training/Adam/gradients/dropout_5/cond/mul_grad/ShapeShapedropout_5/cond/mul/Switch:1*
T0*
out_type0*%
_class
loc:@dropout_5/cond/mul*
_output_shapes
:
°
7training/Adam/gradients/dropout_5/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_5/cond/mul*
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_5/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_5/cond/mul_grad/Shape7training/Adam/gradients/dropout_5/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_5/cond/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
3training/Adam/gradients/dropout_5/cond/mul_grad/MulMul?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Reshapedropout_5/cond/mul/y*
T0*%
_class
loc:@dropout_5/cond/mul*'
_output_shapes
:€€€€€€€€€ 
Э
3training/Adam/gradients/dropout_5/cond/mul_grad/SumSum3training/Adam/gradients/dropout_5/cond/mul_grad/MulEtraining/Adam/gradients/dropout_5/cond/mul_grad/BroadcastGradientArgs*
T0*%
_class
loc:@dropout_5/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Х
7training/Adam/gradients/dropout_5/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_5/cond/mul_grad/Sum5training/Adam/gradients/dropout_5/cond/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*
Tshape0*%
_class
loc:@dropout_5/cond/mul
у
5training/Adam/gradients/dropout_5/cond/mul_grad/Mul_1Muldropout_5/cond/mul/Switch:1?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_5/cond/mul*'
_output_shapes
:€€€€€€€€€ 
£
5training/Adam/gradients/dropout_5/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_5/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_5/cond/mul_grad/BroadcastGradientArgs:1*%
_class
loc:@dropout_5/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
К
9training/Adam/gradients/dropout_5/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_5/cond/mul_grad/Sum_17training/Adam/gradients/dropout_5/cond/mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*%
_class
loc:@dropout_5/cond/mul
ґ
 training/Adam/gradients/Switch_3Switchdense_5/Reludropout_5/cond/pred_id*
T0*
_class
loc:@dense_5/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
£
"training/Adam/gradients/Identity_3Identity training/Adam/gradients/Switch_3*
T0*
_class
loc:@dense_5/Relu*'
_output_shapes
:€€€€€€€€€ 
†
training/Adam/gradients/Shape_4Shape training/Adam/gradients/Switch_3*
_output_shapes
:*
T0*
out_type0*
_class
loc:@dense_5/Relu
∞
%training/Adam/gradients/zeros_3/ConstConst#^training/Adam/gradients/Identity_3*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense_5/Relu
‘
training/Adam/gradients/zeros_3Filltraining/Adam/gradients/Shape_4%training/Adam/gradients/zeros_3/Const*
T0*

index_type0*
_class
loc:@dense_5/Relu*'
_output_shapes
:€€€€€€€€€ 
Б
@training/Adam/gradients/dropout_5/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_37training/Adam/gradients/dropout_5/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_5/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
Д
training/Adam/gradients/AddN_3AddN>training/Adam/gradients/dropout_5/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_5/cond/mul/Switch_grad/cond_grad*
N*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_5/Relu
њ
2training/Adam/gradients/dense_5/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_3dense_5/Relu*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_5/Relu
џ
8training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_5/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_5/BiasAdd*
data_formatNHWC*
_output_shapes
: 
А
2training/Adam/gradients/dense_5/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_5/Relu_grad/ReluGraddense_5/kernel/read*
T0*!
_class
loc:@dense_5/MatMul*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b(
ъ
4training/Adam/gradients/dense_5/MatMul_grad/MatMul_1MatMuldropout_4/cond/Merge2training/Adam/gradients/dense_5/Relu_grad/ReluGrad*
_output_shapes

:  *
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_5/MatMul
щ
;training/Adam/gradients/dropout_4/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_5/MatMul_grad/MatMuldropout_4/cond/pred_id*!
_class
loc:@dense_5/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0
ґ
 training/Adam/gradients/Switch_4Switchdense_4/Reludropout_4/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_4/Relu
•
"training/Adam/gradients/Identity_4Identity"training/Adam/gradients/Switch_4:1*
T0*
_class
loc:@dense_4/Relu*'
_output_shapes
:€€€€€€€€€ 
Ґ
training/Adam/gradients/Shape_5Shape"training/Adam/gradients/Switch_4:1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@dense_4/Relu
∞
%training/Adam/gradients/zeros_4/ConstConst#^training/Adam/gradients/Identity_4*
valueB
 *    *
_class
loc:@dense_4/Relu*
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_4Filltraining/Adam/gradients/Shape_5%training/Adam/gradients/zeros_4/Const*
T0*

index_type0*
_class
loc:@dense_4/Relu*'
_output_shapes
:€€€€€€€€€ 
Г
>training/Adam/gradients/dropout_4/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_4/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_4*
T0*
_class
loc:@dense_4/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
 
?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/ShapeShapedropout_4/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Shape_1Shapedropout_4/cond/dropout/Cast*
T0*
out_type0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
_output_shapes
:
Џ
Otraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1
Г
=training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_4/cond/Merge_grad/cond_grad:1dropout_4/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
≈
=training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/BroadcastGradientArgs*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
љ
Atraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Д
?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Mul_1Muldropout_4/cond/dropout/mul=training/Adam/gradients/dropout_4/cond/Merge_grad/cond_grad:1*'
_output_shapes
:€€€€€€€€€ *
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1
Ћ
?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
√
Ctraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/ShapeShapedropout_4/cond/mul*
T0*
out_type0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
_output_shapes
:
±
?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_4/cond/dropout/mul*
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_4/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Reshapedropout_4/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
љ
;training/Adam/gradients/dropout_4/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_4/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul
µ
?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@dropout_4/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
ь
=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Mul_1Muldropout_4/cond/mulAtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Reshape*-
_class#
!loc:@dropout_4/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ *
T0
√
=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
™
Atraining/Adam/gradients/dropout_4/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
_output_shapes
: 
Ј
5training/Adam/gradients/dropout_4/cond/mul_grad/ShapeShapedropout_4/cond/mul/Switch:1*
_output_shapes
:*
T0*
out_type0*%
_class
loc:@dropout_4/cond/mul
°
7training/Adam/gradients/dropout_4/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_4/cond/mul*
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_4/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_4/cond/mul_grad/Shape7training/Adam/gradients/dropout_4/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_4/cond/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
3training/Adam/gradients/dropout_4/cond/mul_grad/MulMul?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Reshapedropout_4/cond/mul/y*
T0*%
_class
loc:@dropout_4/cond/mul*'
_output_shapes
:€€€€€€€€€ 
Э
3training/Adam/gradients/dropout_4/cond/mul_grad/SumSum3training/Adam/gradients/dropout_4/cond/mul_grad/MulEtraining/Adam/gradients/dropout_4/cond/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_4/cond/mul*
_output_shapes
:
Х
7training/Adam/gradients/dropout_4/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_4/cond/mul_grad/Sum5training/Adam/gradients/dropout_4/cond/mul_grad/Shape*
T0*
Tshape0*%
_class
loc:@dropout_4/cond/mul*'
_output_shapes
:€€€€€€€€€ 
у
5training/Adam/gradients/dropout_4/cond/mul_grad/Mul_1Muldropout_4/cond/mul/Switch:1?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_4/cond/mul*'
_output_shapes
:€€€€€€€€€ 
£
5training/Adam/gradients/dropout_4/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_4/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_4/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_4/cond/mul
К
9training/Adam/gradients/dropout_4/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_4/cond/mul_grad/Sum_17training/Adam/gradients/dropout_4/cond/mul_grad/Shape_1*
T0*
Tshape0*%
_class
loc:@dropout_4/cond/mul*
_output_shapes
: 
ґ
 training/Adam/gradients/Switch_5Switchdense_4/Reludropout_4/cond/pred_id*
T0*
_class
loc:@dense_4/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
£
"training/Adam/gradients/Identity_5Identity training/Adam/gradients/Switch_5*
T0*
_class
loc:@dense_4/Relu*'
_output_shapes
:€€€€€€€€€ 
†
training/Adam/gradients/Shape_6Shape training/Adam/gradients/Switch_5*
out_type0*
_class
loc:@dense_4/Relu*
_output_shapes
:*
T0
∞
%training/Adam/gradients/zeros_5/ConstConst#^training/Adam/gradients/Identity_5*
valueB
 *    *
_class
loc:@dense_4/Relu*
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_5Filltraining/Adam/gradients/Shape_6%training/Adam/gradients/zeros_5/Const*

index_type0*
_class
loc:@dense_4/Relu*'
_output_shapes
:€€€€€€€€€ *
T0
Б
@training/Adam/gradients/dropout_4/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_57training/Adam/gradients/dropout_4/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_4/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
Д
training/Adam/gradients/AddN_4AddN>training/Adam/gradients/dropout_4/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_4/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_4/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_4/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_4dense_4/Relu*
T0*
_class
loc:@dense_4/Relu*'
_output_shapes
:€€€€€€€€€ 
џ
8training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_4/Relu_grad/ReluGrad*
_output_shapes
: *
T0*"
_class
loc:@dense_4/BiasAdd*
data_formatNHWC
А
2training/Adam/gradients/dense_4/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_4/Relu_grad/ReluGraddense_4/kernel/read*
transpose_b(*
T0*!
_class
loc:@dense_4/MatMul*'
_output_shapes
:€€€€€€€€€ *
transpose_a( 
ъ
4training/Adam/gradients/dense_4/MatMul_grad/MatMul_1MatMuldropout_3/cond/Merge2training/Adam/gradients/dense_4/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_4/MatMul*
_output_shapes

:  *
transpose_a(*
transpose_b( 
щ
;training/Adam/gradients/dropout_3/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_4/MatMul_grad/MatMuldropout_3/cond/pred_id*
T0*!
_class
loc:@dense_4/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
ґ
 training/Adam/gradients/Switch_6Switchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
•
"training/Adam/gradients/Identity_6Identity"training/Adam/gradients/Switch_6:1*
T0*
_class
loc:@dense_3/Relu*'
_output_shapes
:€€€€€€€€€ 
Ґ
training/Adam/gradients/Shape_7Shape"training/Adam/gradients/Switch_6:1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@dense_3/Relu
∞
%training/Adam/gradients/zeros_6/ConstConst#^training/Adam/gradients/Identity_6*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense_3/Relu
‘
training/Adam/gradients/zeros_6Filltraining/Adam/gradients/Shape_7%training/Adam/gradients/zeros_6/Const*'
_output_shapes
:€€€€€€€€€ *
T0*

index_type0*
_class
loc:@dense_3/Relu
Г
>training/Adam/gradients/dropout_3/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_3/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_6*
T0*
_class
loc:@dense_3/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
 
?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/ShapeShapedropout_3/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Shape_1Shapedropout_3/cond/dropout/Cast*
T0*
out_type0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
_output_shapes
:
Џ
Otraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1
Г
=training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_3/cond/Merge_grad/cond_grad:1dropout_3/cond/dropout/Cast*'
_output_shapes
:€€€€€€€€€ *
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1
≈
=training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
љ
Atraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*
Tshape0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1
Д
?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Mul_1Muldropout_3/cond/dropout/mul=training/Adam/gradients/dropout_3/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Ћ
?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
_output_shapes
:
√
Ctraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/ShapeShapedropout_3/cond/mul*
T0*
out_type0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
_output_shapes
:
±
?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_3/cond/dropout/mul*
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_3/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Reshapedropout_3/cond/dropout/truediv*-
_class#
!loc:@dropout_3/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ *
T0
љ
;training/Adam/gradients/dropout_3/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_3/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul
µ
?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*
Tshape0*-
_class#
!loc:@dropout_3/cond/dropout/mul
ь
=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Muldropout_3/cond/mulAtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
√
=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul
™
Atraining/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
Tshape0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
_output_shapes
: *
T0
Ј
5training/Adam/gradients/dropout_3/cond/mul_grad/ShapeShapedropout_3/cond/mul/Switch:1*
T0*
out_type0*%
_class
loc:@dropout_3/cond/mul*
_output_shapes
:
°
7training/Adam/gradients/dropout_3/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_3/cond/mul*
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_3/cond/mul_grad/Shape7training/Adam/gradients/dropout_3/cond/mul_grad/Shape_1*%
_class
loc:@dropout_3/cond/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
к
3training/Adam/gradients/dropout_3/cond/mul_grad/MulMul?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshapedropout_3/cond/mul/y*
T0*%
_class
loc:@dropout_3/cond/mul*'
_output_shapes
:€€€€€€€€€ 
Э
3training/Adam/gradients/dropout_3/cond/mul_grad/SumSum3training/Adam/gradients/dropout_3/cond/mul_grad/MulEtraining/Adam/gradients/dropout_3/cond/mul_grad/BroadcastGradientArgs*
T0*%
_class
loc:@dropout_3/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Х
7training/Adam/gradients/dropout_3/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_3/cond/mul_grad/Sum5training/Adam/gradients/dropout_3/cond/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*
Tshape0*%
_class
loc:@dropout_3/cond/mul
у
5training/Adam/gradients/dropout_3/cond/mul_grad/Mul_1Muldropout_3/cond/mul/Switch:1?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshape*'
_output_shapes
:€€€€€€€€€ *
T0*%
_class
loc:@dropout_3/cond/mul
£
5training/Adam/gradients/dropout_3/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_3/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_3/cond/mul_grad/BroadcastGradientArgs:1*%
_class
loc:@dropout_3/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
К
9training/Adam/gradients/dropout_3/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_3/cond/mul_grad/Sum_17training/Adam/gradients/dropout_3/cond/mul_grad/Shape_1*
T0*
Tshape0*%
_class
loc:@dropout_3/cond/mul*
_output_shapes
: 
ґ
 training/Adam/gradients/Switch_7Switchdense_3/Reludropout_3/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_3/Relu
£
"training/Adam/gradients/Identity_7Identity training/Adam/gradients/Switch_7*
T0*
_class
loc:@dense_3/Relu*'
_output_shapes
:€€€€€€€€€ 
†
training/Adam/gradients/Shape_8Shape training/Adam/gradients/Switch_7*
_output_shapes
:*
T0*
out_type0*
_class
loc:@dense_3/Relu
∞
%training/Adam/gradients/zeros_7/ConstConst#^training/Adam/gradients/Identity_7*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense_3/Relu*
dtype0
‘
training/Adam/gradients/zeros_7Filltraining/Adam/gradients/Shape_8%training/Adam/gradients/zeros_7/Const*'
_output_shapes
:€€€€€€€€€ *
T0*

index_type0*
_class
loc:@dense_3/Relu
Б
@training/Adam/gradients/dropout_3/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_77training/Adam/gradients/dropout_3/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_3/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
Д
training/Adam/gradients/AddN_5AddN>training/Adam/gradients/dropout_3/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_3/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_3/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_3/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_5dense_3/Relu*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_3/Relu
џ
8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
: *
T0*"
_class
loc:@dense_3/BiasAdd
А
2training/Adam/gradients/dense_3/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_3/Relu_grad/ReluGraddense_3/kernel/read*
T0*!
_class
loc:@dense_3/MatMul*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b(
ъ
4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1MatMuldropout_2/cond/Merge2training/Adam/gradients/dense_3/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_3/MatMul*
_output_shapes

:  *
transpose_a(*
transpose_b( 
щ
;training/Adam/gradients/dropout_2/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_3/MatMul_grad/MatMuldropout_2/cond/pred_id*
T0*!
_class
loc:@dense_3/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
ґ
 training/Adam/gradients/Switch_8Switchdense_2/Reludropout_2/cond/pred_id*
T0*
_class
loc:@dense_2/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
•
"training/Adam/gradients/Identity_8Identity"training/Adam/gradients/Switch_8:1*
T0*
_class
loc:@dense_2/Relu*'
_output_shapes
:€€€€€€€€€ 
Ґ
training/Adam/gradients/Shape_9Shape"training/Adam/gradients/Switch_8:1*
out_type0*
_class
loc:@dense_2/Relu*
_output_shapes
:*
T0
∞
%training/Adam/gradients/zeros_8/ConstConst#^training/Adam/gradients/Identity_8*
valueB
 *    *
_class
loc:@dense_2/Relu*
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_8Filltraining/Adam/gradients/Shape_9%training/Adam/gradients/zeros_8/Const*
T0*

index_type0*
_class
loc:@dense_2/Relu*'
_output_shapes
:€€€€€€€€€ 
Г
>training/Adam/gradients/dropout_2/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_2/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_8*
N*)
_output_shapes
:€€€€€€€€€ : *
T0*
_class
loc:@dense_2/Relu
 
?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/ShapeShapedropout_2/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1Shapedropout_2/cond/dropout/Cast*
T0*
out_type0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
_output_shapes
:
Џ
Otraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1
Г
=training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_2/cond/Merge_grad/cond_grad:1dropout_2/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
≈
=training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1
љ
Atraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Д
?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Mul_1Muldropout_2/cond/dropout/mul=training/Adam/gradients/dropout_2/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Ћ
?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
√
Ctraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/ShapeShapedropout_2/cond/mul*
T0*
out_type0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
:
±
?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_2/cond/dropout/mul*
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_2/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Reshapedropout_2/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
љ
;training/Adam/gradients/dropout_2/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_2/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
:
µ
?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*
Tshape0*-
_class#
!loc:@dropout_2/cond/dropout/mul
ь
=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Muldropout_2/cond/mulAtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
√
=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
™
Atraining/Adam/gradients/dropout_2/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
: 
Ј
5training/Adam/gradients/dropout_2/cond/mul_grad/ShapeShapedropout_2/cond/mul/Switch:1*
T0*
out_type0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
:
°
7training/Adam/gradients/dropout_2/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_2/cond/mul*
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_2/cond/mul_grad/Shape7training/Adam/gradients/dropout_2/cond/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*%
_class
loc:@dropout_2/cond/mul
к
3training/Adam/gradients/dropout_2/cond/mul_grad/MulMul?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Reshapedropout_2/cond/mul/y*%
_class
loc:@dropout_2/cond/mul*'
_output_shapes
:€€€€€€€€€ *
T0
Э
3training/Adam/gradients/dropout_2/cond/mul_grad/SumSum3training/Adam/gradients/dropout_2/cond/mul_grad/MulEtraining/Adam/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs*
T0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Х
7training/Adam/gradients/dropout_2/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_2/cond/mul_grad/Sum5training/Adam/gradients/dropout_2/cond/mul_grad/Shape*
T0*
Tshape0*%
_class
loc:@dropout_2/cond/mul*'
_output_shapes
:€€€€€€€€€ 
у
5training/Adam/gradients/dropout_2/cond/mul_grad/Mul_1Muldropout_2/cond/mul/Switch:1?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Reshape*'
_output_shapes
:€€€€€€€€€ *
T0*%
_class
loc:@dropout_2/cond/mul
£
5training/Adam/gradients/dropout_2/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_2/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
:
К
9training/Adam/gradients/dropout_2/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_2/cond/mul_grad/Sum_17training/Adam/gradients/dropout_2/cond/mul_grad/Shape_1*
T0*
Tshape0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
: 
ґ
 training/Adam/gradients/Switch_9Switchdense_2/Reludropout_2/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_2/Relu
£
"training/Adam/gradients/Identity_9Identity training/Adam/gradients/Switch_9*
T0*
_class
loc:@dense_2/Relu*'
_output_shapes
:€€€€€€€€€ 
°
 training/Adam/gradients/Shape_10Shape training/Adam/gradients/Switch_9*
T0*
out_type0*
_class
loc:@dense_2/Relu*
_output_shapes
:
∞
%training/Adam/gradients/zeros_9/ConstConst#^training/Adam/gradients/Identity_9*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense_2/Relu
’
training/Adam/gradients/zeros_9Fill training/Adam/gradients/Shape_10%training/Adam/gradients/zeros_9/Const*
T0*

index_type0*
_class
loc:@dense_2/Relu*'
_output_shapes
:€€€€€€€€€ 
Б
@training/Adam/gradients/dropout_2/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_97training/Adam/gradients/dropout_2/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_2/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
Д
training/Adam/gradients/AddN_6AddN>training/Adam/gradients/dropout_2/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_2/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_2/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_2/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_6dense_2/Relu*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_2/Relu
џ
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
: *
T0*"
_class
loc:@dense_2/BiasAdd
А
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Relu_grad/ReluGraddense_2/kernel/read*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul
ъ
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_2/MatMul*
_output_shapes

: *
transpose_a(*
transpose_b( 
щ
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
Ј
!training/Adam/gradients/Switch_10Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
І
#training/Adam/gradients/Identity_10Identity#training/Adam/gradients/Switch_10:1*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€
§
 training/Adam/gradients/Shape_11Shape#training/Adam/gradients/Switch_10:1*
out_type0*
_class
loc:@dense_1/Relu*
_output_shapes
:*
T0
≤
&training/Adam/gradients/zeros_10/ConstConst$^training/Adam/gradients/Identity_10*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@dense_1/Relu
„
 training/Adam/gradients/zeros_10Fill training/Adam/gradients/Shape_11&training/Adam/gradients/zeros_10/Const*
T0*

index_type0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€
Д
>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad training/Adam/gradients/zeros_10*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:€€€€€€€€€: *
T0
 
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*
out_type0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
_output_shapes
:*
T0*
out_type0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
Џ
Otraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Г
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€
≈
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
љ
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€*
T0
Д
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€
Ћ
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:
√
Ctraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€
Њ
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/mul*
T0*
out_type0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:
±
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Const*
valueB *-
_class#
!loc:@dropout_1/cond/dropout/mul*
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*'
_output_shapes
:€€€€€€€€€*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
љ
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
µ
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€
ь
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€
√
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
™
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
: 
Ј
5training/Adam/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
_output_shapes
:*
T0*
out_type0*%
_class
loc:@dropout_1/cond/mul
°
7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1Const*
valueB *%
_class
loc:@dropout_1/cond/mul*
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_1/cond/mul_grad/Shape7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*%
_class
loc:@dropout_1/cond/mul
к
3training/Adam/gradients/dropout_1/cond/mul_grad/MulMul?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshapedropout_1/cond/mul/y*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:€€€€€€€€€
Э
3training/Adam/gradients/dropout_1/cond/mul_grad/SumSum3training/Adam/gradients/dropout_1/cond/mul_grad/MulEtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_1/cond/mul
Х
7training/Adam/gradients/dropout_1/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_1/cond/mul_grad/Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Shape*
T0*
Tshape0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:€€€€€€€€€
у
5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:€€€€€€€€€
£
5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:
К
9training/Adam/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_17training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
T0*
Tshape0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
: 
Ј
!training/Adam/gradients/Switch_11Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
•
#training/Adam/gradients/Identity_11Identity!training/Adam/gradients/Switch_11*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€
Ґ
 training/Adam/gradients/Shape_12Shape!training/Adam/gradients/Switch_11*
_output_shapes
:*
T0*
out_type0*
_class
loc:@dense_1/Relu
≤
&training/Adam/gradients/zeros_11/ConstConst$^training/Adam/gradients/Identity_11*
valueB
 *    *
_class
loc:@dense_1/Relu*
dtype0*
_output_shapes
: 
„
 training/Adam/gradients/zeros_11Fill training/Adam/gradients/Shape_12&training/Adam/gradients/zeros_11/Const*
T0*

index_type0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€
В
@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMerge training/Adam/gradients/zeros_117training/Adam/gradients/dropout_1/cond/mul_grad/Reshape*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:€€€€€€€€€: *
T0
Д
training/Adam/gradients/AddN_7AddN>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_1/Relu*
N*'
_output_shapes
:€€€€€€€€€
њ
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_7dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€
џ
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*"
_class
loc:@dense_1/BiasAdd
А
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
T0*!
_class
loc:@dense_1/MatMul*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(
у
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul*
_output_shapes

:*
transpose_a(
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ђ
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
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
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
 *  А?*
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
 *  А*
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 
Б
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
 *  А?*
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
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
_output_shapes
: *
T0
h
training/Adam/zerosConst*
dtype0*
_output_shapes

:*
valueB*    
К
training/Adam/Variable
VariableV2*
dtype0*
_output_shapes

:*
	container *
shape
:*
shared_name 
—
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

:*
use_locking(
У
training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*
_output_shapes

:
b
training/Adam/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
Д
training/Adam/Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
’
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
:
Х
training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:
j
training/Adam/zeros_2Const*
dtype0*
_output_shapes

: *
valueB *    
М
training/Adam/Variable_2
VariableV2*
shape
: *
shared_name *
dtype0*
_output_shapes

: *
	container 
ў
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2
Щ
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes

: 
b
training/Adam/zeros_3Const*
valueB *    *
dtype0*
_output_shapes
: 
Д
training/Adam/Variable_3
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
’
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
: 
Х
training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
: 
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"        *
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
Ь
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*
_output_shapes

:  
М
training/Adam/Variable_4
VariableV2*
shared_name *
dtype0*
_output_shapes

:  *
	container *
shape
:  
ў
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:  *
use_locking(
Щ
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
_output_shapes

:  *
T0*+
_class!
loc:@training/Adam/Variable_4
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 
Д
training/Adam/Variable_5
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
’
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: *
use_locking(
Х
training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"        *
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
Ь
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*
_output_shapes

:  
М
training/Adam/Variable_6
VariableV2*
shape
:  *
shared_name *
dtype0*
_output_shapes

:  *
	container 
ў
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

:  
Щ
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes

:  
b
training/Adam/zeros_7Const*
valueB *    *
dtype0*
_output_shapes
: 
Д
training/Adam/Variable_7
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
’
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: 
Х
training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
_output_shapes
: *
T0*+
_class!
loc:@training/Adam/Variable_7
v
%training/Adam/zeros_8/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ь
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes

:  
М
training/Adam/Variable_8
VariableV2*
shared_name *
dtype0*
_output_shapes

:  *
	container *
shape
:  
ў
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes

:  
Щ
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes

:  
b
training/Adam/zeros_9Const*
valueB *    *
dtype0*
_output_shapes
: 
Д
training/Adam/Variable_9
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
’
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
: *
use_locking(
Х
training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
: 
w
&training/Adam/zeros_10/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Я
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes

:  
Н
training/Adam/Variable_10
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
Ё
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes

:  
Ь
training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
T0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes

:  
c
training/Adam/zeros_11Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_11
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
ў
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11
Ш
training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
: 
k
training/Adam/zeros_12Const*
valueB *    *
dtype0*
_output_shapes

: 
Н
training/Adam/Variable_12
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
Ё
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12
Ь
training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*
T0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes

: 
c
training/Adam/zeros_13Const*
valueB*    *
dtype0*
_output_shapes
:
Е
training/Adam/Variable_13
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13
Ш
training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_13
k
training/Adam/zeros_14Const*
valueB*    *
dtype0*
_output_shapes

:
Н
training/Adam/Variable_14
VariableV2*
dtype0*
_output_shapes

:*
	container *
shape
:*
shared_name 
Ё
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14
Ь
training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*
_output_shapes

:*
T0*,
_class"
 loc:@training/Adam/Variable_14
c
training/Adam/zeros_15Const*
valueB*    *
dtype0*
_output_shapes
:
Е
training/Adam/Variable_15
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
ў
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
:*
use_locking(
Ш
training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
T0*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
:
k
training/Adam/zeros_16Const*
valueB *    *
dtype0*
_output_shapes

: 
Н
training/Adam/Variable_16
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
Ё
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*
_output_shapes

: *
use_locking(
Ь
training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
_output_shapes

: *
T0*,
_class"
 loc:@training/Adam/Variable_16
c
training/Adam/zeros_17Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_17
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
ў
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_17
w
&training/Adam/zeros_18/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
T0*

index_type0*
_output_shapes

:  
Н
training/Adam/Variable_18
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
Ё
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes

:  
Ь
training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*
_output_shapes

:  
c
training/Adam/zeros_19Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_19
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
ў
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes
: 
w
&training/Adam/zeros_20/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Я
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*

index_type0*
_output_shapes

:  
Н
training/Adam/Variable_20
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
Ё
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*
_output_shapes

:  
Ь
training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
_output_shapes

:  *
T0*,
_class"
 loc:@training/Adam/Variable_20
c
training/Adam/zeros_21Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_21
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
ў
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_21
w
&training/Adam/zeros_22/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"        
a
training/Adam/zeros_22/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Я
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
_output_shapes

:  *
T0*

index_type0
Н
training/Adam/Variable_22
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
Ё
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes

:  *
use_locking(
Ь
training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
_output_shapes

:  *
T0*,
_class"
 loc:@training/Adam/Variable_22
c
training/Adam/zeros_23Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_23
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
ў
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes
: 
w
&training/Adam/zeros_24/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0*
_output_shapes

:  
Н
training/Adam/Variable_24
VariableV2*
shape
:  *
shared_name *
dtype0*
_output_shapes

:  *
	container 
Ё
 training/Adam/Variable_24/AssignAssigntraining/Adam/Variable_24training/Adam/zeros_24*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*
_output_shapes

:  
Ь
training/Adam/Variable_24/readIdentitytraining/Adam/Variable_24*
_output_shapes

:  *
T0*,
_class"
 loc:@training/Adam/Variable_24
c
training/Adam/zeros_25Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_25
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
ў
 training/Adam/Variable_25/AssignAssigntraining/Adam/Variable_25training/Adam/zeros_25*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_25/readIdentitytraining/Adam/Variable_25*
T0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes
: 
k
training/Adam/zeros_26Const*
valueB *    *
dtype0*
_output_shapes

: 
Н
training/Adam/Variable_26
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
Ё
 training/Adam/Variable_26/AssignAssigntraining/Adam/Variable_26training/Adam/zeros_26*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes

: *
use_locking(
Ь
training/Adam/Variable_26/readIdentitytraining/Adam/Variable_26*
T0*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes

: 
c
training/Adam/zeros_27Const*
valueB*    *
dtype0*
_output_shapes
:
Е
training/Adam/Variable_27
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_27/AssignAssigntraining/Adam/Variable_27training/Adam/zeros_27*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_27/readIdentitytraining/Adam/Variable_27*
T0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:
p
&training/Adam/zeros_28/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_28/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_28
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_28/AssignAssigntraining/Adam/Variable_28training/Adam/zeros_28*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_28/readIdentitytraining/Adam/Variable_28*
T0*,
_class"
 loc:@training/Adam/Variable_28*
_output_shapes
:
p
&training/Adam/zeros_29/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_29/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_29Fill&training/Adam/zeros_29/shape_as_tensortraining/Adam/zeros_29/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_29
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_29/AssignAssigntraining/Adam/Variable_29training/Adam/zeros_29*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_29/readIdentitytraining/Adam/Variable_29*
T0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
:
p
&training/Adam/zeros_30/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_30/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ы
training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_30
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_30/AssignAssigntraining/Adam/Variable_30training/Adam/zeros_30*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_30/readIdentitytraining/Adam/Variable_30*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_30
p
&training/Adam/zeros_31/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_31/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_31Fill&training/Adam/zeros_31/shape_as_tensortraining/Adam/zeros_31/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_31
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
ў
 training/Adam/Variable_31/AssignAssigntraining/Adam/Variable_31training/Adam/zeros_31*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_31/readIdentitytraining/Adam/Variable_31*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_31
p
&training/Adam/zeros_32/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_32Fill&training/Adam/zeros_32/shape_as_tensortraining/Adam/zeros_32/Const*
_output_shapes
:*
T0*

index_type0
Е
training/Adam/Variable_32
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
ў
 training/Adam/Variable_32/AssignAssigntraining/Adam/Variable_32training/Adam/zeros_32*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_32/readIdentitytraining/Adam/Variable_32*
T0*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes
:
p
&training/Adam/zeros_33/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_33/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_33Fill&training/Adam/zeros_33/shape_as_tensortraining/Adam/zeros_33/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_33
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
ў
 training/Adam/Variable_33/AssignAssigntraining/Adam/Variable_33training/Adam/zeros_33*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_33*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_33/readIdentitytraining/Adam/Variable_33*
T0*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes
:
p
&training/Adam/zeros_34/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_34Fill&training/Adam/zeros_34/shape_as_tensortraining/Adam/zeros_34/Const*
_output_shapes
:*
T0*

index_type0
Е
training/Adam/Variable_34
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
ў
 training/Adam/Variable_34/AssignAssigntraining/Adam/Variable_34training/Adam/zeros_34*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_34
Ш
training/Adam/Variable_34/readIdentitytraining/Adam/Variable_34*
T0*,
_class"
 loc:@training/Adam/Variable_34*
_output_shapes
:
p
&training/Adam/zeros_35/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_35/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_35Fill&training/Adam/zeros_35/shape_as_tensortraining/Adam/zeros_35/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_35
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
ў
 training/Adam/Variable_35/AssignAssigntraining/Adam/Variable_35training/Adam/zeros_35*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_35*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_35/readIdentitytraining/Adam/Variable_35*
T0*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
:
p
&training/Adam/zeros_36/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_36/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_36Fill&training/Adam/zeros_36/shape_as_tensortraining/Adam/zeros_36/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_36
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_36/AssignAssigntraining/Adam/Variable_36training/Adam/zeros_36*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_36*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_36/readIdentitytraining/Adam/Variable_36*
T0*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
:
p
&training/Adam/zeros_37/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_37/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_37Fill&training/Adam/zeros_37/shape_as_tensortraining/Adam/zeros_37/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_37
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_37/AssignAssigntraining/Adam/Variable_37training/Adam/zeros_37*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_37*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_37/readIdentitytraining/Adam/Variable_37*
T0*,
_class"
 loc:@training/Adam/Variable_37*
_output_shapes
:
p
&training/Adam/zeros_38/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_38/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ы
training/Adam/zeros_38Fill&training/Adam/zeros_38/shape_as_tensortraining/Adam/zeros_38/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_38
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
ў
 training/Adam/Variable_38/AssignAssigntraining/Adam/Variable_38training/Adam/zeros_38*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_38
Ш
training/Adam/Variable_38/readIdentitytraining/Adam/Variable_38*
T0*,
_class"
 loc:@training/Adam/Variable_38*
_output_shapes
:
p
&training/Adam/zeros_39/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_39/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_39Fill&training/Adam/zeros_39/shape_as_tensortraining/Adam/zeros_39/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_39
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_39/AssignAssigntraining/Adam/Variable_39training/Adam/zeros_39*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_39
Ш
training/Adam/Variable_39/readIdentitytraining/Adam/Variable_39*
T0*,
_class"
 loc:@training/Adam/Variable_39*
_output_shapes
:
p
&training/Adam/zeros_40/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_40/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_40Fill&training/Adam/zeros_40/shape_as_tensortraining/Adam/zeros_40/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_40
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_40/AssignAssigntraining/Adam/Variable_40training/Adam/zeros_40*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_40*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_40/readIdentitytraining/Adam/Variable_40*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_40
p
&training/Adam/zeros_41/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_41/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ы
training/Adam/zeros_41Fill&training/Adam/zeros_41/shape_as_tensortraining/Adam/zeros_41/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_41
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
ў
 training/Adam/Variable_41/AssignAssigntraining/Adam/Variable_41training/Adam/zeros_41*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_41*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_41/readIdentitytraining/Adam/Variable_41*
T0*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
:
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes

:
Z
training/Adam/sub_2/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 
О
training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:*
T0
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes

:
u
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_14/read*
T0*
_output_shapes

:
Z
training/Adam/sub_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 
}
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes

:
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
_output_shapes

:*
T0
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes

:
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
 *  А
Е
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0*
_output_shapes

:
П
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
_output_shapes

:*
T0
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes

:
Z
training/Adam/add_3/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
_output_shapes

:*
T0
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes

:
q
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
T0*
_output_shapes

:
»
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

:*
use_locking(
–
training/Adam/Assign_1Assigntraining/Adam/Variable_14training/Adam/add_2*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes

:
Ї
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes
:
Z
training/Adam/sub_5/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 
О
training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:
q
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_15/read*
T0*
_output_shapes
:
Z
training/Adam/sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
:
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
 *  А*
dtype0*
_output_shapes
: 
Б
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes
:
Л
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
T0*
_output_shapes
:
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes
:*
T0
Z
training/Adam/add_6/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
:
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
:
k
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
_output_shapes
:*
T0
 
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
ћ
training/Adam/Assign_4Assigntraining/Adam/Variable_15training/Adam/add_5*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
:
≤
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
u
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*
_output_shapes

: 
Z
training/Adam/sub_8/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 
П
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes

: *
T0
v
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_16/read*
T0*
_output_shapes

: 
Z
training/Adam/sub_9/xConst*
valueB
 *  А?*
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

: 
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes

: 
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes

: 
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

: 
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
 *  А*
dtype0*
_output_shapes
: 
Е
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*
_output_shapes

: 
П
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes

: 
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes

: 
Z
training/Adam/add_9/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes

: 
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes

: 
r
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes

: 
ќ
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

: 
–
training/Adam/Assign_7Assigntraining/Adam/Variable_16training/Adam/add_8*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*
_output_shapes

: 
ї
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
: 
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_17/read*
T0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  А?*
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
: 
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
: 
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
: 
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
: *
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
 *  А*
dtype0*
_output_shapes
: 
В
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes
: 
Л
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
_output_shapes
: *
T0
[
training/Adam/add_12/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes
: *
T0
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
: 
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
_output_shapes
: *
T0
Ћ
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
: 
ќ
training/Adam/Assign_10Assigntraining/Adam/Variable_17training/Adam/add_11*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
: *
use_locking(
і
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
T0*
_output_shapes

:  
[
training/Adam/sub_14/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
_output_shapes

:  *
T0
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:  
v
training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_18/read*
T0*
_output_shapes

:  
[
training/Adam/sub_15/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_4Square4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
_output_shapes

:  *
T0
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:  
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes

:  
[
training/Adam/Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_11Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
З
%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_11*
T0*
_output_shapes

:  
Р
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*
T0*
_output_shapes

:  
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:  
[
training/Adam/add_15/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:  
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes

:  
r
training/Adam/sub_16Subdense_3/kernel/readtraining/Adam/truediv_5*
T0*
_output_shapes

:  
–
training/Adam/Assign_12Assigntraining/Adam/Variable_4training/Adam/add_13*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:  
“
training/Adam/Assign_13Assigntraining/Adam/Variable_18training/Adam/add_14*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes

:  *
use_locking(
Љ
training/Adam/Assign_14Assigndense_3/kerneltraining/Adam/sub_16*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
q
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
_output_shapes
: *
T0
Р
training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
: 
r
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_19/read*
_output_shapes
: *
T0
[
training/Adam/sub_18/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_5Square8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes
: 
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
: 
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_13Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Г
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_13*
T0*
_output_shapes
: 
М
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
_output_shapes
: *
T0
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
: 
[
training/Adam/add_18/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
: 
l
training/Adam/sub_19Subdense_3/bias/readtraining/Adam/truediv_6*
T0*
_output_shapes
: 
ћ
training/Adam/Assign_15Assigntraining/Adam/Variable_5training/Adam/add_16*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
ќ
training/Adam/Assign_16Assigntraining/Adam/Variable_19training/Adam/add_17*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes
: 
і
training/Adam/Assign_17Assigndense_3/biastraining/Adam/sub_19*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
: *
use_locking(
u
training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
T0*
_output_shapes

:  
[
training/Adam/sub_20/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_32Multraining/Adam/sub_204training/Adam/gradients/dense_4/MatMul_grad/MatMul_1*
_output_shapes

:  *
T0
p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*
_output_shapes

:  
v
training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_20/read*
T0*
_output_shapes

:  
[
training/Adam/sub_21/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_6Square4training/Adam/gradients/dense_4/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*
_output_shapes

:  
p
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*
_output_shapes

:  
m
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
_output_shapes

:  *
T0
[
training/Adam/Const_14Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_15Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
З
%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_15*
T0*
_output_shapes

:  
Р
training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
T0*
_output_shapes

:  
d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*
_output_shapes

:  
[
training/Adam/add_21/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*
_output_shapes

:  
w
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
_output_shapes

:  *
T0
r
training/Adam/sub_22Subdense_4/kernel/readtraining/Adam/truediv_7*
T0*
_output_shapes

:  
–
training/Adam/Assign_18Assigntraining/Adam/Variable_6training/Adam/add_19*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6
“
training/Adam/Assign_19Assigntraining/Adam/Variable_20training/Adam/add_20*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20
Љ
training/Adam/Assign_20Assigndense_4/kerneltraining/Adam/sub_22*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(*
_output_shapes

:  
q
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
_output_shapes
: *
T0
Р
training/Adam/mul_37Multraining/Adam/sub_238training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
: *
T0
r
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_21/read*
T0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_7Square8training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
: 
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
_output_shapes
: *
T0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
: 
[
training/Adam/Const_16Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_17Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Г
%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_17*
T0*
_output_shapes
: 
М
training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
_output_shapes
: *
T0
[
training/Adam/add_24/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
_output_shapes
: *
T0
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes
: 
l
training/Adam/sub_25Subdense_4/bias/readtraining/Adam/truediv_8*
T0*
_output_shapes
: 
ћ
training/Adam/Assign_21Assigntraining/Adam/Variable_7training/Adam/add_22*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: 
ќ
training/Adam/Assign_22Assigntraining/Adam/Variable_21training/Adam/add_23*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes
: *
use_locking(
і
training/Adam/Assign_23Assigndense_4/biastraining/Adam/sub_25*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_41MulAdam/beta_1/readtraining/Adam/Variable_8/read*
T0*
_output_shapes

:  
[
training/Adam/sub_26/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_26Subtraining/Adam/sub_26/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_42Multraining/Adam/sub_264training/Adam/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
p
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
T0*
_output_shapes

:  
v
training/Adam/mul_43MulAdam/beta_2/readtraining/Adam/Variable_22/read*
T0*
_output_shapes

:  
[
training/Adam/sub_27/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
training/Adam/sub_27Subtraining/Adam/sub_27/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_8Square4training/Adam/gradients/dense_5/MatMul_grad/MatMul_1*
_output_shapes

:  *
T0
r
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*
_output_shapes

:  
p
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
T0*
_output_shapes

:  
m
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*
_output_shapes

:  
[
training/Adam/Const_18Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_19Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
З
%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_19*
T0*
_output_shapes

:  
Р
training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_18*
T0*
_output_shapes

:  
d
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*
_output_shapes

:  
[
training/Adam/add_27/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*
_output_shapes

:  
w
training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*
_output_shapes

:  
r
training/Adam/sub_28Subdense_5/kernel/readtraining/Adam/truediv_9*
T0*
_output_shapes

:  
–
training/Adam/Assign_24Assigntraining/Adam/Variable_8training/Adam/add_25*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8
“
training/Adam/Assign_25Assigntraining/Adam/Variable_22training/Adam/add_26*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes

:  
Љ
training/Adam/Assign_26Assigndense_5/kerneltraining/Adam/sub_28*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
q
training/Adam/mul_46MulAdam/beta_1/readtraining/Adam/Variable_9/read*
T0*
_output_shapes
: 
[
training/Adam/sub_29/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_29Subtraining/Adam/sub_29/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_47Multraining/Adam/sub_298training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
_output_shapes
: *
T0
r
training/Adam/mul_48MulAdam/beta_2/readtraining/Adam/Variable_23/read*
T0*
_output_shapes
: 
[
training/Adam/sub_30/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
training/Adam/sub_30Subtraining/Adam/sub_30/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_9Square8training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes
: 
l
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
_output_shapes
: *
T0
i
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*
_output_shapes
: 
[
training/Adam/Const_20Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_21Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Д
&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_29training/Adam/Const_21*
_output_shapes
: *
T0
О
training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_20*
T0*
_output_shapes
: 
b
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes
: 
[
training/Adam/add_30/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
o
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*
_output_shapes
: 
t
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
T0*
_output_shapes
: 
m
training/Adam/sub_31Subdense_5/bias/readtraining/Adam/truediv_10*
T0*
_output_shapes
: 
ћ
training/Adam/Assign_27Assigntraining/Adam/Variable_9training/Adam/add_28*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9
ќ
training/Adam/Assign_28Assigntraining/Adam/Variable_23training/Adam/add_29*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
: 
і
training/Adam/Assign_29Assigndense_5/biastraining/Adam/sub_31*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(*
_output_shapes
: 
v
training/Adam/mul_51MulAdam/beta_1/readtraining/Adam/Variable_10/read*
T0*
_output_shapes

:  
[
training/Adam/sub_32/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_32Subtraining/Adam/sub_32/xAdam/beta_1/read*
_output_shapes
: *
T0
Р
training/Adam/mul_52Multraining/Adam/sub_324training/Adam/gradients/dense_6/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
p
training/Adam/add_31Addtraining/Adam/mul_51training/Adam/mul_52*
_output_shapes

:  *
T0
v
training/Adam/mul_53MulAdam/beta_2/readtraining/Adam/Variable_24/read*
T0*
_output_shapes

:  
[
training/Adam/sub_33/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
training/Adam/sub_33Subtraining/Adam/sub_33/xAdam/beta_2/read*
_output_shapes
: *
T0
А
training/Adam/Square_10Square4training/Adam/gradients/dense_6/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
s
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*
T0*
_output_shapes

:  
p
training/Adam/add_32Addtraining/Adam/mul_53training/Adam/mul_54*
T0*
_output_shapes

:  
m
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_31*
T0*
_output_shapes

:  
[
training/Adam/Const_22Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_23Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
И
&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_32training/Adam/Const_23*
T0*
_output_shapes

:  
Т
training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_22*
T0*
_output_shapes

:  
f
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*
_output_shapes

:  *
T0
[
training/Adam/add_33/yConst*
dtype0*
_output_shapes
: *
valueB
 *Хњ÷3
s
training/Adam/add_33Addtraining/Adam/Sqrt_11training/Adam/add_33/y*
T0*
_output_shapes

:  
x
training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_33*
T0*
_output_shapes

:  
s
training/Adam/sub_34Subdense_6/kernel/readtraining/Adam/truediv_11*
T0*
_output_shapes

:  
“
training/Adam/Assign_30Assigntraining/Adam/Variable_10training/Adam/add_31*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes

:  *
use_locking(
“
training/Adam/Assign_31Assigntraining/Adam/Variable_24training/Adam/add_32*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24
Љ
training/Adam/Assign_32Assigndense_6/kerneltraining/Adam/sub_34*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
r
training/Adam/mul_56MulAdam/beta_1/readtraining/Adam/Variable_11/read*
_output_shapes
: *
T0
[
training/Adam/sub_35/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_35Subtraining/Adam/sub_35/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_57Multraining/Adam/sub_358training/Adam/gradients/dense_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_34Addtraining/Adam/mul_56training/Adam/mul_57*
T0*
_output_shapes
: 
r
training/Adam/mul_58MulAdam/beta_2/readtraining/Adam/Variable_25/read*
T0*
_output_shapes
: 
[
training/Adam/sub_36/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
training/Adam/sub_36Subtraining/Adam/sub_36/xAdam/beta_2/read*
T0*
_output_shapes
: 
А
training/Adam/Square_11Square8training/Adam/gradients/dense_6/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
o
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
T0*
_output_shapes
: 
l
training/Adam/add_35Addtraining/Adam/mul_58training/Adam/mul_59*
T0*
_output_shapes
: 
i
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_34*
T0*
_output_shapes
: 
[
training/Adam/Const_24Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_25Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Д
&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_35training/Adam/Const_25*
T0*
_output_shapes
: 
О
training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_24*
T0*
_output_shapes
: 
b
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
_output_shapes
: *
T0
[
training/Adam/add_36/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
o
training/Adam/add_36Addtraining/Adam/Sqrt_12training/Adam/add_36/y*
T0*
_output_shapes
: 
t
training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_36*
T0*
_output_shapes
: 
m
training/Adam/sub_37Subdense_6/bias/readtraining/Adam/truediv_12*
T0*
_output_shapes
: 
ќ
training/Adam/Assign_33Assigntraining/Adam/Variable_11training/Adam/add_34*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
: 
ќ
training/Adam/Assign_34Assigntraining/Adam/Variable_25training/Adam/add_35*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes
: 
і
training/Adam/Assign_35Assigndense_6/biastraining/Adam/sub_37*
use_locking(*
T0*
_class
loc:@dense_6/bias*
validate_shape(*
_output_shapes
: 
v
training/Adam/mul_61MulAdam/beta_1/readtraining/Adam/Variable_12/read*
T0*
_output_shapes

: 
[
training/Adam/sub_38/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_38Subtraining/Adam/sub_38/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_62Multraining/Adam/sub_384training/Adam/gradients/dense_7/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
p
training/Adam/add_37Addtraining/Adam/mul_61training/Adam/mul_62*
T0*
_output_shapes

: 
v
training/Adam/mul_63MulAdam/beta_2/readtraining/Adam/Variable_26/read*
T0*
_output_shapes

: 
[
training/Adam/sub_39/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
training/Adam/sub_39Subtraining/Adam/sub_39/xAdam/beta_2/read*
_output_shapes
: *
T0
А
training/Adam/Square_12Square4training/Adam/gradients/dense_7/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
s
training/Adam/mul_64Multraining/Adam/sub_39training/Adam/Square_12*
_output_shapes

: *
T0
p
training/Adam/add_38Addtraining/Adam/mul_63training/Adam/mul_64*
_output_shapes

: *
T0
m
training/Adam/mul_65Multraining/Adam/multraining/Adam/add_37*
T0*
_output_shapes

: 
[
training/Adam/Const_26Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_27Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
И
&training/Adam/clip_by_value_13/MinimumMinimumtraining/Adam/add_38training/Adam/Const_27*
_output_shapes

: *
T0
Т
training/Adam/clip_by_value_13Maximum&training/Adam/clip_by_value_13/Minimumtraining/Adam/Const_26*
T0*
_output_shapes

: 
f
training/Adam/Sqrt_13Sqrttraining/Adam/clip_by_value_13*
T0*
_output_shapes

: 
[
training/Adam/add_39/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
s
training/Adam/add_39Addtraining/Adam/Sqrt_13training/Adam/add_39/y*
T0*
_output_shapes

: 
x
training/Adam/truediv_13RealDivtraining/Adam/mul_65training/Adam/add_39*
T0*
_output_shapes

: 
s
training/Adam/sub_40Subdense_7/kernel/readtraining/Adam/truediv_13*
T0*
_output_shapes

: 
“
training/Adam/Assign_36Assigntraining/Adam/Variable_12training/Adam/add_37*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*
_output_shapes

: 
“
training/Adam/Assign_37Assigntraining/Adam/Variable_26training/Adam/add_38*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26
Љ
training/Adam/Assign_38Assigndense_7/kerneltraining/Adam/sub_40*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@dense_7/kernel
r
training/Adam/mul_66MulAdam/beta_1/readtraining/Adam/Variable_13/read*
T0*
_output_shapes
:
[
training/Adam/sub_41/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
training/Adam/sub_41Subtraining/Adam/sub_41/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_67Multraining/Adam/sub_418training/Adam/gradients/dense_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_40Addtraining/Adam/mul_66training/Adam/mul_67*
_output_shapes
:*
T0
r
training/Adam/mul_68MulAdam/beta_2/readtraining/Adam/Variable_27/read*
T0*
_output_shapes
:
[
training/Adam/sub_42/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_42Subtraining/Adam/sub_42/xAdam/beta_2/read*
T0*
_output_shapes
: 
А
training/Adam/Square_13Square8training/Adam/gradients/dense_7/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_69Multraining/Adam/sub_42training/Adam/Square_13*
T0*
_output_shapes
:
l
training/Adam/add_41Addtraining/Adam/mul_68training/Adam/mul_69*
_output_shapes
:*
T0
i
training/Adam/mul_70Multraining/Adam/multraining/Adam/add_40*
T0*
_output_shapes
:
[
training/Adam/Const_28Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_29Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Д
&training/Adam/clip_by_value_14/MinimumMinimumtraining/Adam/add_41training/Adam/Const_29*
_output_shapes
:*
T0
О
training/Adam/clip_by_value_14Maximum&training/Adam/clip_by_value_14/Minimumtraining/Adam/Const_28*
T0*
_output_shapes
:
b
training/Adam/Sqrt_14Sqrttraining/Adam/clip_by_value_14*
T0*
_output_shapes
:
[
training/Adam/add_42/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
o
training/Adam/add_42Addtraining/Adam/Sqrt_14training/Adam/add_42/y*
_output_shapes
:*
T0
t
training/Adam/truediv_14RealDivtraining/Adam/mul_70training/Adam/add_42*
T0*
_output_shapes
:
m
training/Adam/sub_43Subdense_7/bias/readtraining/Adam/truediv_14*
T0*
_output_shapes
:
ќ
training/Adam/Assign_39Assigntraining/Adam/Variable_13training/Adam/add_40*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
:*
use_locking(
ќ
training/Adam/Assign_40Assigntraining/Adam/Variable_27training/Adam/add_41*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:*
use_locking(
і
training/Adam/Assign_41Assigndense_7/biastraining/Adam/sub_43*
use_locking(*
T0*
_class
loc:@dense_7/bias*
validate_shape(*
_output_shapes
:
Н	
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_2^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_24^training/Adam/Assign_25^training/Adam/Assign_26^training/Adam/Assign_27^training/Adam/Assign_28^training/Adam/Assign_29^training/Adam/Assign_3^training/Adam/Assign_30^training/Adam/Assign_31^training/Adam/Assign_32^training/Adam/Assign_33^training/Adam/Assign_34^training/Adam/Assign_35^training/Adam/Assign_36^training/Adam/Assign_37^training/Adam/Assign_38^training/Adam/Assign_39^training/Adam/Assign_4^training/Adam/Assign_40^training/Adam/Assign_41^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9
2

group_depsNoOp	^loss/mul^metrics/acc/Mean_1
Ж
IsVariableInitializedIsVariableInitializeddense_1/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel
Д
IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_4IsVariableInitializeddense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_5IsVariableInitializeddense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_6IsVariableInitializeddense_4/kernel*!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_7IsVariableInitializeddense_4/bias*
_class
loc:@dense_4/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_8IsVariableInitializeddense_5/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_5/kernel
Д
IsVariableInitialized_9IsVariableInitializeddense_5/bias*
_class
loc:@dense_5/bias*
dtype0*
_output_shapes
: 
Й
IsVariableInitialized_10IsVariableInitializeddense_6/kernel*!
_class
loc:@dense_6/kernel*
dtype0*
_output_shapes
: 
Е
IsVariableInitialized_11IsVariableInitializeddense_6/bias*
_class
loc:@dense_6/bias*
dtype0*
_output_shapes
: 
Й
IsVariableInitialized_12IsVariableInitializeddense_7/kernel*!
_class
loc:@dense_7/kernel*
dtype0*
_output_shapes
: 
Е
IsVariableInitialized_13IsVariableInitializeddense_7/bias*
_class
loc:@dense_7/bias*
dtype0*
_output_shapes
: 
Л
IsVariableInitialized_14IsVariableInitializedAdam/iterations*
dtype0	*
_output_shapes
: *"
_class
loc:@Adam/iterations
{
IsVariableInitialized_15IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 
Г
IsVariableInitialized_16IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
Г
IsVariableInitialized_17IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
Б
IsVariableInitialized_18IsVariableInitialized
Adam/decay*
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay
Щ
IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_1*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_1
Э
IsVariableInitialized_21IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_22IsVariableInitializedtraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_23IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_24IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_25IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_26IsVariableInitializedtraining/Adam/Variable_7*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_7
Э
IsVariableInitialized_27IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_28IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_29IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_30IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_31IsVariableInitializedtraining/Adam/Variable_12*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_12
Я
IsVariableInitialized_32IsVariableInitializedtraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_33IsVariableInitializedtraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_34IsVariableInitializedtraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_35IsVariableInitializedtraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_36IsVariableInitializedtraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_37IsVariableInitializedtraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_38IsVariableInitializedtraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_39IsVariableInitializedtraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_40IsVariableInitializedtraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_41IsVariableInitializedtraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_42IsVariableInitializedtraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_43IsVariableInitializedtraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_44IsVariableInitializedtraining/Adam/Variable_25*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_25
Я
IsVariableInitialized_45IsVariableInitializedtraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_46IsVariableInitializedtraining/Adam/Variable_27*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_27
Я
IsVariableInitialized_47IsVariableInitializedtraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_48IsVariableInitializedtraining/Adam/Variable_29*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_29
Я
IsVariableInitialized_49IsVariableInitializedtraining/Adam/Variable_30*,
_class"
 loc:@training/Adam/Variable_30*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_50IsVariableInitializedtraining/Adam/Variable_31*,
_class"
 loc:@training/Adam/Variable_31*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_51IsVariableInitializedtraining/Adam/Variable_32*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_32
Я
IsVariableInitialized_52IsVariableInitializedtraining/Adam/Variable_33*,
_class"
 loc:@training/Adam/Variable_33*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_53IsVariableInitializedtraining/Adam/Variable_34*,
_class"
 loc:@training/Adam/Variable_34*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_54IsVariableInitializedtraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_55IsVariableInitializedtraining/Adam/Variable_36*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_36
Я
IsVariableInitialized_56IsVariableInitializedtraining/Adam/Variable_37*,
_class"
 loc:@training/Adam/Variable_37*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_57IsVariableInitializedtraining/Adam/Variable_38*,
_class"
 loc:@training/Adam/Variable_38*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_58IsVariableInitializedtraining/Adam/Variable_39*,
_class"
 loc:@training/Adam/Variable_39*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_59IsVariableInitializedtraining/Adam/Variable_40*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_40
Я
IsVariableInitialized_60IsVariableInitializedtraining/Adam/Variable_41*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_41
и
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign^dense_4/bias/Assign^dense_4/kernel/Assign^dense_5/bias/Assign^dense_5/kernel/Assign^dense_6/bias/Assign^dense_6/kernel/Assign^dense_7/bias/Assign^dense_7/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign!^training/Adam/Variable_36/Assign!^training/Adam/Variable_37/Assign!^training/Adam/Variable_38/Assign!^training/Adam/Variable_39/Assign ^training/Adam/Variable_4/Assign!^training/Adam/Variable_40/Assign!^training/Adam/Variable_41/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign"&МО™18     Lƒ	дp.
F„AJ§р
ћ ® 
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
2	АР
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
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
Р
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
ref"dtypeА
is_initialized
"
dtypetypeШ
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
Н
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
2	Р
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
Р
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
Н
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
2	И
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
М
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
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype*1.14.02v1.14.0-rc1-22-gaf24dc9ґ®
p
dense_1_inputPlaceholder*
shape:€€€€€€€€€*
dtype0*'
_output_shapes
:€€€€€€€€€
m
dense_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *МнЊ*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *Мн>*
dtype0*
_output_shapes
: 
®
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
T0*
dtype0*
seed2БиЕ*
_output_shapes

:*
seed±€е)
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
М
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

:
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes

:
В
dense_1/kernel
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
Љ
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
{
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
Z
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_1/bias
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
©
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
q
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes
:*
T0
Ф
dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( 
Ж
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
W
dense_1/ReluReludense_1/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Р
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
В
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
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
dropout_1/cond/mul/SwitchSwitchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
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
И
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed±€е)*
T0*
dtype0*
seed2кџґ*'
_output_shapes
:€€€€€€€€€
І
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:€€€€€€€€€
і
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  А?*
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
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
©
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*'
_output_shapes
:€€€€€€€€€
З
dropout_1/cond/dropout/mulMuldropout_1/cond/muldropout_1/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€
Щ
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*

DstT0*'
_output_shapes
:€€€€€€€€€*

SrcT0
*
Truncate( 
О
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*'
_output_shapes
:€€€€€€€€€*
T0
≠
dropout_1/cond/Switch_1Switchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*
T0*
_class
loc:@dense_1/Relu
С
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
m
dense_2/random_uniform/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *dF£Њ*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *dF£>*
dtype0*
_output_shapes
: 
®
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
seed2лОі*
_output_shapes

: *
seed±€е)*
T0
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0
М
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes

: 
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

: 
В
dense_2/kernel
VariableV2*
dtype0*
	container *
_output_shapes

: *
shape
: *
shared_name 
Љ
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
{
dense_2/kernel/readIdentitydense_2/kernel*
_output_shapes

: *
T0*!
_class
loc:@dense_2/kernel
Z
dense_2/ConstConst*
dtype0*
_output_shapes
: *
valueB *    
x
dense_2/bias
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
©
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
: 
Ы
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€ *
transpose_b( *
T0
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:€€€€€€€€€ *
T0*
data_formatNHWC
W
dense_2/ReluReludense_2/BiasAdd*'
_output_shapes
:€€€€€€€€€ *
T0
В
dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

s
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_2/cond/mul/SwitchSwitchdense_2/Reludropout_2/cond/pred_id*
T0*
_class
loc:@dense_2/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
z
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
seed2Иђµ*'
_output_shapes
:€€€€€€€€€ *
seed±€е)*
T0*
dtype0
І
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
¬
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*'
_output_shapes
:€€€€€€€€€ *
T0
і
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€ 
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_2/cond/dropout/truediv/xConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_2/cond/dropout/truedivRealDiv dropout_2/cond/dropout/truediv/xdropout_2/cond/dropout/sub*
_output_shapes
: *
T0
©
#dropout_2/cond/dropout/GreaterEqualGreaterEqual%dropout_2/cond/dropout/random_uniformdropout_2/cond/dropout/rate*
T0*'
_output_shapes
:€€€€€€€€€ 
З
dropout_2/cond/dropout/mulMuldropout_2/cond/muldropout_2/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€ 
Щ
dropout_2/cond/dropout/CastCast#dropout_2/cond/dropout/GreaterEqual*
Truncate( *

DstT0*'
_output_shapes
:€€€€€€€€€ *

SrcT0

О
dropout_2/cond/dropout/mul_1Muldropout_2/cond/dropout/muldropout_2/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€ 
≠
dropout_2/cond/Switch_1Switchdense_2/Reludropout_2/cond/pred_id*
T0*
_class
loc:@dense_2/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
С
dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul_1*
N*)
_output_shapes
:€€€€€€€€€ : *
T0
m
dense_3/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
_
dense_3/random_uniform/minConst*
valueB
 *qƒЬЊ*
dtype0*
_output_shapes
: 
_
dense_3/random_uniform/maxConst*
valueB
 *qƒЬ>*
dtype0*
_output_shapes
: 
®
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
T0*
dtype0*
seed2ВЃе*
_output_shapes

:  *
seed±€е)
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
_output_shapes
: *
T0
М
dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub*
T0*
_output_shapes

:  
~
dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
T0*
_output_shapes

:  
В
dense_3/kernel
VariableV2*
dtype0*
	container *
_output_shapes

:  *
shape
:  *
shared_name 
Љ
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
{
dense_3/kernel/readIdentitydense_3/kernel*
_output_shapes

:  *
T0*!
_class
loc:@dense_3/kernel
Z
dense_3/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_3/bias
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
©
dense_3/bias/AssignAssigndense_3/biasdense_3/Const*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
: 
q
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes
: 
Ы
dense_3/MatMulMatMuldropout_2/cond/Mergedense_3/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€ *
transpose_b( 
Ж
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*'
_output_shapes
:€€€€€€€€€ *
T0*
data_formatNHWC
W
dense_3/ReluReludense_3/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€ 
В
dropout_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
_output_shapes
: *
T0

c
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_3/cond/mul/yConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
~
dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_3/cond/mul/SwitchSwitchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
z
dropout_3/cond/dropout/rateConst^dropout_3/cond/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
n
dropout_3/cond/dropout/ShapeShapedropout_3/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
ј
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
T0*
dtype0*
seed2вМм*'
_output_shapes
:€€€€€€€€€ *
seed±€е)
І
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*'
_output_shapes
:€€€€€€€€€ *
T0
і
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€ 
{
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_3/cond/dropout/subSubdropout_3/cond/dropout/sub/xdropout_3/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_3/cond/dropout/truediv/xConst^dropout_3/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_3/cond/dropout/truedivRealDiv dropout_3/cond/dropout/truediv/xdropout_3/cond/dropout/sub*
T0*
_output_shapes
: 
©
#dropout_3/cond/dropout/GreaterEqualGreaterEqual%dropout_3/cond/dropout/random_uniformdropout_3/cond/dropout/rate*'
_output_shapes
:€€€€€€€€€ *
T0
З
dropout_3/cond/dropout/mulMuldropout_3/cond/muldropout_3/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€ 
Щ
dropout_3/cond/dropout/CastCast#dropout_3/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *

DstT0*'
_output_shapes
:€€€€€€€€€ 
О
dropout_3/cond/dropout/mul_1Muldropout_3/cond/dropout/muldropout_3/cond/dropout/Cast*'
_output_shapes
:€€€€€€€€€ *
T0
≠
dropout_3/cond/Switch_1Switchdense_3/Reludropout_3/cond/pred_id*
_class
loc:@dense_3/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0
С
dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul_1*)
_output_shapes
:€€€€€€€€€ : *
T0*
N
m
dense_4/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
_
dense_4/random_uniform/minConst*
valueB
 *qƒЬЊ*
dtype0*
_output_shapes
: 
_
dense_4/random_uniform/maxConst*
valueB
 *qƒЬ>*
dtype0*
_output_shapes
: 
®
$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
T0*
dtype0*
seed2ЙќХ*
_output_shapes

:  *
seed±€е)
z
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
_output_shapes
: *
T0
М
dense_4/random_uniform/mulMul$dense_4/random_uniform/RandomUniformdense_4/random_uniform/sub*
_output_shapes

:  *
T0
~
dense_4/random_uniformAdddense_4/random_uniform/muldense_4/random_uniform/min*
T0*
_output_shapes

:  
В
dense_4/kernel
VariableV2*
shape
:  *
shared_name *
dtype0*
	container *
_output_shapes

:  
Љ
dense_4/kernel/AssignAssigndense_4/kerneldense_4/random_uniform*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*!
_class
loc:@dense_4/kernel
{
dense_4/kernel/readIdentitydense_4/kernel*
_output_shapes

:  *
T0*!
_class
loc:@dense_4/kernel
Z
dense_4/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_4/bias
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
©
dense_4/bias/AssignAssigndense_4/biasdense_4/Const*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
: 
q
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias*
_output_shapes
: 
Ы
dense_4/MatMulMatMuldropout_3/cond/Mergedense_4/kernel/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€ 
Ж
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
W
dense_4/ReluReludense_4/BiasAdd*'
_output_shapes
:€€€€€€€€€ *
T0
В
dropout_4/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
_output_shapes
: *
T0

c
dropout_4/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_4/cond/mul/yConst^dropout_4/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_4/cond/mul/SwitchSwitchdense_4/Reludropout_4/cond/pred_id*
T0*
_class
loc:@dense_4/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
z
dropout_4/cond/dropout/rateConst^dropout_4/cond/switch_t*
_output_shapes
: *
valueB
 *   ?*
dtype0
n
dropout_4/cond/dropout/ShapeShapedropout_4/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
И
)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  А?
ј
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
T0*
dtype0*
seed2©ЖЉ*'
_output_shapes
:€€€€€€€€€ *
seed±€е)
І
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*'
_output_shapes
:€€€€€€€€€ *
T0
і
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€ 
{
dropout_4/cond/dropout/sub/xConst^dropout_4/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_4/cond/dropout/subSubdropout_4/cond/dropout/sub/xdropout_4/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_4/cond/dropout/truediv/xConst^dropout_4/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_4/cond/dropout/truedivRealDiv dropout_4/cond/dropout/truediv/xdropout_4/cond/dropout/sub*
T0*
_output_shapes
: 
©
#dropout_4/cond/dropout/GreaterEqualGreaterEqual%dropout_4/cond/dropout/random_uniformdropout_4/cond/dropout/rate*'
_output_shapes
:€€€€€€€€€ *
T0
З
dropout_4/cond/dropout/mulMuldropout_4/cond/muldropout_4/cond/dropout/truediv*'
_output_shapes
:€€€€€€€€€ *
T0
Щ
dropout_4/cond/dropout/CastCast#dropout_4/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *

DstT0*'
_output_shapes
:€€€€€€€€€ 
О
dropout_4/cond/dropout/mul_1Muldropout_4/cond/dropout/muldropout_4/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€ 
≠
dropout_4/cond/Switch_1Switchdense_4/Reludropout_4/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_4/Relu
С
dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul_1*)
_output_shapes
:€€€€€€€€€ : *
T0*
N
m
dense_5/random_uniform/shapeConst*
_output_shapes
:*
valueB"        *
dtype0
_
dense_5/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *qƒЬЊ
_
dense_5/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *qƒЬ>
®
$dense_5/random_uniform/RandomUniformRandomUniformdense_5/random_uniform/shape*
seed2оХи*
_output_shapes

:  *
seed±€е)*
T0*
dtype0
z
dense_5/random_uniform/subSubdense_5/random_uniform/maxdense_5/random_uniform/min*
T0*
_output_shapes
: 
М
dense_5/random_uniform/mulMul$dense_5/random_uniform/RandomUniformdense_5/random_uniform/sub*
_output_shapes

:  *
T0
~
dense_5/random_uniformAdddense_5/random_uniform/muldense_5/random_uniform/min*
T0*
_output_shapes

:  
В
dense_5/kernel
VariableV2*
shape
:  *
shared_name *
dtype0*
	container *
_output_shapes

:  
Љ
dense_5/kernel/AssignAssigndense_5/kerneldense_5/random_uniform*!
_class
loc:@dense_5/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
{
dense_5/kernel/readIdentitydense_5/kernel*
_output_shapes

:  *
T0*!
_class
loc:@dense_5/kernel
Z
dense_5/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_5/bias
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
©
dense_5/bias/AssignAssigndense_5/biasdense_5/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense_5/bias
q
dense_5/bias/readIdentitydense_5/bias*
_output_shapes
: *
T0*
_class
loc:@dense_5/bias
Ы
dense_5/MatMulMatMuldropout_4/cond/Mergedense_5/kernel/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€ *
transpose_b( *
T0
Ж
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*'
_output_shapes
:€€€€€€€€€ *
T0*
data_formatNHWC
W
dense_5/ReluReludense_5/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€ 
В
dropout_5/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_5/cond/switch_tIdentitydropout_5/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_5/cond/switch_fIdentitydropout_5/cond/Switch*
_output_shapes
: *
T0

c
dropout_5/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_5/cond/mul/yConst^dropout_5/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_5/cond/mulMuldropout_5/cond/mul/Switch:1dropout_5/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_5/cond/mul/SwitchSwitchdense_5/Reludropout_5/cond/pred_id*
_class
loc:@dense_5/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0
z
dropout_5/cond/dropout/rateConst^dropout_5/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_5/cond/dropout/ShapeShapedropout_5/cond/mul*
T0*
out_type0*
_output_shapes
:
И
)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
И
)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*
seed±€е)*
T0*
dtype0*
seed2фƒз*'
_output_shapes
:€€€€€€€€€ 
І
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:€€€€€€€€€ 
і
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*'
_output_shapes
:€€€€€€€€€ *
T0
{
dropout_5/cond/dropout/sub/xConst^dropout_5/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_5/cond/dropout/subSubdropout_5/cond/dropout/sub/xdropout_5/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_5/cond/dropout/truediv/xConst^dropout_5/cond/switch_t*
_output_shapes
: *
valueB
 *  А?*
dtype0
И
dropout_5/cond/dropout/truedivRealDiv dropout_5/cond/dropout/truediv/xdropout_5/cond/dropout/sub*
T0*
_output_shapes
: 
©
#dropout_5/cond/dropout/GreaterEqualGreaterEqual%dropout_5/cond/dropout/random_uniformdropout_5/cond/dropout/rate*
T0*'
_output_shapes
:€€€€€€€€€ 
З
dropout_5/cond/dropout/mulMuldropout_5/cond/muldropout_5/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€ 
Щ
dropout_5/cond/dropout/CastCast#dropout_5/cond/dropout/GreaterEqual*

SrcT0
*
Truncate( *

DstT0*'
_output_shapes
:€€€€€€€€€ 
О
dropout_5/cond/dropout/mul_1Muldropout_5/cond/dropout/muldropout_5/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€ 
≠
dropout_5/cond/Switch_1Switchdense_5/Reludropout_5/cond/pred_id*
T0*
_class
loc:@dense_5/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
С
dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:€€€€€€€€€ : 
m
dense_6/random_uniform/shapeConst*
_output_shapes
:*
valueB"        *
dtype0
_
dense_6/random_uniform/minConst*
valueB
 *qƒЬЊ*
dtype0*
_output_shapes
: 
_
dense_6/random_uniform/maxConst*
valueB
 *qƒЬ>*
dtype0*
_output_shapes
: 
®
$dense_6/random_uniform/RandomUniformRandomUniformdense_6/random_uniform/shape*
T0*
dtype0*
seed2 „Р*
_output_shapes

:  *
seed±€е)
z
dense_6/random_uniform/subSubdense_6/random_uniform/maxdense_6/random_uniform/min*
_output_shapes
: *
T0
М
dense_6/random_uniform/mulMul$dense_6/random_uniform/RandomUniformdense_6/random_uniform/sub*
T0*
_output_shapes

:  
~
dense_6/random_uniformAdddense_6/random_uniform/muldense_6/random_uniform/min*
T0*
_output_shapes

:  
В
dense_6/kernel
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes

:  *
shape
:  
Љ
dense_6/kernel/AssignAssigndense_6/kerneldense_6/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(*
_output_shapes

:  
{
dense_6/kernel/readIdentitydense_6/kernel*
T0*!
_class
loc:@dense_6/kernel*
_output_shapes

:  
Z
dense_6/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
dense_6/bias
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
©
dense_6/bias/AssignAssigndense_6/biasdense_6/Const*
use_locking(*
T0*
_class
loc:@dense_6/bias*
validate_shape(*
_output_shapes
: 
q
dense_6/bias/readIdentitydense_6/bias*
T0*
_class
loc:@dense_6/bias*
_output_shapes
: 
Ы
dense_6/MatMulMatMuldropout_5/cond/Mergedense_6/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€ *
transpose_b( 
Ж
dense_6/BiasAddBiasAdddense_6/MatMuldense_6/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
W
dense_6/ReluReludense_6/BiasAdd*'
_output_shapes
:€€€€€€€€€ *
T0
В
dropout_6/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_6/cond/switch_tIdentitydropout_6/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_6/cond/switch_fIdentitydropout_6/cond/Switch*
_output_shapes
: *
T0

c
dropout_6/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
s
dropout_6/cond/mul/yConst^dropout_6/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
dropout_6/cond/mulMuldropout_6/cond/mul/Switch:1dropout_6/cond/mul/y*
T0*'
_output_shapes
:€€€€€€€€€ 
ѓ
dropout_6/cond/mul/SwitchSwitchdense_6/Reludropout_6/cond/pred_id*
T0*
_class
loc:@dense_6/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
z
dropout_6/cond/dropout/rateConst^dropout_6/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
n
dropout_6/cond/dropout/ShapeShapedropout_6/cond/mul*
_output_shapes
:*
T0*
out_type0
И
)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ј
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*
T0*
dtype0*
seed2Џ°и*'
_output_shapes
:€€€€€€€€€ *
seed±€е)
І
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
¬
)dropout_6/cond/dropout/random_uniform/mulMul3dropout_6/cond/dropout/random_uniform/RandomUniform)dropout_6/cond/dropout/random_uniform/sub*'
_output_shapes
:€€€€€€€€€ *
T0
і
%dropout_6/cond/dropout/random_uniformAdd)dropout_6/cond/dropout/random_uniform/mul)dropout_6/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:€€€€€€€€€ 
{
dropout_6/cond/dropout/sub/xConst^dropout_6/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
}
dropout_6/cond/dropout/subSubdropout_6/cond/dropout/sub/xdropout_6/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_6/cond/dropout/truediv/xConst^dropout_6/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
И
dropout_6/cond/dropout/truedivRealDiv dropout_6/cond/dropout/truediv/xdropout_6/cond/dropout/sub*
_output_shapes
: *
T0
©
#dropout_6/cond/dropout/GreaterEqualGreaterEqual%dropout_6/cond/dropout/random_uniformdropout_6/cond/dropout/rate*'
_output_shapes
:€€€€€€€€€ *
T0
З
dropout_6/cond/dropout/mulMuldropout_6/cond/muldropout_6/cond/dropout/truediv*
T0*'
_output_shapes
:€€€€€€€€€ 
Щ
dropout_6/cond/dropout/CastCast#dropout_6/cond/dropout/GreaterEqual*
Truncate( *

DstT0*'
_output_shapes
:€€€€€€€€€ *

SrcT0

О
dropout_6/cond/dropout/mul_1Muldropout_6/cond/dropout/muldropout_6/cond/dropout/Cast*
T0*'
_output_shapes
:€€€€€€€€€ 
≠
dropout_6/cond/Switch_1Switchdense_6/Reludropout_6/cond/pred_id*
_class
loc:@dense_6/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0
С
dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul_1*
T0*
N*)
_output_shapes
:€€€€€€€€€ : 
m
dense_7/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
_
dense_7/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *A„Њ
_
dense_7/random_uniform/maxConst*
valueB
 *A„>*
dtype0*
_output_shapes
: 
І
$dense_7/random_uniform/RandomUniformRandomUniformdense_7/random_uniform/shape*
dtype0*
seed2ќйN*
_output_shapes

: *
seed±€е)*
T0
z
dense_7/random_uniform/subSubdense_7/random_uniform/maxdense_7/random_uniform/min*
_output_shapes
: *
T0
М
dense_7/random_uniform/mulMul$dense_7/random_uniform/RandomUniformdense_7/random_uniform/sub*
T0*
_output_shapes

: 
~
dense_7/random_uniformAdddense_7/random_uniform/muldense_7/random_uniform/min*
T0*
_output_shapes

: 
В
dense_7/kernel
VariableV2*
shape
: *
shared_name *
dtype0*
	container *
_output_shapes

: 
Љ
dense_7/kernel/AssignAssigndense_7/kerneldense_7/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_7/kernel*
validate_shape(*
_output_shapes

: 
{
dense_7/kernel/readIdentitydense_7/kernel*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes

: 
Z
dense_7/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_7/bias
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
©
dense_7/bias/AssignAssigndense_7/biasdense_7/Const*
use_locking(*
T0*
_class
loc:@dense_7/bias*
validate_shape(*
_output_shapes
:
q
dense_7/bias/readIdentitydense_7/bias*
_output_shapes
:*
T0*
_class
loc:@dense_7/bias
Ы
dense_7/MatMulMatMuldropout_6/cond/Mergedense_7/kernel/read*
T0*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b( 
Ж
dense_7/BiasAddBiasAdddense_7/MatMuldense_7/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
]
dense_7/SoftmaxSoftmaxdense_7/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
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
dtype0	*
	container *
_output_shapes
: 
Њ
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	
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
 *oГ:*
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
Ю
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
VariableV2*
	container *
_output_shapes
: *
shape: *
shared_name *
dtype0
Ѓ
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
 *wЊ?*
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
Ѓ
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
Adam/decay/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
n

Adam/decay
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
™
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(
g
Adam/decay/readIdentity
Adam/decay*
_class
loc:@Adam/decay*
_output_shapes
: *
T0
Г
dense_7_targetPlaceholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
q
dense_7_sample_weightsPlaceholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
\
loss/dense_7_loss/ConstConst*
_output_shapes
: *
valueB
 *Хњ÷3*
dtype0
\
loss/dense_7_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
loss/dense_7_loss/subSubloss/dense_7_loss/sub/xloss/dense_7_loss/Const*
T0*
_output_shapes
: 
М
'loss/dense_7_loss/clip_by_value/MinimumMinimumdense_7/Softmaxloss/dense_7_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€
Ю
loss/dense_7_loss/clip_by_valueMaximum'loss/dense_7_loss/clip_by_value/Minimumloss/dense_7_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€
^
loss/dense_7_loss/sub_1/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
М
loss/dense_7_loss/sub_1Subloss/dense_7_loss/sub_1/xloss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
Р
loss/dense_7_loss/truedivRealDivloss/dense_7_loss/clip_by_valueloss/dense_7_loss/sub_1*'
_output_shapes
:€€€€€€€€€*
T0
i
loss/dense_7_loss/LogLogloss/dense_7_loss/truediv*
T0*'
_output_shapes
:€€€€€€€€€
А
*loss/dense_7_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_7_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
±
,loss/dense_7_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_7_loss/Log*loss/dense_7_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
”
&loss/dense_7_loss/logistic_loss/SelectSelect,loss/dense_7_loss/logistic_loss/GreaterEqualloss/dense_7_loss/Log*loss/dense_7_loss/logistic_loss/zeros_like*'
_output_shapes
:€€€€€€€€€*
T0
s
#loss/dense_7_loss/logistic_loss/NegNegloss/dense_7_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
ќ
(loss/dense_7_loss/logistic_loss/Select_1Select,loss/dense_7_loss/logistic_loss/GreaterEqual#loss/dense_7_loss/logistic_loss/Negloss/dense_7_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
Г
#loss/dense_7_loss/logistic_loss/mulMulloss/dense_7_loss/Logdense_7_target*'
_output_shapes
:€€€€€€€€€*
T0
©
#loss/dense_7_loss/logistic_loss/subSub&loss/dense_7_loss/logistic_loss/Select#loss/dense_7_loss/logistic_loss/mul*
T0*'
_output_shapes
:€€€€€€€€€
Ж
#loss/dense_7_loss/logistic_loss/ExpExp(loss/dense_7_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€*
T0
Е
%loss/dense_7_loss/logistic_loss/Log1pLog1p#loss/dense_7_loss/logistic_loss/Exp*'
_output_shapes
:€€€€€€€€€*
T0
§
loss/dense_7_loss/logistic_lossAdd#loss/dense_7_loss/logistic_loss/sub%loss/dense_7_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:€€€€€€€€€
s
(loss/dense_7_loss/Mean/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
і
loss/dense_7_loss/MeanMeanloss/dense_7_loss/logistic_loss(loss/dense_7_loss/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:€€€€€€€€€
m
*loss/dense_7_loss/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB 
ѓ
loss/dense_7_loss/Mean_1Meanloss/dense_7_loss/Mean*loss/dense_7_loss/Mean_1/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
|
loss/dense_7_loss/mulMulloss/dense_7_loss/Mean_1dense_7_sample_weights*
T0*#
_output_shapes
:€€€€€€€€€
a
loss/dense_7_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
К
loss/dense_7_loss/NotEqualNotEqualdense_7_sample_weightsloss/dense_7_loss/NotEqual/y*
T0*#
_output_shapes
:€€€€€€€€€
З
loss/dense_7_loss/CastCastloss/dense_7_loss/NotEqual*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:€€€€€€€€€
c
loss/dense_7_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
С
loss/dense_7_loss/Mean_2Meanloss/dense_7_loss/Castloss/dense_7_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Е
loss/dense_7_loss/truediv_1RealDivloss/dense_7_loss/mulloss/dense_7_loss/Mean_2*#
_output_shapes
:€€€€€€€€€*
T0
c
loss/dense_7_loss/Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
Ц
loss/dense_7_loss/Mean_3Meanloss/dense_7_loss/truediv_1loss/dense_7_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_7_loss/Mean_3*
T0*
_output_shapes
: 
]
metrics/acc/RoundRounddense_7/Softmax*
T0*'
_output_shapes
:€€€€€€€€€
o
metrics/acc/EqualEqualdense_7_targetmetrics/acc/Round*
T0*'
_output_shapes
:€€€€€€€€€
|
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*'
_output_shapes
:€€€€€€€€€
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Щ
metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:€€€€€€€€€
[
metrics/acc/ConstConst*
_output_shapes
:*
valueB: *
dtype0
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
}
training/Adam/gradients/ShapeConst*
_class
loc:@loss/mul*
valueB *
dtype0*
_output_shapes
: 
Г
!training/Adam/gradients/grad_ys_0Const*
_class
loc:@loss/mul*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ґ
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: 
¶
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_7_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ъ
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ї
Ctraining/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Reshape/shapeConst*+
_class!
loc:@loss/dense_7_loss/Mean_3*
valueB:*
dtype0*
_output_shapes
:
Ъ
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Reshape/shape*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
Tshape0*
_output_shapes
:
√
;training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/ShapeShapeloss/dense_7_loss/truediv_1*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
out_type0*
_output_shapes
:
Ђ
:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/TileTile=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Reshape;training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*#
_output_shapes
:€€€€€€€€€
≈
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape_1Shapeloss/dense_7_loss/truediv_1*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
out_type0*
_output_shapes
:
≠
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape_2Const*+
_class!
loc:@loss/dense_7_loss/Mean_3*
valueB *
dtype0*
_output_shapes
: 
≤
;training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/ConstConst*+
_class!
loc:@loss/dense_7_loss/Mean_3*
valueB: *
dtype0*
_output_shapes
:
©
:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/ProdProd=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape_1;training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Const*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
: 
і
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Const_1Const*+
_class!
loc:@loss/dense_7_loss/Mean_3*
valueB: *
dtype0*
_output_shapes
:
≠
<training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Prod_1Prod=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Shape_2=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Const_1*
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
: 
Ѓ
?training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Maximum/yConst*+
_class!
loc:@loss/dense_7_loss/Mean_3*
value	B :*
dtype0*
_output_shapes
: 
Х
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/MaximumMaximum<training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Prod_1?training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Maximum/y*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
: *
T0
У
>training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Prod=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Maximum*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
_output_shapes
: 
п
:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/CastCast>training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0*+
_class!
loc:@loss/dense_7_loss/Mean_3*
Truncate( 
Ы
=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/truedivRealDiv:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Tile:training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_3
√
>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/ShapeShapeloss/dense_7_loss/mul*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*
out_type0*
_output_shapes
:
≥
@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape_1Const*.
_class$
" loc:@loss/dense_7_loss/truediv_1*
valueB *
dtype0*
_output_shapes
: 
÷
Ntraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1
В
@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/truedivloss/dense_7_loss/Mean_2*#
_output_shapes
:€€€€€€€€€*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1
≈
<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1
µ
@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*
Tshape0
Є
<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/NegNegloss/dense_7_loss/mul*#
_output_shapes
:€€€€€€€€€*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1
Г
Btraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Negloss/dense_7_loss/Mean_2*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€*
T0
Й
Btraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDiv_1loss/dense_7_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
§
<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_7_loss/Mean_3_grad/truedivBtraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*#
_output_shapes
:€€€€€€€€€
≈
>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/BroadcastGradientArgs:1*.
_class$
" loc:@loss/dense_7_loss/truediv_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ѓ
Btraining/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Shape_1*
_output_shapes
: *
T0*.
_class$
" loc:@loss/dense_7_loss/truediv_1*
Tshape0
Ї
8training/Adam/gradients/loss/dense_7_loss/mul_grad/ShapeShapeloss/dense_7_loss/Mean_1*
T0*(
_class
loc:@loss/dense_7_loss/mul*
out_type0*
_output_shapes
:
Ї
:training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape_1Shapedense_7_sample_weights*
T0*(
_class
loc:@loss/dense_7_loss/mul*
out_type0*
_output_shapes
:
Њ
Htraining/Adam/gradients/loss/dense_7_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_7_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
п
6training/Adam/gradients/loss/dense_7_loss/mul_grad/MulMul@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Reshapedense_7_sample_weights*
T0*(
_class
loc:@loss/dense_7_loss/mul*#
_output_shapes
:€€€€€€€€€
©
6training/Adam/gradients/loss/dense_7_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_7_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_7_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_7_loss/mul
Э
:training/Adam/gradients/loss/dense_7_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_7_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape*
T0*(
_class
loc:@loss/dense_7_loss/mul*
Tshape0*#
_output_shapes
:€€€€€€€€€
у
8training/Adam/gradients/loss/dense_7_loss/mul_grad/Mul_1Mulloss/dense_7_loss/Mean_1@training/Adam/gradients/loss/dense_7_loss/truediv_1_grad/Reshape*
T0*(
_class
loc:@loss/dense_7_loss/mul*#
_output_shapes
:€€€€€€€€€
ѓ
8training/Adam/gradients/loss/dense_7_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_7_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_7_loss/mul_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@loss/dense_7_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
£
<training/Adam/gradients/loss/dense_7_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_7_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_7_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_7_loss/mul*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Њ
;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/ShapeShapeloss/dense_7_loss/Mean*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
out_type0*
_output_shapes
:
©
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/SizeConst*+
_class!
loc:@loss/dense_7_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
ш
9training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/addAdd*loss/dense_7_loss/Mean_1/reduction_indices:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: 
М
9training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/modFloorMod9training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/add:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: 
і
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_1Const*+
_class!
loc:@loss/dense_7_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
∞
Atraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range/startConst*+
_class!
loc:@loss/dense_7_loss/Mean_1*
value	B : *
dtype0*
_output_shapes
: 
∞
Atraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range/deltaConst*+
_class!
loc:@loss/dense_7_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
џ
;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/rangeRangeAtraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range/start:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/SizeAtraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range/delta*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
:*

Tidx0
ѓ
@training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Fill/valueConst*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_7_loss/Mean_1*
value	B :
•
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/FillFill=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_1@training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Fill/value*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*

index_type0
†
Ctraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/DynamicStitchDynamicStitch;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/range9training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/mod;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Fill*+
_class!
loc:@loss/dense_7_loss/Mean_1*
N*
_output_shapes
:*
T0
Ѓ
?training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_7_loss/Mean_1*
value	B :
†
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/MaximumMaximumCtraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/DynamicStitch?training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
:
Ш
>training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1
≤
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/ReshapeReshape:training/Adam/gradients/loss/dense_7_loss/mul_grad/ReshapeCtraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/DynamicStitch*#
_output_shapes
:€€€€€€€€€*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
Tshape0
Ѓ
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Reshape>training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/floordiv*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*#
_output_shapes
:€€€€€€€€€
ј
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_2Shapeloss/dense_7_loss/Mean*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
out_type0*
_output_shapes
:
¬
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_3Shapeloss/dense_7_loss/Mean_1*
_output_shapes
:*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
out_type0
≤
;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/ConstConst*+
_class!
loc:@loss/dense_7_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
©
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/ProdProd=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_2;training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1
і
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Const_1Const*+
_class!
loc:@loss/dense_7_loss/Mean_1*
valueB: *
dtype0*
_output_shapes
:
≠
<training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Prod_1Prod=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Shape_3=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Const_1*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: *
	keep_dims( *

Tidx0
∞
Atraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum_1/yConst*+
_class!
loc:@loss/dense_7_loss/Mean_1*
value	B :*
dtype0*
_output_shapes
: 
Щ
?training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum_1Maximum<training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Prod_1Atraining/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum_1/y*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1
Ч
@training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/floordiv_1FloorDiv:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Prod?training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Maximum_1*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
_output_shapes
: 
с
:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/CastCast@training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss/dense_7_loss/Mean_1*
Truncate( *

DstT0*
_output_shapes
: 
Ы
=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Tile:training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/Cast*
T0*+
_class!
loc:@loss/dense_7_loss/Mean_1*#
_output_shapes
:€€€€€€€€€
√
9training/Adam/gradients/loss/dense_7_loss/Mean_grad/ShapeShapeloss/dense_7_loss/logistic_loss*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
out_type0*
_output_shapes
:
•
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_7_loss/Mean*
value	B :
о
7training/Adam/gradients/loss/dense_7_loss/Mean_grad/addAdd(loss/dense_7_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
В
7training/Adam/gradients/loss/dense_7_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_7_loss/Mean_grad/add8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
©
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_1Const*)
_class
loc:@loss/dense_7_loss/Mean*
valueB *
dtype0*
_output_shapes
: 
ђ
?training/Adam/gradients/loss/dense_7_loss/Mean_grad/range/startConst*)
_class
loc:@loss/dense_7_loss/Mean*
value	B : *
dtype0*
_output_shapes
: 
ђ
?training/Adam/gradients/loss/dense_7_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_7_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
—
9training/Adam/gradients/loss/dense_7_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_7_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_7_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
:*

Tidx0
Ђ
>training/Adam/gradients/loss/dense_7_loss/Mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_7_loss/Mean*
value	B :
Ы
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_7_loss/Mean_grad/Fill/value*)
_class
loc:@loss/dense_7_loss/Mean*

index_type0*
_output_shapes
: *
T0
Ф
Atraining/Adam/gradients/loss/dense_7_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_7_loss/Mean_grad/range7training/Adam/gradients/loss/dense_7_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_7_loss/Mean*
N*
_output_shapes
:*
T0
™
=training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum/yConst*)
_class
loc:@loss/dense_7_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
Ш
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_7_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum/y*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_7_loss/Mean
Р
<training/Adam/gradients/loss/dense_7_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
:
Љ
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/ReshapeReshape=training/Adam/gradients/loss/dense_7_loss/Mean_1_grad/truedivAtraining/Adam/gradients/loss/dense_7_loss/Mean_grad/DynamicStitch*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
Tshape0
≥
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_7_loss/Mean_grad/floordiv*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0*)
_class
loc:@loss/dense_7_loss/Mean
≈
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_2Shapeloss/dense_7_loss/logistic_loss*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
out_type0
Љ
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_3Shapeloss/dense_7_loss/Mean*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
out_type0*
_output_shapes
:
Ѓ
9training/Adam/gradients/loss/dense_7_loss/Mean_grad/ConstConst*
_output_shapes
:*)
_class
loc:@loss/dense_7_loss/Mean*
valueB: *
dtype0
°
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_7_loss/Mean_grad/Const*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
∞
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_7_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
•
:training/Adam/gradients/loss/dense_7_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_7_loss/Mean_grad/Const_1*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
ђ
?training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum_1/yConst*)
_class
loc:@loss/dense_7_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
С
=training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_7_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
П
>training/Adam/gradients/loss/dense_7_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_7_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_7_loss/Mean*
_output_shapes
: 
л
8training/Adam/gradients/loss/dense_7_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_7_loss/Mean_grad/floordiv_1*

SrcT0*)
_class
loc:@loss/dense_7_loss/Mean*
Truncate( *

DstT0*
_output_shapes
: 
Ч
;training/Adam/gradients/loss/dense_7_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_7_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_7_loss/Mean*'
_output_shapes
:€€€€€€€€€
ў
Btraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ShapeShape#loss/dense_7_loss/logistic_loss/sub*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
out_type0*
_output_shapes
:*
T0
Ё
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Shape_1Shape%loss/dense_7_loss/logistic_loss/Log1p*
T0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
out_type0*
_output_shapes
:
ж
Rtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ћ
@training/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/dense_7_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/BroadcastGradientArgs*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
…
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
Tshape0*'
_output_shapes
:€€€€€€€€€
–
Btraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Sum_1Sum;training/Adam/gradients/loss/dense_7_loss/Mean_grad/truedivTtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/BroadcastGradientArgs:1*
T0*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
_output_shapes
:*
	keep_dims( *

Tidx0
ѕ
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Shape_1*2
_class(
&$loc:@loss/dense_7_loss/logistic_loss*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
д
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_7_loss/logistic_loss/Select*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
out_type0
г
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_7_loss/logistic_loss/mul*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
out_type0*
_output_shapes
:
ц
Vtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Shape_1*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
б
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
_output_shapes
:*
	keep_dims( *

Tidx0
ў
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
Tshape0
е
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
_output_shapes
:*
	keep_dims( *

Tidx0
о
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Sum_1*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
_output_shapes
:
Ё
Jtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Shape_1*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/sub*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Р
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Reshape_1*8
_class.
,*loc:@loss/dense_7_loss/logistic_loss/Log1p*
valueB
 *  А?*
dtype0*
_output_shapes
: 
®
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/addAddHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/add/x#loss/dense_7_loss/logistic_loss/Exp*
T0*8
_class.
,*loc:@loss/dense_7_loss/logistic_loss/Log1p*'
_output_shapes
:€€€€€€€€€
П
Mtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/add*
T0*8
_class.
,*loc:@loss/dense_7_loss/logistic_loss/Log1p*'
_output_shapes
:€€€€€€€€€
–
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/Reciprocal*8
_class.
,*loc:@loss/dense_7_loss/logistic_loss/Log1p*'
_output_shapes
:€€€€€€€€€*
T0
я
Ntraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_7_loss/Log*
T0*9
_class/
-+loc:@loss/dense_7_loss/logistic_loss/Select*'
_output_shapes
:€€€€€€€€€
Й
Jtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_7_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/zeros_like*
T0*9
_class/
-+loc:@loss/dense_7_loss/logistic_loss/Select*'
_output_shapes
:€€€€€€€€€
Л
Ltraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_7_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Reshape*
T0*9
_class/
-+loc:@loss/dense_7_loss/logistic_loss/Select*'
_output_shapes
:€€€€€€€€€
”
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_7_loss/Log*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
out_type0
ќ
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Shape_1Shapedense_7_target*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
out_type0*
_output_shapes
:
ц
Vtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/ShapeHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Shape_1*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
С
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/MulMulJtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Reshape_1dense_7_target*'
_output_shapes
:€€€€€€€€€*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul
б
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/SumSumDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/MulVtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
ў
Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
Tshape0
Ъ
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_7_loss/LogJtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/sub_grad/Reshape_1*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*'
_output_shapes
:€€€€€€€€€*
T0
з
Ftraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
_output_shapes
:
и
Jtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/mul*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ґ
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Log1p_grad/mul#loss/dense_7_loss/logistic_loss/Exp*'
_output_shapes
:€€€€€€€€€*
T0*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/Exp
с
Ptraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_7_loss/logistic_loss/Neg*
T0*;
_class1
/-loc:@loss/dense_7_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€
Л
Ltraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_7_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/zeros_like*
T0*;
_class1
/-loc:@loss/dense_7_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€
Н
Ntraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_7_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Exp_grad/mul*
T0*;
_class1
/-loc:@loss/dense_7_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€
Г
Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Neg_grad/NegNegLtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/Select*6
_class,
*(loc:@loss/dense_7_loss/logistic_loss/Neg*'
_output_shapes
:€€€€€€€€€*
T0
∆
training/Adam/gradients/AddNAddNJtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_grad/SelectHtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/mul_grad/ReshapeNtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Select_1_grad/Select_1Dtraining/Adam/gradients/loss/dense_7_loss/logistic_loss/Neg_grad/Neg*
T0*9
_class/
-+loc:@loss/dense_7_loss/logistic_loss/Select*
N*'
_output_shapes
:€€€€€€€€€
б
=training/Adam/gradients/loss/dense_7_loss/Log_grad/Reciprocal
Reciprocalloss/dense_7_loss/truediv^training/Adam/gradients/AddN*(
_class
loc:@loss/dense_7_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0
ц
6training/Adam/gradients/loss/dense_7_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/dense_7_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_7_loss/Log*'
_output_shapes
:€€€€€€€€€
…
<training/Adam/gradients/loss/dense_7_loss/truediv_grad/ShapeShapeloss/dense_7_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
out_type0*
_output_shapes
:
√
>training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape_1Shapeloss/dense_7_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
out_type0*
_output_shapes
:
ќ
Ltraining/Adam/gradients/loss/dense_7_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ъ
>training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_7_loss/Log_grad/mulloss/dense_7_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*'
_output_shapes
:€€€€€€€€€
љ
:training/Adam/gradients/loss/dense_7_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_7_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
_output_shapes
:
±
>training/Adam/gradients/loss/dense_7_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_7_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
Tshape0*'
_output_shapes
:€€€€€€€€€
¬
:training/Adam/gradients/loss/dense_7_loss/truediv_grad/NegNegloss/dense_7_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*'
_output_shapes
:€€€€€€€€€
А
@training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_7_loss/truediv_grad/Negloss/dense_7_loss/sub_1*'
_output_shapes
:€€€€€€€€€*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv
Ж
@training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDiv_1loss/dense_7_loss/sub_1*'
_output_shapes
:€€€€€€€€€*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv
Ы
:training/Adam/gradients/loss/dense_7_loss/truediv_grad/mulMul6training/Adam/gradients/loss/dense_7_loss/Log_grad/mul@training/Adam/gradients/loss/dense_7_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*'
_output_shapes
:€€€€€€€€€
љ
<training/Adam/gradients/loss/dense_7_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_7_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_7_loss/truediv_grad/BroadcastGradientArgs:1*,
_class"
 loc:@loss/dense_7_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ј
@training/Adam/gradients/loss/dense_7_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_7_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_7_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
Tshape0*'
_output_shapes
:€€€€€€€€€
©
:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/ShapeConst**
_class 
loc:@loss/dense_7_loss/sub_1*
valueB *
dtype0*
_output_shapes
: 
«
<training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape_1Shapeloss/dense_7_loss/clip_by_value**
_class 
loc:@loss/dense_7_loss/sub_1*
out_type0*
_output_shapes
:*
T0
∆
Jtraining/Adam/gradients/loss/dense_7_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_7_loss/sub_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
є
8training/Adam/gradients/loss/dense_7_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/dense_7_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/dense_7_loss/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@loss/dense_7_loss/sub_1*
_output_shapes
:
Ш
<training/Adam/gradients/loss/dense_7_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Sum:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape*
T0**
_class 
loc:@loss/dense_7_loss/sub_1*
Tshape0*
_output_shapes
: 
љ
:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_7_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_7_loss/sub_1_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@loss/dense_7_loss/sub_1*
_output_shapes
:*
	keep_dims( *

Tidx0
 
8training/Adam/gradients/loss/dense_7_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Sum_1*
_output_shapes
:*
T0**
_class 
loc:@loss/dense_7_loss/sub_1
≠
>training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_7_loss/sub_1*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
training/Adam/gradients/AddN_1AddN>training/Adam/gradients/loss/dense_7_loss/truediv_grad/Reshape>training/Adam/gradients/loss/dense_7_loss/sub_1_grad/Reshape_1*
T0*,
_class"
 loc:@loss/dense_7_loss/truediv*
N*'
_output_shapes
:€€€€€€€€€
Ё
Btraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/ShapeShape'loss/dense_7_loss/clip_by_value/Minimum*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
out_type0*
_output_shapes
:
ї
Dtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_1Const*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
÷
Dtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
out_type0*
_output_shapes
:
Ѕ
Htraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
valueB
 *    
“
Btraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zeros/Const*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*

index_type0*'
_output_shapes
:€€€€€€€€€
Б
Itraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_7_loss/clip_by_value/Minimumloss/dense_7_loss/Const*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
ж
Rtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value
в
Ctraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
‘
@training/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
…
Dtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
Tshape0*'
_output_shapes
:€€€€€€€€€
д
Etraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/zerostraining/Adam/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
Џ
Btraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value
Њ
Ftraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_7_loss/clip_by_value*
Tshape0*
_output_shapes
: 
’
Jtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/ShapeShapedense_7/Softmax*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:
Ћ
Ltraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
valueB *
dtype0
М
Ltraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:
—
Ptraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zeros/ConstConst*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
т
Jtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*

index_type0*'
_output_shapes
:€€€€€€€€€
с
Ntraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_7/Softmaxloss/dense_7_loss/sub*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
Ж
Ztraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
•
Ktraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
ф
Htraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
_output_shapes
:
й
Ltraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:€€€€€€€€€
І
Mtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_7_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
ъ
Jtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum
ё
Ntraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_7_loss/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 
м
0training/Adam/gradients/dense_7/Softmax_grad/mulMulLtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Reshapedense_7/Softmax*
T0*"
_class
loc:@dense_7/Softmax*'
_output_shapes
:€€€€€€€€€
±
Btraining/Adam/gradients/dense_7/Softmax_grad/Sum/reduction_indicesConst*"
_class
loc:@dense_7/Softmax*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
†
0training/Adam/gradients/dense_7/Softmax_grad/SumSum0training/Adam/gradients/dense_7/Softmax_grad/mulBtraining/Adam/gradients/dense_7/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*
	keep_dims(*

Tidx0*
T0*"
_class
loc:@dense_7/Softmax
Н
0training/Adam/gradients/dense_7/Softmax_grad/subSubLtraining/Adam/gradients/loss/dense_7_loss/clip_by_value/Minimum_grad/Reshape0training/Adam/gradients/dense_7/Softmax_grad/Sum*
T0*"
_class
loc:@dense_7/Softmax*'
_output_shapes
:€€€€€€€€€
“
2training/Adam/gradients/dense_7/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_7/Softmax_grad/subdense_7/Softmax*"
_class
loc:@dense_7/Softmax*'
_output_shapes
:€€€€€€€€€*
T0
џ
8training/Adam/gradients/dense_7/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_7/Softmax_grad/mul_1*
T0*"
_class
loc:@dense_7/BiasAdd*
data_formatNHWC*
_output_shapes
:
А
2training/Adam/gradients/dense_7/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_7/Softmax_grad/mul_1dense_7/kernel/read*
transpose_b(*
T0*!
_class
loc:@dense_7/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€ 
ъ
4training/Adam/gradients/dense_7/MatMul_grad/MatMul_1MatMuldropout_6/cond/Merge2training/Adam/gradients/dense_7/Softmax_grad/mul_1*
transpose_b( *
T0*!
_class
loc:@dense_7/MatMul*
transpose_a(*
_output_shapes

: 
щ
;training/Adam/gradients/dropout_6/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_7/MatMul_grad/MatMuldropout_6/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*!
_class
loc:@dense_7/MatMul
і
training/Adam/gradients/SwitchSwitchdense_6/Reludropout_6/cond/pred_id*
T0*
_class
loc:@dense_6/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
°
 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
T0*
_class
loc:@dense_6/Relu*'
_output_shapes
:€€€€€€€€€ 
†
training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
T0*
_class
loc:@dense_6/Relu*
out_type0*
_output_shapes
:
ђ
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
_class
loc:@dense_6/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
–
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*
_class
loc:@dense_6/Relu*

index_type0*'
_output_shapes
:€€€€€€€€€ 
Б
>training/Adam/gradients/dropout_6/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_6/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*)
_output_shapes
:€€€€€€€€€ : *
T0*
_class
loc:@dense_6/Relu*
N
 
?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/ShapeShapedropout_6/cond/dropout/mul*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Shape_1Shapedropout_6/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Џ
Otraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1
Г
=training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_6/cond/Merge_grad/cond_grad:1dropout_6/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
≈
=training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
_output_shapes
:
љ
Atraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
Tshape0
Д
?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Mul_1Muldropout_6/cond/dropout/mul=training/Adam/gradients/dropout_6/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Ћ
?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
_output_shapes
:
√
Ctraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_6/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/ShapeShapedropout_6/cond/mul*
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*
out_type0*
_output_shapes
:
±
?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *-
_class#
!loc:@dropout_6/cond/dropout/mul*
valueB 
“
Mtraining/Adam/gradients/dropout_6/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape_1*-
_class#
!loc:@dropout_6/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Ж
;training/Adam/gradients/dropout_6/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Reshapedropout_6/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
љ
;training/Adam/gradients/dropout_6/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_6/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_6/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul
µ
?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
ь
=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Mul_1Muldropout_6/cond/mulAtraining/Adam/gradients/dropout_6/cond/dropout/mul_1_grad/Reshape*-
_class#
!loc:@dropout_6/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ *
T0
√
=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_6/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
™
Atraining/Adam/gradients/dropout_6/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_6/cond/dropout/mul*
Tshape0*
_output_shapes
: 
Ј
5training/Adam/gradients/dropout_6/cond/mul_grad/ShapeShapedropout_6/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_6/cond/mul*
out_type0*
_output_shapes
:
°
7training/Adam/gradients/dropout_6/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_6/cond/mul*
valueB *
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_6/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_6/cond/mul_grad/Shape7training/Adam/gradients/dropout_6/cond/mul_grad/Shape_1*%
_class
loc:@dropout_6/cond/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
к
3training/Adam/gradients/dropout_6/cond/mul_grad/MulMul?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Reshapedropout_6/cond/mul/y*
T0*%
_class
loc:@dropout_6/cond/mul*'
_output_shapes
:€€€€€€€€€ 
Э
3training/Adam/gradients/dropout_6/cond/mul_grad/SumSum3training/Adam/gradients/dropout_6/cond/mul_grad/MulEtraining/Adam/gradients/dropout_6/cond/mul_grad/BroadcastGradientArgs*%
_class
loc:@dropout_6/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Х
7training/Adam/gradients/dropout_6/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_6/cond/mul_grad/Sum5training/Adam/gradients/dropout_6/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_6/cond/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
у
5training/Adam/gradients/dropout_6/cond/mul_grad/Mul_1Muldropout_6/cond/mul/Switch:1?training/Adam/gradients/dropout_6/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_6/cond/mul*'
_output_shapes
:€€€€€€€€€ 
£
5training/Adam/gradients/dropout_6/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_6/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_6/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_6/cond/mul*
_output_shapes
:
К
9training/Adam/gradients/dropout_6/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_6/cond/mul_grad/Sum_17training/Adam/gradients/dropout_6/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_6/cond/mul*
Tshape0*
_output_shapes
: 
ґ
 training/Adam/gradients/Switch_1Switchdense_6/Reludropout_6/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_6/Relu
£
"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
T0*
_class
loc:@dense_6/Relu*'
_output_shapes
:€€€€€€€€€ 
†
training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
T0*
_class
loc:@dense_6/Relu*
out_type0*
_output_shapes
:
∞
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
_class
loc:@dense_6/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_6/Relu*

index_type0
Б
@training/Adam/gradients/dropout_6/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_17training/Adam/gradients/dropout_6/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_6/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
Д
training/Adam/gradients/AddN_2AddN>training/Adam/gradients/dropout_6/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_6/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_6/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_6/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_2dense_6/Relu*
T0*
_class
loc:@dense_6/Relu*'
_output_shapes
:€€€€€€€€€ 
џ
8training/Adam/gradients/dense_6/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_6/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_6/BiasAdd*
data_formatNHWC*
_output_shapes
: 
А
2training/Adam/gradients/dense_6/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_6/Relu_grad/ReluGraddense_6/kernel/read*!
_class
loc:@dense_6/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€ *
transpose_b(*
T0
ъ
4training/Adam/gradients/dense_6/MatMul_grad/MatMul_1MatMuldropout_5/cond/Merge2training/Adam/gradients/dense_6/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_6/MatMul*
transpose_a(*
_output_shapes

:  *
transpose_b( 
щ
;training/Adam/gradients/dropout_5/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_6/MatMul_grad/MatMuldropout_5/cond/pred_id*
T0*!
_class
loc:@dense_6/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
ґ
 training/Adam/gradients/Switch_2Switchdense_5/Reludropout_5/cond/pred_id*
_class
loc:@dense_5/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0
•
"training/Adam/gradients/Identity_2Identity"training/Adam/gradients/Switch_2:1*
_class
loc:@dense_5/Relu*'
_output_shapes
:€€€€€€€€€ *
T0
Ґ
training/Adam/gradients/Shape_3Shape"training/Adam/gradients/Switch_2:1*
T0*
_class
loc:@dense_5/Relu*
out_type0*
_output_shapes
:
∞
%training/Adam/gradients/zeros_2/ConstConst#^training/Adam/gradients/Identity_2*
dtype0*
_output_shapes
: *
_class
loc:@dense_5/Relu*
valueB
 *    
‘
training/Adam/gradients/zeros_2Filltraining/Adam/gradients/Shape_3%training/Adam/gradients/zeros_2/Const*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_5/Relu*

index_type0
Г
>training/Adam/gradients/dropout_5/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_5/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_2*)
_output_shapes
:€€€€€€€€€ : *
T0*
_class
loc:@dense_5/Relu*
N
 
?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/ShapeShapedropout_5/cond/dropout/mul*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Shape_1Shapedropout_5/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Џ
Otraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Г
=training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_5/cond/Merge_grad/cond_grad:1dropout_5/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
≈
=training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
_output_shapes
:
љ
Atraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Shape*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
Д
?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Mul_1Muldropout_5/cond/dropout/mul=training/Adam/gradients/dropout_5/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Ћ
?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
_output_shapes
:
√
Ctraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_5/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/ShapeShapedropout_5/cond/mul*
_output_shapes
:*
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*
out_type0
±
?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape_1Const*
_output_shapes
: *-
_class#
!loc:@dropout_5/cond/dropout/mul*
valueB *
dtype0
“
Mtraining/Adam/gradients/dropout_5/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_5/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Reshapedropout_5/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
љ
;training/Adam/gradients/dropout_5/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_5/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_5/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*
_output_shapes
:
µ
?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*
Tshape0
ь
=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Mul_1Muldropout_5/cond/mulAtraining/Adam/gradients/dropout_5/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
√
=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_5/cond/dropout/mul_grad/BroadcastGradientArgs:1*-
_class#
!loc:@dropout_5/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
™
Atraining/Adam/gradients/dropout_5/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0*-
_class#
!loc:@dropout_5/cond/dropout/mul*
Tshape0
Ј
5training/Adam/gradients/dropout_5/cond/mul_grad/ShapeShapedropout_5/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_5/cond/mul*
out_type0*
_output_shapes
:
°
7training/Adam/gradients/dropout_5/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_5/cond/mul*
valueB *
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_5/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_5/cond/mul_grad/Shape7training/Adam/gradients/dropout_5/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_5/cond/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
3training/Adam/gradients/dropout_5/cond/mul_grad/MulMul?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Reshapedropout_5/cond/mul/y*
T0*%
_class
loc:@dropout_5/cond/mul*'
_output_shapes
:€€€€€€€€€ 
Э
3training/Adam/gradients/dropout_5/cond/mul_grad/SumSum3training/Adam/gradients/dropout_5/cond/mul_grad/MulEtraining/Adam/gradients/dropout_5/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_5/cond/mul
Х
7training/Adam/gradients/dropout_5/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_5/cond/mul_grad/Sum5training/Adam/gradients/dropout_5/cond/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*%
_class
loc:@dropout_5/cond/mul*
Tshape0
у
5training/Adam/gradients/dropout_5/cond/mul_grad/Mul_1Muldropout_5/cond/mul/Switch:1?training/Adam/gradients/dropout_5/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_5/cond/mul*'
_output_shapes
:€€€€€€€€€ 
£
5training/Adam/gradients/dropout_5/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_5/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_5/cond/mul_grad/BroadcastGradientArgs:1*
T0*%
_class
loc:@dropout_5/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
К
9training/Adam/gradients/dropout_5/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_5/cond/mul_grad/Sum_17training/Adam/gradients/dropout_5/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_5/cond/mul*
Tshape0*
_output_shapes
: 
ґ
 training/Adam/gradients/Switch_3Switchdense_5/Reludropout_5/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_5/Relu
£
"training/Adam/gradients/Identity_3Identity training/Adam/gradients/Switch_3*
T0*
_class
loc:@dense_5/Relu*'
_output_shapes
:€€€€€€€€€ 
†
training/Adam/gradients/Shape_4Shape training/Adam/gradients/Switch_3*
T0*
_class
loc:@dense_5/Relu*
out_type0*
_output_shapes
:
∞
%training/Adam/gradients/zeros_3/ConstConst#^training/Adam/gradients/Identity_3*
_class
loc:@dense_5/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_3Filltraining/Adam/gradients/Shape_4%training/Adam/gradients/zeros_3/Const*
T0*
_class
loc:@dense_5/Relu*

index_type0*'
_output_shapes
:€€€€€€€€€ 
Б
@training/Adam/gradients/dropout_5/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_37training/Adam/gradients/dropout_5/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_5/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
Д
training/Adam/gradients/AddN_3AddN>training/Adam/gradients/dropout_5/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_5/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_5/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_5/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_3dense_5/Relu*
T0*
_class
loc:@dense_5/Relu*'
_output_shapes
:€€€€€€€€€ 
џ
8training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_5/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_5/BiasAdd*
data_formatNHWC*
_output_shapes
: 
А
2training/Adam/gradients/dense_5/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_5/Relu_grad/ReluGraddense_5/kernel/read*!
_class
loc:@dense_5/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€ *
transpose_b(*
T0
ъ
4training/Adam/gradients/dense_5/MatMul_grad/MatMul_1MatMuldropout_4/cond/Merge2training/Adam/gradients/dense_5/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes

:  *
transpose_b( *
T0*!
_class
loc:@dense_5/MatMul
щ
;training/Adam/gradients/dropout_4/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_5/MatMul_grad/MatMuldropout_4/cond/pred_id*
T0*!
_class
loc:@dense_5/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
ґ
 training/Adam/gradients/Switch_4Switchdense_4/Reludropout_4/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_4/Relu
•
"training/Adam/gradients/Identity_4Identity"training/Adam/gradients/Switch_4:1*
T0*
_class
loc:@dense_4/Relu*'
_output_shapes
:€€€€€€€€€ 
Ґ
training/Adam/gradients/Shape_5Shape"training/Adam/gradients/Switch_4:1*
T0*
_class
loc:@dense_4/Relu*
out_type0*
_output_shapes
:
∞
%training/Adam/gradients/zeros_4/ConstConst#^training/Adam/gradients/Identity_4*
_class
loc:@dense_4/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_4Filltraining/Adam/gradients/Shape_5%training/Adam/gradients/zeros_4/Const*
T0*
_class
loc:@dense_4/Relu*

index_type0*'
_output_shapes
:€€€€€€€€€ 
Г
>training/Adam/gradients/dropout_4/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_4/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_4*
N*)
_output_shapes
:€€€€€€€€€ : *
T0*
_class
loc:@dense_4/Relu
 
?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/ShapeShapedropout_4/cond/dropout/mul*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Shape_1Shapedropout_4/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Џ
Otraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1
Г
=training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_4/cond/Merge_grad/cond_grad:1dropout_4/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
≈
=training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1
љ
Atraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Shape*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€ *
T0
Д
?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Mul_1Muldropout_4/cond/dropout/mul=training/Adam/gradients/dropout_4/cond/Merge_grad/cond_grad:1*'
_output_shapes
:€€€€€€€€€ *
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1
Ћ
?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
√
Ctraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_4/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/ShapeShapedropout_4/cond/mul*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
out_type0*
_output_shapes
:
±
?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape_1Const*-
_class#
!loc:@dropout_4/cond/dropout/mul*
valueB *
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul
Ж
;training/Adam/gradients/dropout_4/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Reshapedropout_4/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
љ
;training/Adam/gradients/dropout_4/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_4/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
µ
?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
ь
=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Mul_1Muldropout_4/cond/mulAtraining/Adam/gradients/dropout_4/cond/dropout/mul_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€ *
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul
√
=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul
™
Atraining/Adam/gradients/dropout_4/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
Tshape0
Ј
5training/Adam/gradients/dropout_4/cond/mul_grad/ShapeShapedropout_4/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_4/cond/mul*
out_type0*
_output_shapes
:
°
7training/Adam/gradients/dropout_4/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_4/cond/mul*
valueB *
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_4/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_4/cond/mul_grad/Shape7training/Adam/gradients/dropout_4/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_4/cond/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
3training/Adam/gradients/dropout_4/cond/mul_grad/MulMul?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Reshapedropout_4/cond/mul/y*'
_output_shapes
:€€€€€€€€€ *
T0*%
_class
loc:@dropout_4/cond/mul
Э
3training/Adam/gradients/dropout_4/cond/mul_grad/SumSum3training/Adam/gradients/dropout_4/cond/mul_grad/MulEtraining/Adam/gradients/dropout_4/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_4/cond/mul*
_output_shapes
:
Х
7training/Adam/gradients/dropout_4/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_4/cond/mul_grad/Sum5training/Adam/gradients/dropout_4/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_4/cond/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
у
5training/Adam/gradients/dropout_4/cond/mul_grad/Mul_1Muldropout_4/cond/mul/Switch:1?training/Adam/gradients/dropout_4/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_4/cond/mul*'
_output_shapes
:€€€€€€€€€ 
£
5training/Adam/gradients/dropout_4/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_4/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_4/cond/mul_grad/BroadcastGradientArgs:1*
T0*%
_class
loc:@dropout_4/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
К
9training/Adam/gradients/dropout_4/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_4/cond/mul_grad/Sum_17training/Adam/gradients/dropout_4/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_4/cond/mul*
Tshape0*
_output_shapes
: 
ґ
 training/Adam/gradients/Switch_5Switchdense_4/Reludropout_4/cond/pred_id*
T0*
_class
loc:@dense_4/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
£
"training/Adam/gradients/Identity_5Identity training/Adam/gradients/Switch_5*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_4/Relu
†
training/Adam/gradients/Shape_6Shape training/Adam/gradients/Switch_5*
T0*
_class
loc:@dense_4/Relu*
out_type0*
_output_shapes
:
∞
%training/Adam/gradients/zeros_5/ConstConst#^training/Adam/gradients/Identity_5*
dtype0*
_output_shapes
: *
_class
loc:@dense_4/Relu*
valueB
 *    
‘
training/Adam/gradients/zeros_5Filltraining/Adam/gradients/Shape_6%training/Adam/gradients/zeros_5/Const*
T0*
_class
loc:@dense_4/Relu*

index_type0*'
_output_shapes
:€€€€€€€€€ 
Б
@training/Adam/gradients/dropout_4/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_57training/Adam/gradients/dropout_4/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_4/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
Д
training/Adam/gradients/AddN_4AddN>training/Adam/gradients/dropout_4/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_4/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_4/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_4/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_4dense_4/Relu*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_4/Relu
џ
8training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_4/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_4/BiasAdd*
data_formatNHWC*
_output_shapes
: 
А
2training/Adam/gradients/dense_4/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_4/Relu_grad/ReluGraddense_4/kernel/read*
T0*!
_class
loc:@dense_4/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€ *
transpose_b(
ъ
4training/Adam/gradients/dense_4/MatMul_grad/MatMul_1MatMuldropout_3/cond/Merge2training/Adam/gradients/dense_4/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes

:  *
transpose_b( *
T0*!
_class
loc:@dense_4/MatMul
щ
;training/Adam/gradients/dropout_3/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_4/MatMul_grad/MatMuldropout_3/cond/pred_id*
T0*!
_class
loc:@dense_4/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
ґ
 training/Adam/gradients/Switch_6Switchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
•
"training/Adam/gradients/Identity_6Identity"training/Adam/gradients/Switch_6:1*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_3/Relu
Ґ
training/Adam/gradients/Shape_7Shape"training/Adam/gradients/Switch_6:1*
_class
loc:@dense_3/Relu*
out_type0*
_output_shapes
:*
T0
∞
%training/Adam/gradients/zeros_6/ConstConst#^training/Adam/gradients/Identity_6*
_class
loc:@dense_3/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_6Filltraining/Adam/gradients/Shape_7%training/Adam/gradients/zeros_6/Const*
_class
loc:@dense_3/Relu*

index_type0*'
_output_shapes
:€€€€€€€€€ *
T0
Г
>training/Adam/gradients/dropout_3/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_3/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_6*
_class
loc:@dense_3/Relu*
N*)
_output_shapes
:€€€€€€€€€ : *
T0
 
?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/ShapeShapedropout_3/cond/dropout/mul*
_output_shapes
:*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
out_type0
Ќ
Atraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Shape_1Shapedropout_3/cond/dropout/Cast*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
out_type0*
_output_shapes
:*
T0
Џ
Otraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Г
=training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_3/cond/Merge_grad/cond_grad:1dropout_3/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
≈
=training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
_output_shapes
:
љ
Atraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Shape*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
Д
?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Mul_1Muldropout_3/cond/dropout/mul=training/Adam/gradients/dropout_3/cond/Merge_grad/cond_grad:1*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ 
Ћ
?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
_output_shapes
:*
	keep_dims( *

Tidx0
√
Ctraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_3/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
Њ
=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/ShapeShapedropout_3/cond/mul*-
_class#
!loc:@dropout_3/cond/dropout/mul*
out_type0*
_output_shapes
:*
T0
±
?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1Const*-
_class#
!loc:@dropout_3/cond/dropout/mul*
valueB *
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_3/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Reshapedropout_3/cond/dropout/truediv*-
_class#
!loc:@dropout_3/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ *
T0
љ
;training/Adam/gradients/dropout_3/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_3/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
µ
?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
ь
=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Muldropout_3/cond/mulAtraining/Adam/gradients/dropout_3/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
√
=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
_output_shapes
:
™
Atraining/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
Tshape0
Ј
5training/Adam/gradients/dropout_3/cond/mul_grad/ShapeShapedropout_3/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_3/cond/mul*
out_type0*
_output_shapes
:
°
7training/Adam/gradients/dropout_3/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_3/cond/mul*
valueB *
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_3/cond/mul_grad/Shape7training/Adam/gradients/dropout_3/cond/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*%
_class
loc:@dropout_3/cond/mul
к
3training/Adam/gradients/dropout_3/cond/mul_grad/MulMul?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshapedropout_3/cond/mul/y*
T0*%
_class
loc:@dropout_3/cond/mul*'
_output_shapes
:€€€€€€€€€ 
Э
3training/Adam/gradients/dropout_3/cond/mul_grad/SumSum3training/Adam/gradients/dropout_3/cond/mul_grad/MulEtraining/Adam/gradients/dropout_3/cond/mul_grad/BroadcastGradientArgs*%
_class
loc:@dropout_3/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Х
7training/Adam/gradients/dropout_3/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_3/cond/mul_grad/Sum5training/Adam/gradients/dropout_3/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_3/cond/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
у
5training/Adam/gradients/dropout_3/cond/mul_grad/Mul_1Muldropout_3/cond/mul/Switch:1?training/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_3/cond/mul*'
_output_shapes
:€€€€€€€€€ 
£
5training/Adam/gradients/dropout_3/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_3/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_3/cond/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_3/cond/mul
К
9training/Adam/gradients/dropout_3/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_3/cond/mul_grad/Sum_17training/Adam/gradients/dropout_3/cond/mul_grad/Shape_1*
_output_shapes
: *
T0*%
_class
loc:@dropout_3/cond/mul*
Tshape0
ґ
 training/Adam/gradients/Switch_7Switchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
£
"training/Adam/gradients/Identity_7Identity training/Adam/gradients/Switch_7*
_class
loc:@dense_3/Relu*'
_output_shapes
:€€€€€€€€€ *
T0
†
training/Adam/gradients/Shape_8Shape training/Adam/gradients/Switch_7*
T0*
_class
loc:@dense_3/Relu*
out_type0*
_output_shapes
:
∞
%training/Adam/gradients/zeros_7/ConstConst#^training/Adam/gradients/Identity_7*
_class
loc:@dense_3/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_7Filltraining/Adam/gradients/Shape_8%training/Adam/gradients/zeros_7/Const*'
_output_shapes
:€€€€€€€€€ *
T0*
_class
loc:@dense_3/Relu*

index_type0
Б
@training/Adam/gradients/dropout_3/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_77training/Adam/gradients/dropout_3/cond/mul_grad/Reshape*
T0*
_class
loc:@dense_3/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
Д
training/Adam/gradients/AddN_5AddN>training/Adam/gradients/dropout_3/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_3/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_3/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_3/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_5dense_3/Relu*
T0*
_class
loc:@dense_3/Relu*'
_output_shapes
:€€€€€€€€€ 
џ
8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_3/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_3/BiasAdd*
data_formatNHWC*
_output_shapes
: 
А
2training/Adam/gradients/dense_3/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_3/Relu_grad/ReluGraddense_3/kernel/read*
T0*!
_class
loc:@dense_3/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€ *
transpose_b(
ъ
4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1MatMuldropout_2/cond/Merge2training/Adam/gradients/dense_3/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_3/MatMul*
transpose_a(*
_output_shapes

:  *
transpose_b( 
щ
;training/Adam/gradients/dropout_2/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_3/MatMul_grad/MatMuldropout_2/cond/pred_id*
T0*!
_class
loc:@dense_3/MatMul*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
ґ
 training/Adam/gradients/Switch_8Switchdense_2/Reludropout_2/cond/pred_id*
T0*
_class
loc:@dense_2/Relu*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ 
•
"training/Adam/gradients/Identity_8Identity"training/Adam/gradients/Switch_8:1*
T0*
_class
loc:@dense_2/Relu*'
_output_shapes
:€€€€€€€€€ 
Ґ
training/Adam/gradients/Shape_9Shape"training/Adam/gradients/Switch_8:1*
T0*
_class
loc:@dense_2/Relu*
out_type0*
_output_shapes
:
∞
%training/Adam/gradients/zeros_8/ConstConst#^training/Adam/gradients/Identity_8*
_class
loc:@dense_2/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
training/Adam/gradients/zeros_8Filltraining/Adam/gradients/Shape_9%training/Adam/gradients/zeros_8/Const*
T0*
_class
loc:@dense_2/Relu*

index_type0*'
_output_shapes
:€€€€€€€€€ 
Г
>training/Adam/gradients/dropout_2/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_2/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros_8*
T0*
_class
loc:@dense_2/Relu*
N*)
_output_shapes
:€€€€€€€€€ : 
 
?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/ShapeShapedropout_2/cond/dropout/mul*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1Shapedropout_2/cond/dropout/Cast*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Џ
Otraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Г
=training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_2/cond/Merge_grad/cond_grad:1dropout_2/cond/dropout/Cast*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ *
T0
≈
=training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
_output_shapes
:*
	keep_dims( *

Tidx0
љ
Atraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
Tshape0
Д
?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Mul_1Muldropout_2/cond/dropout/mul=training/Adam/gradients/dropout_2/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€ *
T0
Ћ
?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1
√
Ctraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1*/
_class%
#!loc:@dropout_2/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€ *
T0
Њ
=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/ShapeShapedropout_2/cond/mul*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
out_type0*
_output_shapes
:
±
?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *-
_class#
!loc:@dropout_2/cond/dropout/mul*
valueB 
“
Mtraining/Adam/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_2/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Reshapedropout_2/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€ 
љ
;training/Adam/gradients/dropout_2/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_2/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul
µ
?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€ 
ь
=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Muldropout_2/cond/mulAtraining/Adam/gradients/dropout_2/cond/dropout/mul_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€ *
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul
√
=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
™
Atraining/Adam/gradients/dropout_2/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
Tshape0
Ј
5training/Adam/gradients/dropout_2/cond/mul_grad/ShapeShapedropout_2/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_2/cond/mul*
out_type0*
_output_shapes
:
°
7training/Adam/gradients/dropout_2/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_2/cond/mul*
valueB *
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_2/cond/mul_grad/Shape7training/Adam/gradients/dropout_2/cond/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*%
_class
loc:@dropout_2/cond/mul
к
3training/Adam/gradients/dropout_2/cond/mul_grad/MulMul?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Reshapedropout_2/cond/mul/y*
T0*%
_class
loc:@dropout_2/cond/mul*'
_output_shapes
:€€€€€€€€€ 
Э
3training/Adam/gradients/dropout_2/cond/mul_grad/SumSum3training/Adam/gradients/dropout_2/cond/mul_grad/MulEtraining/Adam/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
:
Х
7training/Adam/gradients/dropout_2/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_2/cond/mul_grad/Sum5training/Adam/gradients/dropout_2/cond/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€ *
T0*%
_class
loc:@dropout_2/cond/mul*
Tshape0
у
5training/Adam/gradients/dropout_2/cond/mul_grad/Mul_1Muldropout_2/cond/mul/Switch:1?training/Adam/gradients/dropout_2/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_2/cond/mul*'
_output_shapes
:€€€€€€€€€ 
£
5training/Adam/gradients/dropout_2/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_2/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs:1*
T0*%
_class
loc:@dropout_2/cond/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
К
9training/Adam/gradients/dropout_2/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_2/cond/mul_grad/Sum_17training/Adam/gradients/dropout_2/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_2/cond/mul*
Tshape0*
_output_shapes
: 
ґ
 training/Adam/gradients/Switch_9Switchdense_2/Reludropout_2/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€ :€€€€€€€€€ *
T0*
_class
loc:@dense_2/Relu
£
"training/Adam/gradients/Identity_9Identity training/Adam/gradients/Switch_9*
_class
loc:@dense_2/Relu*'
_output_shapes
:€€€€€€€€€ *
T0
°
 training/Adam/gradients/Shape_10Shape training/Adam/gradients/Switch_9*
_output_shapes
:*
T0*
_class
loc:@dense_2/Relu*
out_type0
∞
%training/Adam/gradients/zeros_9/ConstConst#^training/Adam/gradients/Identity_9*
_class
loc:@dense_2/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
’
training/Adam/gradients/zeros_9Fill training/Adam/gradients/Shape_10%training/Adam/gradients/zeros_9/Const*
T0*
_class
loc:@dense_2/Relu*

index_type0*'
_output_shapes
:€€€€€€€€€ 
Б
@training/Adam/gradients/dropout_2/cond/mul/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_97training/Adam/gradients/dropout_2/cond/mul_grad/Reshape*
N*)
_output_shapes
:€€€€€€€€€ : *
T0*
_class
loc:@dense_2/Relu
Д
training/Adam/gradients/AddN_6AddN>training/Adam/gradients/dropout_2/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_2/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_2/Relu*
N*'
_output_shapes
:€€€€€€€€€ 
њ
2training/Adam/gradients/dense_2/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_6dense_2/Relu*
T0*
_class
loc:@dense_2/Relu*'
_output_shapes
:€€€€€€€€€ 
џ
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
: 
А
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Relu_grad/ReluGraddense_2/kernel/read*
T0*!
_class
loc:@dense_2/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b(
ъ
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_2/MatMul*
transpose_a(*
_output_shapes

: *
transpose_b( 
щ
;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
Ј
!training/Adam/gradients/Switch_10Switchdense_1/Reludropout_1/cond/pred_id*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*
T0*
_class
loc:@dense_1/Relu
І
#training/Adam/gradients/Identity_10Identity#training/Adam/gradients/Switch_10:1*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€
§
 training/Adam/gradients/Shape_11Shape#training/Adam/gradients/Switch_10:1*
T0*
_class
loc:@dense_1/Relu*
out_type0*
_output_shapes
:
≤
&training/Adam/gradients/zeros_10/ConstConst$^training/Adam/gradients/Identity_10*
_class
loc:@dense_1/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
„
 training/Adam/gradients/zeros_10Fill training/Adam/gradients/Shape_11&training/Adam/gradients/zeros_10/Const*
_class
loc:@dense_1/Relu*

index_type0*'
_output_shapes
:€€€€€€€€€*
T0
Д
>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge;training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad training/Adam/gradients/zeros_10*
T0*
_class
loc:@dense_1/Relu*
N*)
_output_shapes
:€€€€€€€€€: 
 
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
out_type0*
_output_shapes
:
Ќ
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
_output_shapes
:*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
out_type0
Џ
Otraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
Г
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulMul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*'
_output_shapes
:€€€€€€€€€*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1
≈
=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/SumSum=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/MulOtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:*
	keep_dims( *

Tidx0
љ
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshape=training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
Tshape0
Д
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mul=training/Adam/gradients/dropout_1/cond/Merge_grad/cond_grad:1*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*'
_output_shapes
:€€€€€€€€€*
T0
Ћ
?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Sum?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Qtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
√
Ctraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Atraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@dropout_1/cond/dropout/mul_1*
Tshape0*'
_output_shapes
:€€€€€€€€€
Њ
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/mul*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
out_type0*
_output_shapes
:
±
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Const*-
_class#
!loc:@dropout_1/cond/dropout/mul*
valueB *
dtype0*
_output_shapes
: 
“
Mtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ж
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€
љ
;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/SumSum;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/MulMtraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
µ
?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape;training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0
ь
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/mulAtraining/Adam/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*'
_output_shapes
:€€€€€€€€€
√
=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Otraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*-
_class#
!loc:@dropout_1/cond/dropout/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
™
Atraining/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape=training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Sum_1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0*
_output_shapes
: 
Ј
5training/Adam/gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_1/cond/mul*
out_type0*
_output_shapes
:
°
7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_1/cond/mul*
valueB *
dtype0*
_output_shapes
: 
≤
Etraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs5training/Adam/gradients/dropout_1/cond/mul_grad/Shape7training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_1/cond/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
3training/Adam/gradients/dropout_1/cond/mul_grad/MulMul?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshapedropout_1/cond/mul/y*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:€€€€€€€€€
Э
3training/Adam/gradients/dropout_1/cond/mul_grad/SumSum3training/Adam/gradients/dropout_1/cond/mul_grad/MulEtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_1/cond/mul
Х
7training/Adam/gradients/dropout_1/cond/mul_grad/ReshapeReshape3training/Adam/gradients/dropout_1/cond/mul_grad/Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_1/cond/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€
у
5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Muldropout_1/cond/mul/Switch:1?training/Adam/gradients/dropout_1/cond/dropout/mul_grad/Reshape*
T0*%
_class
loc:@dropout_1/cond/mul*'
_output_shapes
:€€€€€€€€€
£
5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_1Sum5training/Adam/gradients/dropout_1/cond/mul_grad/Mul_1Gtraining/Adam/gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_1/cond/mul*
_output_shapes
:
К
9training/Adam/gradients/dropout_1/cond/mul_grad/Reshape_1Reshape5training/Adam/gradients/dropout_1/cond/mul_grad/Sum_17training/Adam/gradients/dropout_1/cond/mul_grad/Shape_1*
_output_shapes
: *
T0*%
_class
loc:@dropout_1/cond/mul*
Tshape0
Ј
!training/Adam/gradients/Switch_11Switchdense_1/Reludropout_1/cond/pred_id*
T0*
_class
loc:@dense_1/Relu*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
•
#training/Adam/gradients/Identity_11Identity!training/Adam/gradients/Switch_11*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€
Ґ
 training/Adam/gradients/Shape_12Shape!training/Adam/gradients/Switch_11*
_class
loc:@dense_1/Relu*
out_type0*
_output_shapes
:*
T0
≤
&training/Adam/gradients/zeros_11/ConstConst$^training/Adam/gradients/Identity_11*
_class
loc:@dense_1/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
„
 training/Adam/gradients/zeros_11Fill training/Adam/gradients/Shape_12&training/Adam/gradients/zeros_11/Const*'
_output_shapes
:€€€€€€€€€*
T0*
_class
loc:@dense_1/Relu*

index_type0
В
@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_gradMerge training/Adam/gradients/zeros_117training/Adam/gradients/dropout_1/cond/mul_grad/Reshape*
N*)
_output_shapes
:€€€€€€€€€: *
T0*
_class
loc:@dense_1/Relu
Д
training/Adam/gradients/AddN_7AddN>training/Adam/gradients/dropout_1/cond/Switch_1_grad/cond_grad@training/Adam/gradients/dropout_1/cond/mul/Switch_grad/cond_grad*
_class
loc:@dense_1/Relu*
N*'
_output_shapes
:€€€€€€€€€*
T0
њ
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddN_7dense_1/Relu*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€
џ
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
А
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
T0*!
_class
loc:@dense_1/MatMul*
transpose_a( *'
_output_shapes
:€€€€€€€€€*
transpose_b(
у
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*!
_class
loc:@dense_1/MatMul*
transpose_a(*
_output_shapes

:*
transpose_b( *
T0
_
training/Adam/AssignAdd/valueConst*
_output_shapes
: *
value	B	 R*
dtype0	
ђ
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0	*"
_class
loc:@Adam/iterations
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
 *  А?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
_output_shapes
: *
T0
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
valueB
 *  А?*
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
 *  А*
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 
Б
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
 *  А?
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
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
_output_shapes
: *
T0
h
training/Adam/zerosConst*
valueB*    *
dtype0*
_output_shapes

:
К
training/Adam/Variable
VariableV2*
shape
:*
shared_name *
dtype0*
	container *
_output_shapes

:
—
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

:
У
training/Adam/Variable/readIdentitytraining/Adam/Variable*
_output_shapes

:*
T0*)
_class
loc:@training/Adam/Variable
b
training/Adam/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
Д
training/Adam/Variable_1
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
’
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
:
Х
training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:*
T0
j
training/Adam/zeros_2Const*
valueB *    *
dtype0*
_output_shapes

: 
М
training/Adam/Variable_2
VariableV2*
dtype0*
	container *
_output_shapes

: *
shape
: *
shared_name 
ў
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2
Щ
training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes

: 
b
training/Adam/zeros_3Const*
dtype0*
_output_shapes
: *
valueB *    
Д
training/Adam/Variable_3
VariableV2*
	container *
_output_shapes
: *
shape: *
shared_name *
dtype0
’
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(
Х
training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
_output_shapes
: *
T0*+
_class!
loc:@training/Adam/Variable_3
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"        *
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
Ь
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*
_output_shapes

:  
М
training/Adam/Variable_4
VariableV2*
shape
:  *
shared_name *
dtype0*
	container *
_output_shapes

:  
ў
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
Щ
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes

:  *
T0
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 
Д
training/Adam/Variable_5
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
’
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
Х
training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 
v
%training/Adam/zeros_6/shape_as_tensorConst*
_output_shapes
:*
valueB"        *
dtype0
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ь
training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
T0*

index_type0*
_output_shapes

:  
М
training/Adam/Variable_6
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes

:  *
shape
:  
ў
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

:  
Щ
training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes

:  
b
training/Adam/zeros_7Const*
valueB *    *
dtype0*
_output_shapes
: 
Д
training/Adam/Variable_7
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
’
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Х
training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
: *
T0
v
%training/Adam/zeros_8/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ь
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
_output_shapes

:  *
T0*

index_type0
М
training/Adam/Variable_8
VariableV2*
dtype0*
	container *
_output_shapes

:  *
shape
:  *
shared_name 
ў
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
_output_shapes

:  *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(
Щ
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes

:  
b
training/Adam/zeros_9Const*
valueB *    *
dtype0*
_output_shapes
: 
Д
training/Adam/Variable_9
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
’
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
: *
use_locking(
Х
training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
: 
w
&training/Adam/zeros_10/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Я
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*

index_type0*
_output_shapes

:  *
T0
Н
training/Adam/Variable_10
VariableV2*
shape
:  *
shared_name *
dtype0*
	container *
_output_shapes

:  
Ё
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10
Ь
training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
_output_shapes

:  *
T0*,
_class"
 loc:@training/Adam/Variable_10
c
training/Adam/zeros_11Const*
dtype0*
_output_shapes
: *
valueB *    
Е
training/Adam/Variable_11
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
ў
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
: 
k
training/Adam/zeros_12Const*
valueB *    *
dtype0*
_output_shapes

: 
Н
training/Adam/Variable_12
VariableV2*
dtype0*
	container *
_output_shapes

: *
shape
: *
shared_name 
Ё
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*
_output_shapes

: 
Ь
training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*
T0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes

: 
c
training/Adam/zeros_13Const*
valueB*    *
dtype0*
_output_shapes
:
Е
training/Adam/Variable_13
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
ў
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
T0*,
_class"
 loc:@training/Adam/Variable_13*
_output_shapes
:
k
training/Adam/zeros_14Const*
valueB*    *
dtype0*
_output_shapes

:
Н
training/Adam/Variable_14
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
Ё
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14
Ь
training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
_output_shapes

:*
T0
c
training/Adam/zeros_15Const*
valueB*    *
dtype0*
_output_shapes
:
Е
training/Adam/Variable_15
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
ў
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_15
k
training/Adam/zeros_16Const*
valueB *    *
dtype0*
_output_shapes

: 
Н
training/Adam/Variable_16
VariableV2*
dtype0*
	container *
_output_shapes

: *
shape
: *
shared_name 
Ё
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*
_output_shapes

: 
Ь
training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
T0*,
_class"
 loc:@training/Adam/Variable_16*
_output_shapes

: 
c
training/Adam/zeros_17Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_17
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
: *
shape: 
ў
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_17
w
&training/Adam/zeros_18/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
T0*

index_type0*
_output_shapes

:  
Н
training/Adam/Variable_18
VariableV2*
shape
:  *
shared_name *
dtype0*
	container *
_output_shapes

:  
Ё
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes

:  
Ь
training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*
_output_shapes

:  
c
training/Adam/zeros_19Const*
dtype0*
_output_shapes
: *
valueB *    
Е
training/Adam/Variable_19
VariableV2*
	container *
_output_shapes
: *
shape: *
shared_name *
dtype0
ў
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes
: 
w
&training/Adam/zeros_20/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*

index_type0*
_output_shapes

:  
Н
training/Adam/Variable_20
VariableV2*
shape
:  *
shared_name *
dtype0*
	container *
_output_shapes

:  
Ё
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
Ь
training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
_output_shapes

:  *
T0*,
_class"
 loc:@training/Adam/Variable_20
c
training/Adam/zeros_21Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_21
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
ў
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes
: *
use_locking(
Ш
training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_21
w
&training/Adam/zeros_22/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*

index_type0*
_output_shapes

:  
Н
training/Adam/Variable_22
VariableV2*
dtype0*
	container *
_output_shapes

:  *
shape
:  *
shared_name 
Ё
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes

:  
Ь
training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
T0*,
_class"
 loc:@training/Adam/Variable_22*
_output_shapes

:  
c
training/Adam/zeros_23Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_23
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
ў
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(
Ш
training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes
: 
w
&training/Adam/zeros_24/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Я
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0*
_output_shapes

:  
Н
training/Adam/Variable_24
VariableV2*
shape
:  *
shared_name *
dtype0*
	container *
_output_shapes

:  
Ё
 training/Adam/Variable_24/AssignAssigntraining/Adam/Variable_24training/Adam/zeros_24*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*
_output_shapes

:  
Ь
training/Adam/Variable_24/readIdentitytraining/Adam/Variable_24*
_output_shapes

:  *
T0*,
_class"
 loc:@training/Adam/Variable_24
c
training/Adam/zeros_25Const*
valueB *    *
dtype0*
_output_shapes
: 
Е
training/Adam/Variable_25
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
ў
 training/Adam/Variable_25/AssignAssigntraining/Adam/Variable_25training/Adam/zeros_25*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes
: 
Ш
training/Adam/Variable_25/readIdentitytraining/Adam/Variable_25*
T0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes
: 
k
training/Adam/zeros_26Const*
valueB *    *
dtype0*
_output_shapes

: 
Н
training/Adam/Variable_26
VariableV2*
shape
: *
shared_name *
dtype0*
	container *
_output_shapes

: 
Ё
 training/Adam/Variable_26/AssignAssigntraining/Adam/Variable_26training/Adam/zeros_26*
_output_shapes

: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(
Ь
training/Adam/Variable_26/readIdentitytraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes

: *
T0
c
training/Adam/zeros_27Const*
valueB*    *
dtype0*
_output_shapes
:
Е
training/Adam/Variable_27
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
ў
 training/Adam/Variable_27/AssignAssigntraining/Adam/Variable_27training/Adam/zeros_27*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_27/readIdentitytraining/Adam/Variable_27*
T0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:
p
&training/Adam/zeros_28/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ы
training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_28
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
ў
 training/Adam/Variable_28/AssignAssigntraining/Adam/Variable_28training/Adam/zeros_28*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ш
training/Adam/Variable_28/readIdentitytraining/Adam/Variable_28*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_28
p
&training/Adam/zeros_29/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_29/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_29Fill&training/Adam/zeros_29/shape_as_tensortraining/Adam/zeros_29/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_29
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
ў
 training/Adam/Variable_29/AssignAssigntraining/Adam/Variable_29training/Adam/zeros_29*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_29/readIdentitytraining/Adam/Variable_29*
T0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
:
p
&training/Adam/zeros_30/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_30/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ы
training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_30
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
ў
 training/Adam/Variable_30/AssignAssigntraining/Adam/Variable_30training/Adam/zeros_30*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_30/readIdentitytraining/Adam/Variable_30*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_30
p
&training/Adam/zeros_31/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_31/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_31Fill&training/Adam/zeros_31/shape_as_tensortraining/Adam/zeros_31/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_31
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
ў
 training/Adam/Variable_31/AssignAssigntraining/Adam/Variable_31training/Adam/zeros_31*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_31/readIdentitytraining/Adam/Variable_31*
T0*,
_class"
 loc:@training/Adam/Variable_31*
_output_shapes
:
p
&training/Adam/zeros_32/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_32Fill&training/Adam/zeros_32/shape_as_tensortraining/Adam/zeros_32/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_32
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
ў
 training/Adam/Variable_32/AssignAssigntraining/Adam/Variable_32training/Adam/zeros_32*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(
Ш
training/Adam/Variable_32/readIdentitytraining/Adam/Variable_32*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_32
p
&training/Adam/zeros_33/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_33/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_33Fill&training/Adam/zeros_33/shape_as_tensortraining/Adam/zeros_33/Const*

index_type0*
_output_shapes
:*
T0
Е
training/Adam/Variable_33
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
ў
 training/Adam/Variable_33/AssignAssigntraining/Adam/Variable_33training/Adam/zeros_33*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_33
Ш
training/Adam/Variable_33/readIdentitytraining/Adam/Variable_33*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_33
p
&training/Adam/zeros_34/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_34Fill&training/Adam/zeros_34/shape_as_tensortraining/Adam/zeros_34/Const*
_output_shapes
:*
T0*

index_type0
Е
training/Adam/Variable_34
VariableV2*
	container *
_output_shapes
:*
shape:*
shared_name *
dtype0
ў
 training/Adam/Variable_34/AssignAssigntraining/Adam/Variable_34training/Adam/zeros_34*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_34*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_34/readIdentitytraining/Adam/Variable_34*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_34
p
&training/Adam/zeros_35/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_35/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_35Fill&training/Adam/zeros_35/shape_as_tensortraining/Adam/zeros_35/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_35
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
ў
 training/Adam/Variable_35/AssignAssigntraining/Adam/Variable_35training/Adam/zeros_35*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_35*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_35/readIdentitytraining/Adam/Variable_35*
T0*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
:
p
&training/Adam/zeros_36/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_36/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_36Fill&training/Adam/zeros_36/shape_as_tensortraining/Adam/zeros_36/Const*
_output_shapes
:*
T0*

index_type0
Е
training/Adam/Variable_36
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
ў
 training/Adam/Variable_36/AssignAssigntraining/Adam/Variable_36training/Adam/zeros_36*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_36*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_36/readIdentitytraining/Adam/Variable_36*
T0*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
:
p
&training/Adam/zeros_37/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_37/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ы
training/Adam/zeros_37Fill&training/Adam/zeros_37/shape_as_tensortraining/Adam/zeros_37/Const*

index_type0*
_output_shapes
:*
T0
Е
training/Adam/Variable_37
VariableV2*
	container *
_output_shapes
:*
shape:*
shared_name *
dtype0
ў
 training/Adam/Variable_37/AssignAssigntraining/Adam/Variable_37training/Adam/zeros_37*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_37*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_37/readIdentitytraining/Adam/Variable_37*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_37
p
&training/Adam/zeros_38/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_38Fill&training/Adam/zeros_38/shape_as_tensortraining/Adam/zeros_38/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_38
VariableV2*
	container *
_output_shapes
:*
shape:*
shared_name *
dtype0
ў
 training/Adam/Variable_38/AssignAssigntraining/Adam/Variable_38training/Adam/zeros_38*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_38*
validate_shape(
Ш
training/Adam/Variable_38/readIdentitytraining/Adam/Variable_38*
T0*,
_class"
 loc:@training/Adam/Variable_38*
_output_shapes
:
p
&training/Adam/zeros_39/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_39/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_39Fill&training/Adam/zeros_39/shape_as_tensortraining/Adam/zeros_39/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_39
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
ў
 training/Adam/Variable_39/AssignAssigntraining/Adam/Variable_39training/Adam/zeros_39*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_39*
validate_shape(
Ш
training/Adam/Variable_39/readIdentitytraining/Adam/Variable_39*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_39
p
&training/Adam/zeros_40/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_40/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_40Fill&training/Adam/zeros_40/shape_as_tensortraining/Adam/zeros_40/Const*
T0*

index_type0*
_output_shapes
:
Е
training/Adam/Variable_40
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
ў
 training/Adam/Variable_40/AssignAssigntraining/Adam/Variable_40training/Adam/zeros_40*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_40*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_40/readIdentitytraining/Adam/Variable_40*,
_class"
 loc:@training/Adam/Variable_40*
_output_shapes
:*
T0
p
&training/Adam/zeros_41/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_41/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_41Fill&training/Adam/zeros_41/shape_as_tensortraining/Adam/zeros_41/Const*
_output_shapes
:*
T0*

index_type0
Е
training/Adam/Variable_41
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
ў
 training/Adam/Variable_41/AssignAssigntraining/Adam/Variable_41training/Adam/zeros_41*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_41*
validate_shape(*
_output_shapes
:
Ш
training/Adam/Variable_41/readIdentitytraining/Adam/Variable_41*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
:*
T0
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes

:
Z
training/Adam/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 
О
training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
_output_shapes

:*
T0
u
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_14/read*
T0*
_output_shapes

:
Z
training/Adam/sub_3/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
_output_shapes
: *
T0
}
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
_output_shapes

:*
T0
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes

:
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes

:
Z
training/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_3Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Е
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0*
_output_shapes

:
П
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
_output_shapes

:*
T0
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes

:
Z
training/Adam/add_3/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes

:
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes

:
q
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
_output_shapes

:*
T0
»
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

:
–
training/Adam/Assign_1Assigntraining/Adam/Variable_14training/Adam/add_2*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes

:
Ї
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes
:
Z
training/Adam/sub_5/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 
О
training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:
q
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_15/read*
T0*
_output_shapes
:
Z
training/Adam/sub_6/xConst*
valueB
 *  А?*
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
:
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
:
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
 *  А*
dtype0*
_output_shapes
: 
Б
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
_output_shapes
:*
T0
Л
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
_output_shapes
:*
T0
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes
:*
T0
Z
training/Adam/add_6/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
_output_shapes
:*
T0
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
:
k
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes
:
 
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
ћ
training/Adam/Assign_4Assigntraining/Adam/Variable_15training/Adam/add_5*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
:
≤
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
u
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
_output_shapes

: *
T0
Z
training/Adam/sub_8/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
_output_shapes
: *
T0
П
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes

: *
T0
v
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_16/read*
T0*
_output_shapes

: 
Z
training/Adam/sub_9/xConst*
valueB
 *  А?*
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

: *
T0
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes

: 
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes

: *
T0
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

: 
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
 *  А*
dtype0*
_output_shapes
: 
Е
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*
_output_shapes

: 
П
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes

: 
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes

: 
Z
training/Adam/add_9/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes

: *
T0
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes

: *
T0
r
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes

: 
ќ
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

: 
–
training/Adam/Assign_7Assigntraining/Adam/Variable_16training/Adam/add_8*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*
_output_shapes

: 
ї
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@dense_2/kernel
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
_output_shapes
: *
T0
Р
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
: 
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_17/read*
T0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
: 
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes
: *
T0
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
: 
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
 *  А*
dtype0*
_output_shapes
: 
В
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes
: 
Л
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
_output_shapes
: *
T0
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
: 
[
training/Adam/add_12/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
: 
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
_output_shapes
: *
T0
Ћ
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
: 
ќ
training/Adam/Assign_10Assigntraining/Adam/Variable_17training/Adam/add_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
: 
і
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense_2/bias
u
training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
T0*
_output_shapes

:  
[
training/Adam/sub_14/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
_output_shapes

:  *
T0
v
training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_18/read*
T0*
_output_shapes

:  
[
training/Adam/sub_15/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_4Square4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
_output_shapes

:  *
T0
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:  
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes

:  
[
training/Adam/Const_10Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_11Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
З
%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_11*
T0*
_output_shapes

:  
Р
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*
T0*
_output_shapes

:  
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:  
[
training/Adam/add_15/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:  
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes

:  
r
training/Adam/sub_16Subdense_3/kernel/readtraining/Adam/truediv_5*
T0*
_output_shapes

:  
–
training/Adam/Assign_12Assigntraining/Adam/Variable_4training/Adam/add_13*
_output_shapes

:  *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(
“
training/Adam/Assign_13Assigntraining/Adam/Variable_18training/Adam/add_14*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes

:  *
use_locking(
Љ
training/Adam/Assign_14Assigndense_3/kerneltraining/Adam/sub_16*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes

:  
q
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
_output_shapes
: *
T0
Р
training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
_output_shapes
: *
T0
r
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_19/read*
_output_shapes
: *
T0
[
training/Adam/sub_18/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_5Square8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes
: 
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
: 
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes
: *
T0
[
training/Adam/Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_13Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Г
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_13*
T0*
_output_shapes
: 
М
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
: 
[
training/Adam/add_18/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
_output_shapes
: *
T0
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
_output_shapes
: *
T0
l
training/Adam/sub_19Subdense_3/bias/readtraining/Adam/truediv_6*
T0*
_output_shapes
: 
ћ
training/Adam/Assign_15Assigntraining/Adam/Variable_5training/Adam/add_16*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(
ќ
training/Adam/Assign_16Assigntraining/Adam/Variable_19training/Adam/add_17*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes
: 
і
training/Adam/Assign_17Assigndense_3/biastraining/Adam/sub_19*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
T0*
_output_shapes

:  
[
training/Adam/sub_20/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
_output_shapes
: *
T0
Р
training/Adam/mul_32Multraining/Adam/sub_204training/Adam/gradients/dense_4/MatMul_grad/MatMul_1*
_output_shapes

:  *
T0
p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*
_output_shapes

:  
v
training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_20/read*
T0*
_output_shapes

:  
[
training/Adam/sub_21/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_6Square4training/Adam/gradients/dense_4/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*
_output_shapes

:  
p
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*
_output_shapes

:  
m
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
T0*
_output_shapes

:  
[
training/Adam/Const_14Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_15Const*
_output_shapes
: *
valueB
 *  А*
dtype0
З
%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_15*
_output_shapes

:  *
T0
Р
training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
_output_shapes

:  *
T0
d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*
_output_shapes

:  
[
training/Adam/add_21/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
_output_shapes

:  *
T0
w
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*
_output_shapes

:  
r
training/Adam/sub_22Subdense_4/kernel/readtraining/Adam/truediv_7*
T0*
_output_shapes

:  
–
training/Adam/Assign_18Assigntraining/Adam/Variable_6training/Adam/add_19*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6
“
training/Adam/Assign_19Assigntraining/Adam/Variable_20training/Adam/add_20*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*
_output_shapes

:  
Љ
training/Adam/Assign_20Assigndense_4/kerneltraining/Adam/sub_22*
_output_shapes

:  *
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
q
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_37Multraining/Adam/sub_238training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
: *
T0
r
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_21/read*
T0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_7Square8training/Adam/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
: 
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
_output_shapes
: *
T0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
: 
[
training/Adam/Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_17Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Г
%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_17*
T0*
_output_shapes
: 
М
training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
_output_shapes
: *
T0
[
training/Adam/add_24/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
_output_shapes
: *
T0
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes
: 
l
training/Adam/sub_25Subdense_4/bias/readtraining/Adam/truediv_8*
T0*
_output_shapes
: 
ћ
training/Adam/Assign_21Assigntraining/Adam/Variable_7training/Adam/add_22*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: 
ќ
training/Adam/Assign_22Assigntraining/Adam/Variable_21training/Adam/add_23*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21
і
training/Adam/Assign_23Assigndense_4/biastraining/Adam/sub_25*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_41MulAdam/beta_1/readtraining/Adam/Variable_8/read*
T0*
_output_shapes

:  
[
training/Adam/sub_26/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
f
training/Adam/sub_26Subtraining/Adam/sub_26/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_42Multraining/Adam/sub_264training/Adam/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
p
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
T0*
_output_shapes

:  
v
training/Adam/mul_43MulAdam/beta_2/readtraining/Adam/Variable_22/read*
_output_shapes

:  *
T0
[
training/Adam/sub_27/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_27Subtraining/Adam/sub_27/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_8Square4training/Adam/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
r
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*
_output_shapes

:  
p
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
T0*
_output_shapes

:  
m
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
_output_shapes

:  *
T0
[
training/Adam/Const_18Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_19Const*
_output_shapes
: *
valueB
 *  А*
dtype0
З
%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_19*
T0*
_output_shapes

:  
Р
training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_18*
_output_shapes

:  *
T0
d
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
_output_shapes

:  *
T0
[
training/Adam/add_27/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*
_output_shapes

:  
w
training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*
_output_shapes

:  
r
training/Adam/sub_28Subdense_5/kernel/readtraining/Adam/truediv_9*
T0*
_output_shapes

:  
–
training/Adam/Assign_24Assigntraining/Adam/Variable_8training/Adam/add_25*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes

:  
“
training/Adam/Assign_25Assigntraining/Adam/Variable_22training/Adam/add_26*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes

:  
Љ
training/Adam/Assign_26Assigndense_5/kerneltraining/Adam/sub_28*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
_output_shapes

:  
q
training/Adam/mul_46MulAdam/beta_1/readtraining/Adam/Variable_9/read*
T0*
_output_shapes
: 
[
training/Adam/sub_29/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_29Subtraining/Adam/sub_29/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_47Multraining/Adam/sub_298training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
T0*
_output_shapes
: 
r
training/Adam/mul_48MulAdam/beta_2/readtraining/Adam/Variable_23/read*
_output_shapes
: *
T0
[
training/Adam/sub_30/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
f
training/Adam/sub_30Subtraining/Adam/sub_30/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_9Square8training/Adam/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes
: 
l
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
_output_shapes
: *
T0
i
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
_output_shapes
: *
T0
[
training/Adam/Const_20Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_21Const*
_output_shapes
: *
valueB
 *  А*
dtype0
Д
&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_29training/Adam/Const_21*
_output_shapes
: *
T0
О
training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_20*
T0*
_output_shapes
: 
b
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
T0*
_output_shapes
: 
[
training/Adam/add_30/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
o
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*
_output_shapes
: 
t
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
_output_shapes
: *
T0
m
training/Adam/sub_31Subdense_5/bias/readtraining/Adam/truediv_10*
T0*
_output_shapes
: 
ћ
training/Adam/Assign_27Assigntraining/Adam/Variable_9training/Adam/add_28*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
: 
ќ
training/Adam/Assign_28Assigntraining/Adam/Variable_23training/Adam/add_29*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
і
training/Adam/Assign_29Assigndense_5/biastraining/Adam/sub_31*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(*
_output_shapes
: 
v
training/Adam/mul_51MulAdam/beta_1/readtraining/Adam/Variable_10/read*
T0*
_output_shapes

:  
[
training/Adam/sub_32/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_32Subtraining/Adam/sub_32/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_52Multraining/Adam/sub_324training/Adam/gradients/dense_6/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
p
training/Adam/add_31Addtraining/Adam/mul_51training/Adam/mul_52*
T0*
_output_shapes

:  
v
training/Adam/mul_53MulAdam/beta_2/readtraining/Adam/Variable_24/read*
T0*
_output_shapes

:  
[
training/Adam/sub_33/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
f
training/Adam/sub_33Subtraining/Adam/sub_33/xAdam/beta_2/read*
_output_shapes
: *
T0
А
training/Adam/Square_10Square4training/Adam/gradients/dense_6/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
s
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*
T0*
_output_shapes

:  
p
training/Adam/add_32Addtraining/Adam/mul_53training/Adam/mul_54*
T0*
_output_shapes

:  
m
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_31*
T0*
_output_shapes

:  
[
training/Adam/Const_22Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_23Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
И
&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_32training/Adam/Const_23*
T0*
_output_shapes

:  
Т
training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_22*
T0*
_output_shapes

:  
f
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*
T0*
_output_shapes

:  
[
training/Adam/add_33/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
s
training/Adam/add_33Addtraining/Adam/Sqrt_11training/Adam/add_33/y*
_output_shapes

:  *
T0
x
training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_33*
_output_shapes

:  *
T0
s
training/Adam/sub_34Subdense_6/kernel/readtraining/Adam/truediv_11*
T0*
_output_shapes

:  
“
training/Adam/Assign_30Assigntraining/Adam/Variable_10training/Adam/add_31*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes

:  *
use_locking(
“
training/Adam/Assign_31Assigntraining/Adam/Variable_24training/Adam/add_32*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*
_output_shapes

:  *
use_locking(
Љ
training/Adam/Assign_32Assigndense_6/kerneltraining/Adam/sub_34*
_output_shapes

:  *
use_locking(*
T0*!
_class
loc:@dense_6/kernel*
validate_shape(
r
training/Adam/mul_56MulAdam/beta_1/readtraining/Adam/Variable_11/read*
T0*
_output_shapes
: 
[
training/Adam/sub_35/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
f
training/Adam/sub_35Subtraining/Adam/sub_35/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_57Multraining/Adam/sub_358training/Adam/gradients/dense_6/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/add_34Addtraining/Adam/mul_56training/Adam/mul_57*
T0*
_output_shapes
: 
r
training/Adam/mul_58MulAdam/beta_2/readtraining/Adam/Variable_25/read*
_output_shapes
: *
T0
[
training/Adam/sub_36/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
training/Adam/sub_36Subtraining/Adam/sub_36/xAdam/beta_2/read*
T0*
_output_shapes
: 
А
training/Adam/Square_11Square8training/Adam/gradients/dense_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
o
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
_output_shapes
: *
T0
l
training/Adam/add_35Addtraining/Adam/mul_58training/Adam/mul_59*
T0*
_output_shapes
: 
i
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_34*
T0*
_output_shapes
: 
[
training/Adam/Const_24Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_25Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Д
&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_35training/Adam/Const_25*
T0*
_output_shapes
: 
О
training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_24*
T0*
_output_shapes
: 
b
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
_output_shapes
: *
T0
[
training/Adam/add_36/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
o
training/Adam/add_36Addtraining/Adam/Sqrt_12training/Adam/add_36/y*
T0*
_output_shapes
: 
t
training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_36*
_output_shapes
: *
T0
m
training/Adam/sub_37Subdense_6/bias/readtraining/Adam/truediv_12*
_output_shapes
: *
T0
ќ
training/Adam/Assign_33Assigntraining/Adam/Variable_11training/Adam/add_34*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
: 
ќ
training/Adam/Assign_34Assigntraining/Adam/Variable_25training/Adam/add_35*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
і
training/Adam/Assign_35Assigndense_6/biastraining/Adam/sub_37*
_class
loc:@dense_6/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
v
training/Adam/mul_61MulAdam/beta_1/readtraining/Adam/Variable_12/read*
T0*
_output_shapes

: 
[
training/Adam/sub_38/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
f
training/Adam/sub_38Subtraining/Adam/sub_38/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_62Multraining/Adam/sub_384training/Adam/gradients/dense_7/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
p
training/Adam/add_37Addtraining/Adam/mul_61training/Adam/mul_62*
_output_shapes

: *
T0
v
training/Adam/mul_63MulAdam/beta_2/readtraining/Adam/Variable_26/read*
T0*
_output_shapes

: 
[
training/Adam/sub_39/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
training/Adam/sub_39Subtraining/Adam/sub_39/xAdam/beta_2/read*
T0*
_output_shapes
: 
А
training/Adam/Square_12Square4training/Adam/gradients/dense_7/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
s
training/Adam/mul_64Multraining/Adam/sub_39training/Adam/Square_12*
_output_shapes

: *
T0
p
training/Adam/add_38Addtraining/Adam/mul_63training/Adam/mul_64*
T0*
_output_shapes

: 
m
training/Adam/mul_65Multraining/Adam/multraining/Adam/add_37*
T0*
_output_shapes

: 
[
training/Adam/Const_26Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_27Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
И
&training/Adam/clip_by_value_13/MinimumMinimumtraining/Adam/add_38training/Adam/Const_27*
_output_shapes

: *
T0
Т
training/Adam/clip_by_value_13Maximum&training/Adam/clip_by_value_13/Minimumtraining/Adam/Const_26*
T0*
_output_shapes

: 
f
training/Adam/Sqrt_13Sqrttraining/Adam/clip_by_value_13*
_output_shapes

: *
T0
[
training/Adam/add_39/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
s
training/Adam/add_39Addtraining/Adam/Sqrt_13training/Adam/add_39/y*
T0*
_output_shapes

: 
x
training/Adam/truediv_13RealDivtraining/Adam/mul_65training/Adam/add_39*
T0*
_output_shapes

: 
s
training/Adam/sub_40Subdense_7/kernel/readtraining/Adam/truediv_13*
T0*
_output_shapes

: 
“
training/Adam/Assign_36Assigntraining/Adam/Variable_12training/Adam/add_37*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*
_output_shapes

: 
“
training/Adam/Assign_37Assigntraining/Adam/Variable_26training/Adam/add_38*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes

: 
Љ
training/Adam/Assign_38Assigndense_7/kerneltraining/Adam/sub_40*
use_locking(*
T0*!
_class
loc:@dense_7/kernel*
validate_shape(*
_output_shapes

: 
r
training/Adam/mul_66MulAdam/beta_1/readtraining/Adam/Variable_13/read*
T0*
_output_shapes
:
[
training/Adam/sub_41/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
f
training/Adam/sub_41Subtraining/Adam/sub_41/xAdam/beta_1/read*
T0*
_output_shapes
: 
Р
training/Adam/mul_67Multraining/Adam/sub_418training/Adam/gradients/dense_7/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training/Adam/add_40Addtraining/Adam/mul_66training/Adam/mul_67*
_output_shapes
:*
T0
r
training/Adam/mul_68MulAdam/beta_2/readtraining/Adam/Variable_27/read*
T0*
_output_shapes
:
[
training/Adam/sub_42/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_42Subtraining/Adam/sub_42/xAdam/beta_2/read*
T0*
_output_shapes
: 
А
training/Adam/Square_13Square8training/Adam/gradients/dense_7/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
o
training/Adam/mul_69Multraining/Adam/sub_42training/Adam/Square_13*
T0*
_output_shapes
:
l
training/Adam/add_41Addtraining/Adam/mul_68training/Adam/mul_69*
T0*
_output_shapes
:
i
training/Adam/mul_70Multraining/Adam/multraining/Adam/add_40*
T0*
_output_shapes
:
[
training/Adam/Const_28Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_29Const*
dtype0*
_output_shapes
: *
valueB
 *  А
Д
&training/Adam/clip_by_value_14/MinimumMinimumtraining/Adam/add_41training/Adam/Const_29*
T0*
_output_shapes
:
О
training/Adam/clip_by_value_14Maximum&training/Adam/clip_by_value_14/Minimumtraining/Adam/Const_28*
T0*
_output_shapes
:
b
training/Adam/Sqrt_14Sqrttraining/Adam/clip_by_value_14*
_output_shapes
:*
T0
[
training/Adam/add_42/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
o
training/Adam/add_42Addtraining/Adam/Sqrt_14training/Adam/add_42/y*
_output_shapes
:*
T0
t
training/Adam/truediv_14RealDivtraining/Adam/mul_70training/Adam/add_42*
_output_shapes
:*
T0
m
training/Adam/sub_43Subdense_7/bias/readtraining/Adam/truediv_14*
T0*
_output_shapes
:
ќ
training/Adam/Assign_39Assigntraining/Adam/Variable_13training/Adam/add_40*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ќ
training/Adam/Assign_40Assigntraining/Adam/Variable_27training/Adam/add_41*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:
і
training/Adam/Assign_41Assigndense_7/biastraining/Adam/sub_43*
use_locking(*
T0*
_class
loc:@dense_7/bias*
validate_shape(*
_output_shapes
:
Н	
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_2^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_24^training/Adam/Assign_25^training/Adam/Assign_26^training/Adam/Assign_27^training/Adam/Assign_28^training/Adam/Assign_29^training/Adam/Assign_3^training/Adam/Assign_30^training/Adam/Assign_31^training/Adam/Assign_32^training/Adam/Assign_33^training/Adam/Assign_34^training/Adam/Assign_35^training/Adam/Assign_36^training/Adam/Assign_37^training/Adam/Assign_38^training/Adam/Assign_39^training/Adam/Assign_4^training/Adam/Assign_40^training/Adam/Assign_41^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9
2

group_depsNoOp	^loss/mul^metrics/acc/Mean_1
Ж
IsVariableInitializedIsVariableInitializeddense_1/kernel*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
dtype0
Д
IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_output_shapes
: *
_class
loc:@dense_1/bias*
dtype0
И
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel
Д
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_4IsVariableInitializeddense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_5IsVariableInitializeddense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_6IsVariableInitializeddense_4/kernel*!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_7IsVariableInitializeddense_4/bias*
_class
loc:@dense_4/bias*
dtype0*
_output_shapes
: 
И
IsVariableInitialized_8IsVariableInitializeddense_5/kernel*!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
: 
Д
IsVariableInitialized_9IsVariableInitializeddense_5/bias*
_output_shapes
: *
_class
loc:@dense_5/bias*
dtype0
Й
IsVariableInitialized_10IsVariableInitializeddense_6/kernel*!
_class
loc:@dense_6/kernel*
dtype0*
_output_shapes
: 
Е
IsVariableInitialized_11IsVariableInitializeddense_6/bias*
_class
loc:@dense_6/bias*
dtype0*
_output_shapes
: 
Й
IsVariableInitialized_12IsVariableInitializeddense_7/kernel*!
_class
loc:@dense_7/kernel*
dtype0*
_output_shapes
: 
Е
IsVariableInitialized_13IsVariableInitializeddense_7/bias*
_class
loc:@dense_7/bias*
dtype0*
_output_shapes
: 
Л
IsVariableInitialized_14IsVariableInitializedAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
{
IsVariableInitialized_15IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 
Г
IsVariableInitialized_16IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
Г
IsVariableInitialized_17IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
Б
IsVariableInitialized_18IsVariableInitialized
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
Щ
IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_1*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_1*
dtype0
Э
IsVariableInitialized_21IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_22IsVariableInitializedtraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_23IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_24IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_25IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_26IsVariableInitializedtraining/Adam/Variable_7*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_7
Э
IsVariableInitialized_27IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 
Э
IsVariableInitialized_28IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_29IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_30IsVariableInitializedtraining/Adam/Variable_11*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_11
Я
IsVariableInitialized_31IsVariableInitializedtraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_32IsVariableInitializedtraining/Adam/Variable_13*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_13
Я
IsVariableInitialized_33IsVariableInitializedtraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_34IsVariableInitializedtraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_35IsVariableInitializedtraining/Adam/Variable_16*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_16
Я
IsVariableInitialized_36IsVariableInitializedtraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_37IsVariableInitializedtraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_38IsVariableInitializedtraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_39IsVariableInitializedtraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_40IsVariableInitializedtraining/Adam/Variable_21*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_21*
dtype0
Я
IsVariableInitialized_41IsVariableInitializedtraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_42IsVariableInitializedtraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_43IsVariableInitializedtraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_44IsVariableInitializedtraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_45IsVariableInitializedtraining/Adam/Variable_26*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_26
Я
IsVariableInitialized_46IsVariableInitializedtraining/Adam/Variable_27*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_27*
dtype0
Я
IsVariableInitialized_47IsVariableInitializedtraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_48IsVariableInitializedtraining/Adam/Variable_29*,
_class"
 loc:@training/Adam/Variable_29*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_49IsVariableInitializedtraining/Adam/Variable_30*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_30
Я
IsVariableInitialized_50IsVariableInitializedtraining/Adam/Variable_31*,
_class"
 loc:@training/Adam/Variable_31*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_51IsVariableInitializedtraining/Adam/Variable_32*,
_class"
 loc:@training/Adam/Variable_32*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_52IsVariableInitializedtraining/Adam/Variable_33*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_33*
dtype0
Я
IsVariableInitialized_53IsVariableInitializedtraining/Adam/Variable_34*,
_class"
 loc:@training/Adam/Variable_34*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_54IsVariableInitializedtraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_55IsVariableInitializedtraining/Adam/Variable_36*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_36
Я
IsVariableInitialized_56IsVariableInitializedtraining/Adam/Variable_37*,
_class"
 loc:@training/Adam/Variable_37*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_57IsVariableInitializedtraining/Adam/Variable_38*,
_class"
 loc:@training/Adam/Variable_38*
dtype0*
_output_shapes
: 
Я
IsVariableInitialized_58IsVariableInitializedtraining/Adam/Variable_39*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_39*
dtype0
Я
IsVariableInitialized_59IsVariableInitializedtraining/Adam/Variable_40*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_40*
dtype0
Я
IsVariableInitialized_60IsVariableInitializedtraining/Adam/Variable_41*,
_class"
 loc:@training/Adam/Variable_41*
dtype0*
_output_shapes
: 
и
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign^dense_4/bias/Assign^dense_4/kernel/Assign^dense_5/bias/Assign^dense_5/kernel/Assign^dense_6/bias/Assign^dense_6/kernel/Assign^dense_7/bias/Assign^dense_7/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign!^training/Adam/Variable_36/Assign!^training/Adam/Variable_37/Assign!^training/Adam/Variable_38/Assign!^training/Adam/Variable_39/Assign ^training/Adam/Variable_4/Assign!^training/Adam/Variable_40/Assign!^training/Adam/Variable_41/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign"&"∞6
trainable_variablesШ6Х6
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
\
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02dense_3/random_uniform:08
M
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02dense_3/Const:08
\
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02dense_4/random_uniform:08
M
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02dense_4/Const:08
\
dense_5/kernel:0dense_5/kernel/Assigndense_5/kernel/read:02dense_5/random_uniform:08
M
dense_5/bias:0dense_5/bias/Assigndense_5/bias/read:02dense_5/Const:08
\
dense_6/kernel:0dense_6/kernel/Assigndense_6/kernel/read:02dense_6/random_uniform:08
M
dense_6/bias:0dense_6/bias/Assigndense_6/bias/read:02dense_6/Const:08
\
dense_7/kernel:0dense_7/kernel/Assigndense_7/kernel/read:02dense_7/random_uniform:08
M
dense_7/bias:0dense_7/bias/Assigndense_7/bias/read:02dense_7/Const:08
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
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08
}
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:08
}
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:08
}
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:08
}
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:08
}
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:08
}
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:08
}
training/Adam/Variable_30:0 training/Adam/Variable_30/Assign training/Adam/Variable_30/read:02training/Adam/zeros_30:08
}
training/Adam/Variable_31:0 training/Adam/Variable_31/Assign training/Adam/Variable_31/read:02training/Adam/zeros_31:08
}
training/Adam/Variable_32:0 training/Adam/Variable_32/Assign training/Adam/Variable_32/read:02training/Adam/zeros_32:08
}
training/Adam/Variable_33:0 training/Adam/Variable_33/Assign training/Adam/Variable_33/read:02training/Adam/zeros_33:08
}
training/Adam/Variable_34:0 training/Adam/Variable_34/Assign training/Adam/Variable_34/read:02training/Adam/zeros_34:08
}
training/Adam/Variable_35:0 training/Adam/Variable_35/Assign training/Adam/Variable_35/read:02training/Adam/zeros_35:08
}
training/Adam/Variable_36:0 training/Adam/Variable_36/Assign training/Adam/Variable_36/read:02training/Adam/zeros_36:08
}
training/Adam/Variable_37:0 training/Adam/Variable_37/Assign training/Adam/Variable_37/read:02training/Adam/zeros_37:08
}
training/Adam/Variable_38:0 training/Adam/Variable_38/Assign training/Adam/Variable_38/read:02training/Adam/zeros_38:08
}
training/Adam/Variable_39:0 training/Adam/Variable_39/Assign training/Adam/Variable_39/read:02training/Adam/zeros_39:08
}
training/Adam/Variable_40:0 training/Adam/Variable_40/Assign training/Adam/Variable_40/read:02training/Adam/zeros_40:08
}
training/Adam/Variable_41:0 training/Adam/Variable_41/Assign training/Adam/Variable_41/read:02training/Adam/zeros_41:08"Љ:
cond_contextЂ:®:
§
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *–
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
≤
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*ё
dense_1/Relu:0
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0+
dense_1/Relu:0dropout_1/cond/Switch_1:0
§
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *–
dense_2/Relu:0
dropout_2/cond/dropout/Cast:0
%dropout_2/cond/dropout/GreaterEqual:0
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/mul:0
dropout_2/cond/dropout/mul_1:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/dropout/rate:0
dropout_2/cond/dropout/sub/x:0
dropout_2/cond/dropout/sub:0
"dropout_2/cond/dropout/truediv/x:0
 dropout_2/cond/dropout/truediv:0
dropout_2/cond/mul/Switch:1
dropout_2/cond/mul/y:0
dropout_2/cond/mul:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0-
dense_2/Relu:0dropout_2/cond/mul/Switch:1
≤
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*ё
dense_2/Relu:0
dropout_2/cond/Switch_1:0
dropout_2/cond/Switch_1:1
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0+
dense_2/Relu:0dropout_2/cond/Switch_1:0
§
dropout_3/cond/cond_textdropout_3/cond/pred_id:0dropout_3/cond/switch_t:0 *–
dense_3/Relu:0
dropout_3/cond/dropout/Cast:0
%dropout_3/cond/dropout/GreaterEqual:0
dropout_3/cond/dropout/Shape:0
dropout_3/cond/dropout/mul:0
dropout_3/cond/dropout/mul_1:0
5dropout_3/cond/dropout/random_uniform/RandomUniform:0
+dropout_3/cond/dropout/random_uniform/max:0
+dropout_3/cond/dropout/random_uniform/min:0
+dropout_3/cond/dropout/random_uniform/mul:0
+dropout_3/cond/dropout/random_uniform/sub:0
'dropout_3/cond/dropout/random_uniform:0
dropout_3/cond/dropout/rate:0
dropout_3/cond/dropout/sub/x:0
dropout_3/cond/dropout/sub:0
"dropout_3/cond/dropout/truediv/x:0
 dropout_3/cond/dropout/truediv:0
dropout_3/cond/mul/Switch:1
dropout_3/cond/mul/y:0
dropout_3/cond/mul:0
dropout_3/cond/pred_id:0
dropout_3/cond/switch_t:04
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0-
dense_3/Relu:0dropout_3/cond/mul/Switch:1
≤
dropout_3/cond/cond_text_1dropout_3/cond/pred_id:0dropout_3/cond/switch_f:0*ё
dense_3/Relu:0
dropout_3/cond/Switch_1:0
dropout_3/cond/Switch_1:1
dropout_3/cond/pred_id:0
dropout_3/cond/switch_f:04
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0+
dense_3/Relu:0dropout_3/cond/Switch_1:0
§
dropout_4/cond/cond_textdropout_4/cond/pred_id:0dropout_4/cond/switch_t:0 *–
dense_4/Relu:0
dropout_4/cond/dropout/Cast:0
%dropout_4/cond/dropout/GreaterEqual:0
dropout_4/cond/dropout/Shape:0
dropout_4/cond/dropout/mul:0
dropout_4/cond/dropout/mul_1:0
5dropout_4/cond/dropout/random_uniform/RandomUniform:0
+dropout_4/cond/dropout/random_uniform/max:0
+dropout_4/cond/dropout/random_uniform/min:0
+dropout_4/cond/dropout/random_uniform/mul:0
+dropout_4/cond/dropout/random_uniform/sub:0
'dropout_4/cond/dropout/random_uniform:0
dropout_4/cond/dropout/rate:0
dropout_4/cond/dropout/sub/x:0
dropout_4/cond/dropout/sub:0
"dropout_4/cond/dropout/truediv/x:0
 dropout_4/cond/dropout/truediv:0
dropout_4/cond/mul/Switch:1
dropout_4/cond/mul/y:0
dropout_4/cond/mul:0
dropout_4/cond/pred_id:0
dropout_4/cond/switch_t:04
dropout_4/cond/pred_id:0dropout_4/cond/pred_id:0-
dense_4/Relu:0dropout_4/cond/mul/Switch:1
≤
dropout_4/cond/cond_text_1dropout_4/cond/pred_id:0dropout_4/cond/switch_f:0*ё
dense_4/Relu:0
dropout_4/cond/Switch_1:0
dropout_4/cond/Switch_1:1
dropout_4/cond/pred_id:0
dropout_4/cond/switch_f:04
dropout_4/cond/pred_id:0dropout_4/cond/pred_id:0+
dense_4/Relu:0dropout_4/cond/Switch_1:0
§
dropout_5/cond/cond_textdropout_5/cond/pred_id:0dropout_5/cond/switch_t:0 *–
dense_5/Relu:0
dropout_5/cond/dropout/Cast:0
%dropout_5/cond/dropout/GreaterEqual:0
dropout_5/cond/dropout/Shape:0
dropout_5/cond/dropout/mul:0
dropout_5/cond/dropout/mul_1:0
5dropout_5/cond/dropout/random_uniform/RandomUniform:0
+dropout_5/cond/dropout/random_uniform/max:0
+dropout_5/cond/dropout/random_uniform/min:0
+dropout_5/cond/dropout/random_uniform/mul:0
+dropout_5/cond/dropout/random_uniform/sub:0
'dropout_5/cond/dropout/random_uniform:0
dropout_5/cond/dropout/rate:0
dropout_5/cond/dropout/sub/x:0
dropout_5/cond/dropout/sub:0
"dropout_5/cond/dropout/truediv/x:0
 dropout_5/cond/dropout/truediv:0
dropout_5/cond/mul/Switch:1
dropout_5/cond/mul/y:0
dropout_5/cond/mul:0
dropout_5/cond/pred_id:0
dropout_5/cond/switch_t:04
dropout_5/cond/pred_id:0dropout_5/cond/pred_id:0-
dense_5/Relu:0dropout_5/cond/mul/Switch:1
≤
dropout_5/cond/cond_text_1dropout_5/cond/pred_id:0dropout_5/cond/switch_f:0*ё
dense_5/Relu:0
dropout_5/cond/Switch_1:0
dropout_5/cond/Switch_1:1
dropout_5/cond/pred_id:0
dropout_5/cond/switch_f:04
dropout_5/cond/pred_id:0dropout_5/cond/pred_id:0+
dense_5/Relu:0dropout_5/cond/Switch_1:0
§
dropout_6/cond/cond_textdropout_6/cond/pred_id:0dropout_6/cond/switch_t:0 *–
dense_6/Relu:0
dropout_6/cond/dropout/Cast:0
%dropout_6/cond/dropout/GreaterEqual:0
dropout_6/cond/dropout/Shape:0
dropout_6/cond/dropout/mul:0
dropout_6/cond/dropout/mul_1:0
5dropout_6/cond/dropout/random_uniform/RandomUniform:0
+dropout_6/cond/dropout/random_uniform/max:0
+dropout_6/cond/dropout/random_uniform/min:0
+dropout_6/cond/dropout/random_uniform/mul:0
+dropout_6/cond/dropout/random_uniform/sub:0
'dropout_6/cond/dropout/random_uniform:0
dropout_6/cond/dropout/rate:0
dropout_6/cond/dropout/sub/x:0
dropout_6/cond/dropout/sub:0
"dropout_6/cond/dropout/truediv/x:0
 dropout_6/cond/dropout/truediv:0
dropout_6/cond/mul/Switch:1
dropout_6/cond/mul/y:0
dropout_6/cond/mul:0
dropout_6/cond/pred_id:0
dropout_6/cond/switch_t:04
dropout_6/cond/pred_id:0dropout_6/cond/pred_id:0-
dense_6/Relu:0dropout_6/cond/mul/Switch:1
≤
dropout_6/cond/cond_text_1dropout_6/cond/pred_id:0dropout_6/cond/switch_f:0*ё
dense_6/Relu:0
dropout_6/cond/Switch_1:0
dropout_6/cond/Switch_1:1
dropout_6/cond/pred_id:0
dropout_6/cond/switch_f:04
dropout_6/cond/pred_id:0dropout_6/cond/pred_id:0+
dense_6/Relu:0dropout_6/cond/Switch_1:0"¶6
	variablesШ6Х6
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
\
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02dense_3/random_uniform:08
M
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02dense_3/Const:08
\
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02dense_4/random_uniform:08
M
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02dense_4/Const:08
\
dense_5/kernel:0dense_5/kernel/Assigndense_5/kernel/read:02dense_5/random_uniform:08
M
dense_5/bias:0dense_5/bias/Assigndense_5/bias/read:02dense_5/Const:08
\
dense_6/kernel:0dense_6/kernel/Assigndense_6/kernel/read:02dense_6/random_uniform:08
M
dense_6/bias:0dense_6/bias/Assigndense_6/bias/read:02dense_6/Const:08
\
dense_7/kernel:0dense_7/kernel/Assigndense_7/kernel/read:02dense_7/random_uniform:08
M
dense_7/bias:0dense_7/bias/Assigndense_7/bias/read:02dense_7/Const:08
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
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08
}
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:08
}
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:08
}
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:08
}
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:08
}
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:08
}
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:08
}
training/Adam/Variable_30:0 training/Adam/Variable_30/Assign training/Adam/Variable_30/read:02training/Adam/zeros_30:08
}
training/Adam/Variable_31:0 training/Adam/Variable_31/Assign training/Adam/Variable_31/read:02training/Adam/zeros_31:08
}
training/Adam/Variable_32:0 training/Adam/Variable_32/Assign training/Adam/Variable_32/read:02training/Adam/zeros_32:08
}
training/Adam/Variable_33:0 training/Adam/Variable_33/Assign training/Adam/Variable_33/read:02training/Adam/zeros_33:08
}
training/Adam/Variable_34:0 training/Adam/Variable_34/Assign training/Adam/Variable_34/read:02training/Adam/zeros_34:08
}
training/Adam/Variable_35:0 training/Adam/Variable_35/Assign training/Adam/Variable_35/read:02training/Adam/zeros_35:08
}
training/Adam/Variable_36:0 training/Adam/Variable_36/Assign training/Adam/Variable_36/read:02training/Adam/zeros_36:08
}
training/Adam/Variable_37:0 training/Adam/Variable_37/Assign training/Adam/Variable_37/read:02training/Adam/zeros_37:08
}
training/Adam/Variable_38:0 training/Adam/Variable_38/Assign training/Adam/Variable_38/read:02training/Adam/zeros_38:08
}
training/Adam/Variable_39:0 training/Adam/Variable_39/Assign training/Adam/Variable_39/read:02training/Adam/zeros_39:08
}
training/Adam/Variable_40:0 training/Adam/Variable_40/Assign training/Adam/Variable_40/read:02training/Adam/zeros_40:08
}
training/Adam/Variable_41:0 training/Adam/Variable_41/Assign training/Adam/Variable_41/read:02training/Adam/zeros_41:08≠U       »ЅХ	NУз0
F„A*

val_loss\ъѕ=Xж+m       Ю	CФз0
F„A*

val_accfІz?яЅ{Ѓ       £K"	√Фз0
F„A*

lossпnя={ч|ч       зќш	0Хз0
F„A*


accР+{?ЂhХ6       ў№2	I63
F„A*

val_loss«–=ч R|       `/я#	963
F„A*

val_accfІz?ѓ6О       ЫЎ-	Ї63
F„A*

lossиVЅ=Пих…       Лс(	+63
F„A*


acc>{?љыЌ       ў№2	ІАГ5
F„A*

val_loss4e–=€IЄ       `/я#	™БГ5
F„A*

val_accfІz?%џ,!       ЫЎ-	7ВГ5
F„A*

losshNњ=н7©Џ       Лс(	≤ВГ5
F„A*


acc>{?L √       ў№2	о0ћ7
F„A*

val_loss±K–=Z»Вз       `/я#	б1ћ7
F„A*

val_accfІz?Ј т       ЫЎ-	t2ћ7
F„A*

lossгQЊ=Њ°¶       Лс(	п2ћ7
F„A*


acc>{?Шо