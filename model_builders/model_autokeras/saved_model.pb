╧∙
ї╞
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
╛
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8Ю╟
|
normalization/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namenormalization/mean
u
&normalization/mean/Read/ReadVariableOpReadVariableOpnormalization/mean*
_output_shapes
:*
dtype0
Д
normalization/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namenormalization/variance
}
*normalization/variance/Read/ReadVariableOpReadVariableOpnormalization/variance*
_output_shapes
:*
dtype0
z
normalization/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *$
shared_namenormalization/count
s
'normalization/count/Read/ReadVariableOpReadVariableOpnormalization/count*
_output_shapes
: *
dtype0	
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
В
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ав/*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
Ав/*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
╣)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ї(
valueъ(Bч( Bр(
ж
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
	optimizer
loss

signatures
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
%
#_self_saveable_object_factories
4
#_self_saveable_object_factories
	keras_api
4
#_self_saveable_object_factories
	keras_api
В
state_variables
_broadcast_shape
mean
variance
	count
#_self_saveable_object_factories
 	keras_api
Н

!kernel
"bias
##_self_saveable_object_factories
$trainable_variables
%	variables
&regularization_losses
'	keras_api
Н

(kernel
)bias
#*_self_saveable_object_factories
+trainable_variables
,	variables
-regularization_losses
.	keras_api
w
#/_self_saveable_object_factories
0trainable_variables
1	variables
2regularization_losses
3	keras_api
w
#4_self_saveable_object_factories
5trainable_variables
6	variables
7regularization_losses
8	keras_api
w
#9_self_saveable_object_factories
:trainable_variables
;	variables
<regularization_losses
=	keras_api
w
#>_self_saveable_object_factories
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
Н

Ckernel
Dbias
#E_self_saveable_object_factories
Ftrainable_variables
G	variables
Hregularization_losses
I	keras_api
w
#J_self_saveable_object_factories
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
 
 
 
 
*
!0
"1
(2
)3
C4
D5
?
0
1
2
!3
"4
(5
)6
C7
D8
 
н
Olayer_regularization_losses
trainable_variables
Player_metrics
Qnon_trainable_variables
Rmetrics
	variables

Slayers
regularization_losses
 
 
 
 
 
#
mean
variance
	count
 
\Z
VARIABLE_VALUEnormalization/mean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEnormalization/variance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEnormalization/count5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
н
Tlayer_regularization_losses
$trainable_variables
Ulayer_metrics
Vnon_trainable_variables
Wmetrics
%	variables

Xlayers
&regularization_losses
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
 
н
Ylayer_regularization_losses
+trainable_variables
Zlayer_metrics
[non_trainable_variables
\metrics
,	variables

]layers
-regularization_losses
 
 
 
 
н
^layer_regularization_losses
0trainable_variables
_layer_metrics
`non_trainable_variables
ametrics
1	variables

blayers
2regularization_losses
 
 
 
 
н
clayer_regularization_losses
5trainable_variables
dlayer_metrics
enon_trainable_variables
fmetrics
6	variables

glayers
7regularization_losses
 
 
 
 
н
hlayer_regularization_losses
:trainable_variables
ilayer_metrics
jnon_trainable_variables
kmetrics
;	variables

llayers
<regularization_losses
 
 
 
 
н
mlayer_regularization_losses
?trainable_variables
nlayer_metrics
onon_trainable_variables
pmetrics
@	variables

qlayers
Aregularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

C0
D1
 
н
rlayer_regularization_losses
Ftrainable_variables
slayer_metrics
tnon_trainable_variables
umetrics
G	variables

vlayers
Hregularization_losses
 
 
 
 
н
wlayer_regularization_losses
Ktrainable_variables
xlayer_metrics
ynon_trainable_variables
zmetrics
L	variables

{layers
Mregularization_losses
 
 

0
1
2

|0
}1
V
0
1
2
3
4
5
6
7
	8

9
10
11
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
6
	~total
	count
А	variables
Б	keras_api
I

Вtotal

Гcount
Д
_fn_kwargs
Е	variables
Ж	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

~0
1

А	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

В0
Г1

Е	variables
Ж
serving_default_input_1Placeholder*-
_output_shapes
:         рр*
dtype0*"
shape:         рр
├
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1normalization/meannormalization/varianceconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_18957
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
т
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&normalization/mean/Read/ReadVariableOp*normalization/variance/Read/ReadVariableOp'normalization/count/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_19301
┘
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenormalization/meannormalization/variancenormalization/countconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biastotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_19350Х°
Ф	
┘
@__inference_dense_layer_call_and_return_conditional_losses_19220

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ав/*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         Ав/::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
б
╘
%__inference_model_layer_call_fn_19105

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCall╛
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_189152
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:         рр
 
_user_specified_nameinputs
Ї9
▌
@__inference_model_layer_call_and_return_conditional_losses_19063

inputs1
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpв$normalization/Reshape/ReadVariableOpв&normalization/Reshape_1/ReadVariableOpГ
cast_to_float32/CastCastinputs*

DstT0*

SrcT0*-
_output_shapes
:         рр2
cast_to_float32/CastЛ
expand_last_dim/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
expand_last_dim/ExpandDims/dim┼
expand_last_dim/ExpandDims
ExpandDimscast_to_float32/Cast:y:0'expand_last_dim/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         рр2
expand_last_dim/ExpandDims╢
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOpУ
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape/shape╛
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape╝
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOpЧ
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape_1/shape╞
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape_1о
normalization/subSub#expand_last_dim/ExpandDims:output:0normalization/Reshape:output:0*
T0*1
_output_shapes
:         рр2
normalization/subГ
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization/Maximum/yд
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization/Maximumз
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:         рр2
normalization/truedivк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp╬
conv2d/Conv2DConv2Dnormalization/truediv:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ *
paddingVALID*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOpж
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ 2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:         ▐▐ 2
conv2d/Relu░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╘
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@*
paddingVALID*
strides
2
conv2d_1/Conv2Dз
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpо
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@2
conv2d_1/BiasAdd}
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:         ▄▄@2
conv2d_1/Relu├
max_pooling2d/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:         nn@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolК
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         nn@2
dropout/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     ╤ 2
flatten/ConstФ
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         Ав/2
flatten/ReshapeВ
dropout_1/IdentityIdentityflatten/Reshape:output:0*
T0*)
_output_shapes
:         Ав/2
dropout_1/Identityб
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
Ав/*
dtype02
dense/MatMul/ReadVariableOpЪ
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/BiasAddУ
classification_head_1/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         2
classification_head_1/SigmoidД
IdentityIdentity!classification_head_1/Sigmoid:y:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp:U Q
-
_output_shapes
:         рр
 
_user_specified_nameinputs
Ў5
ъ
@__inference_model_layer_call_and_return_conditional_losses_18811
input_11
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource
conv2d_18790
conv2d_18792
conv2d_1_18795
conv2d_1_18797
dense_18804
dense_18806
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense/StatefulPartitionedCallв$normalization/Reshape/ReadVariableOpв&normalization/Reshape_1/ReadVariableOpД
cast_to_float32/CastCastinput_1*

DstT0*

SrcT0*-
_output_shapes
:         рр2
cast_to_float32/CastЛ
expand_last_dim/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
expand_last_dim/ExpandDims/dim┼
expand_last_dim/ExpandDims
ExpandDimscast_to_float32/Cast:y:0'expand_last_dim/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         рр2
expand_last_dim/ExpandDims╢
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOpУ
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape/shape╛
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape╝
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOpЧ
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape_1/shape╞
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape_1о
normalization/subSub#expand_last_dim/ExpandDims:output:0normalization/Reshape:output:0*
T0*1
_output_shapes
:         рр2
normalization/subГ
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization/Maximum/yд
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization/Maximumз
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:         рр2
normalization/truedivд
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_18790conv2d_18792*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▐▐ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_186132 
conv2d/StatefulPartitionedCall╝
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_18795conv2d_1_18797*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▄▄@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_186402"
 conv2d_1/StatefulPartitionedCallН
max_pooling2d/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_185762
max_pooling2d/PartitionedCall°
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_186742
dropout/PartitionedCallь
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_186932
flatten/PartitionedCallЄ
dropout_1/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_187182
dropout_1/PartitionedCallЮ
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_18804dense_18806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_187412
dense/StatefulPartitionedCallЪ
%classification_head_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_classification_head_1_layer_call_and_return_conditional_losses_187622'
%classification_head_1/PartitionedCall╢
IdentityIdentity.classification_head_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp:V R
-
_output_shapes
:         рр
!
_user_specified_name	input_1
└
a
B__inference_dropout_layer_call_and_return_conditional_losses_19157

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         nn@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         nn@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         nn@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         nn@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         nn@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         nn@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         nn@:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
└
a
B__inference_dropout_layer_call_and_return_conditional_losses_18669

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         nn@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         nn@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2
dropout/GreaterEqual/y╞
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         nn@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         nn@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         nn@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         nn@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         nn@:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
Ё8
░
@__inference_model_layer_call_and_return_conditional_losses_18771
input_11
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource
conv2d_18624
conv2d_18626
conv2d_1_18651
conv2d_1_18653
dense_18752
dense_18754
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв$normalization/Reshape/ReadVariableOpв&normalization/Reshape_1/ReadVariableOpД
cast_to_float32/CastCastinput_1*

DstT0*

SrcT0*-
_output_shapes
:         рр2
cast_to_float32/CastЛ
expand_last_dim/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
expand_last_dim/ExpandDims/dim┼
expand_last_dim/ExpandDims
ExpandDimscast_to_float32/Cast:y:0'expand_last_dim/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         рр2
expand_last_dim/ExpandDims╢
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOpУ
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape/shape╛
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape╝
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOpЧ
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape_1/shape╞
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape_1о
normalization/subSub#expand_last_dim/ExpandDims:output:0normalization/Reshape:output:0*
T0*1
_output_shapes
:         рр2
normalization/subГ
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization/Maximum/yд
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization/Maximumз
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:         рр2
normalization/truedivд
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_18624conv2d_18626*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▐▐ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_186132 
conv2d/StatefulPartitionedCall╝
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_18651conv2d_1_18653*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▄▄@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_186402"
 conv2d_1/StatefulPartitionedCallН
max_pooling2d/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_185762
max_pooling2d/PartitionedCallР
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_186692!
dropout/StatefulPartitionedCallЇ
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_186932
flatten/PartitionedCallм
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_187132#
!dropout_1/StatefulPartitionedCallж
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_18752dense_18754*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_187412
dense/StatefulPartitionedCallЪ
%classification_head_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_classification_head_1_layer_call_and_return_conditional_losses_187622'
%classification_head_1/PartitionedCall№
IdentityIdentity.classification_head_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp:V R
-
_output_shapes
:         рр
!
_user_specified_name	input_1
б
╘
%__inference_model_layer_call_fn_19084

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCall╛
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_188542
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:         рр
 
_user_specified_nameinputs
Ъ
E
)__inference_dropout_1_layer_call_fn_19210

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_187182
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         Ав/2

Identity"
identityIdentity:output:0*(
_input_shapes
:         Ав/:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
В
╙
#__inference_signature_wrapper_18957
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_185702
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
-
_output_shapes
:         рр
!
_user_specified_name	input_1
є5
щ
@__inference_model_layer_call_and_return_conditional_losses_18915

inputs1
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource
conv2d_18894
conv2d_18896
conv2d_1_18899
conv2d_1_18901
dense_18908
dense_18910
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense/StatefulPartitionedCallв$normalization/Reshape/ReadVariableOpв&normalization/Reshape_1/ReadVariableOpГ
cast_to_float32/CastCastinputs*

DstT0*

SrcT0*-
_output_shapes
:         рр2
cast_to_float32/CastЛ
expand_last_dim/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
expand_last_dim/ExpandDims/dim┼
expand_last_dim/ExpandDims
ExpandDimscast_to_float32/Cast:y:0'expand_last_dim/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         рр2
expand_last_dim/ExpandDims╢
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOpУ
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape/shape╛
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape╝
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOpЧ
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape_1/shape╞
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape_1о
normalization/subSub#expand_last_dim/ExpandDims:output:0normalization/Reshape:output:0*
T0*1
_output_shapes
:         рр2
normalization/subГ
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization/Maximum/yд
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization/Maximumз
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:         рр2
normalization/truedivд
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_18894conv2d_18896*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▐▐ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_186132 
conv2d/StatefulPartitionedCall╝
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_18899conv2d_1_18901*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▄▄@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_186402"
 conv2d_1/StatefulPartitionedCallН
max_pooling2d/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_185762
max_pooling2d/PartitionedCall°
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_186742
dropout/PartitionedCallь
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_186932
flatten/PartitionedCallЄ
dropout_1/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_187182
dropout_1/PartitionedCallЮ
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_18908dense_18910*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_187412
dense/StatefulPartitionedCallЪ
%classification_head_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_classification_head_1_layer_call_and_return_conditional_losses_187622'
%classification_head_1/PartitionedCall╢
IdentityIdentity.classification_head_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp:U Q
-
_output_shapes
:         рр
 
_user_specified_nameinputs
╧
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_18718

inputs

identity_1\
IdentityIdentityinputs*
T0*)
_output_shapes
:         Ав/2

Identityk

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:         Ав/2

Identity_1"!

identity_1Identity_1:output:0*(
_input_shapes
:         Ав/:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
╪

┌
A__inference_conv2d_layer_call_and_return_conditional_losses_19116

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ▐▐ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ▐▐ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         рр::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
Ф	
┘
@__inference_dense_layer_call_and_return_conditional_losses_18741

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ав/*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         Ав/::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
з
I
-__inference_max_pooling2d_layer_call_fn_18582

inputs
identityщ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_185762
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▐@
Ю
 __inference__wrapped_model_18570
input_17
3model_normalization_reshape_readvariableop_resource9
5model_normalization_reshape_1_readvariableop_resource/
+model_conv2d_conv2d_readvariableop_resource0
,model_conv2d_biasadd_readvariableop_resource1
-model_conv2d_1_conv2d_readvariableop_resource2
.model_conv2d_1_biasadd_readvariableop_resource.
*model_dense_matmul_readvariableop_resource/
+model_dense_biasadd_readvariableop_resource
identityИв#model/conv2d/BiasAdd/ReadVariableOpв"model/conv2d/Conv2D/ReadVariableOpв%model/conv2d_1/BiasAdd/ReadVariableOpв$model/conv2d_1/Conv2D/ReadVariableOpв"model/dense/BiasAdd/ReadVariableOpв!model/dense/MatMul/ReadVariableOpв*model/normalization/Reshape/ReadVariableOpв,model/normalization/Reshape_1/ReadVariableOpР
model/cast_to_float32/CastCastinput_1*

DstT0*

SrcT0*-
_output_shapes
:         рр2
model/cast_to_float32/CastЧ
$model/expand_last_dim/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$model/expand_last_dim/ExpandDims/dim▌
 model/expand_last_dim/ExpandDims
ExpandDimsmodel/cast_to_float32/Cast:y:0-model/expand_last_dim/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         рр2"
 model/expand_last_dim/ExpandDims╚
*model/normalization/Reshape/ReadVariableOpReadVariableOp3model_normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02,
*model/normalization/Reshape/ReadVariableOpЯ
!model/normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2#
!model/normalization/Reshape/shape╓
model/normalization/ReshapeReshape2model/normalization/Reshape/ReadVariableOp:value:0*model/normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:2
model/normalization/Reshape╬
,model/normalization/Reshape_1/ReadVariableOpReadVariableOp5model_normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/normalization/Reshape_1/ReadVariableOpг
#model/normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2%
#model/normalization/Reshape_1/shape▐
model/normalization/Reshape_1Reshape4model/normalization/Reshape_1/ReadVariableOp:value:0,model/normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
model/normalization/Reshape_1╞
model/normalization/subSub)model/expand_last_dim/ExpandDims:output:0$model/normalization/Reshape:output:0*
T0*1
_output_shapes
:         рр2
model/normalization/subХ
model/normalization/SqrtSqrt&model/normalization/Reshape_1:output:0*
T0*&
_output_shapes
:2
model/normalization/SqrtГ
model/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
model/normalization/Maximum/y╝
model/normalization/MaximumMaximummodel/normalization/Sqrt:y:0&model/normalization/Maximum/y:output:0*
T0*&
_output_shapes
:2
model/normalization/Maximum┐
model/normalization/truedivRealDivmodel/normalization/sub:z:0model/normalization/Maximum:z:0*
T0*1
_output_shapes
:         рр2
model/normalization/truediv╝
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02$
"model/conv2d/Conv2D/ReadVariableOpц
model/conv2d/Conv2DConv2Dmodel/normalization/truediv:z:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ *
paddingVALID*
strides
2
model/conv2d/Conv2D│
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#model/conv2d/BiasAdd/ReadVariableOp╛
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ 2
model/conv2d/BiasAddЙ
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:         ▐▐ 2
model/conv2d/Relu┬
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02&
$model/conv2d_1/Conv2D/ReadVariableOpь
model/conv2d_1/Conv2DConv2Dmodel/conv2d/Relu:activations:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@*
paddingVALID*
strides
2
model/conv2d_1/Conv2D╣
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%model/conv2d_1/BiasAdd/ReadVariableOp╞
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@2
model/conv2d_1/BiasAddП
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:         ▄▄@2
model/conv2d_1/Relu╒
model/max_pooling2d/MaxPoolMaxPool!model/conv2d_1/Relu:activations:0*/
_output_shapes
:         nn@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPoolЬ
model/dropout/IdentityIdentity$model/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         nn@2
model/dropout/Identity{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     ╤ 2
model/flatten/Constм
model/flatten/ReshapeReshapemodel/dropout/Identity:output:0model/flatten/Const:output:0*
T0*)
_output_shapes
:         Ав/2
model/flatten/ReshapeФ
model/dropout_1/IdentityIdentitymodel/flatten/Reshape:output:0*
T0*)
_output_shapes
:         Ав/2
model/dropout_1/Identity│
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
Ав/*
dtype02#
!model/dense/MatMul/ReadVariableOp▓
model/dense/MatMulMatMul!model/dropout_1/Identity:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model/dense/MatMul░
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"model/dense/BiasAdd/ReadVariableOp▒
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model/dense/BiasAddе
#model/classification_head_1/SigmoidSigmoidmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         2%
#model/classification_head_1/Sigmoid║
IdentityIdentity'model/classification_head_1/Sigmoid:y:0$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp+^model/normalization/Reshape/ReadVariableOp-^model/normalization/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2X
*model/normalization/Reshape/ReadVariableOp*model/normalization/Reshape/ReadVariableOp2\
,model/normalization/Reshape_1/ReadVariableOp,model/normalization/Reshape_1/ReadVariableOp:V R
-
_output_shapes
:         рр
!
_user_specified_name	input_1
С
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_19195

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constu
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:         Ав/2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╢
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:         Ав/*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y└
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         Ав/2
dropout/GreaterEqualБ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         Ав/2
dropout/Cast|
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:         Ав/2
dropout/Mul_1g
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:         Ав/2

Identity"
identityIdentity:output:0*(
_input_shapes
:         Ав/:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
о
C
'__inference_dropout_layer_call_fn_19172

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_186742
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         nn@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         nn@:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
╪
z
%__inference_dense_layer_call_fn_19229

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_187412
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*0
_input_shapes
:         Ав/::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
─%
╡
__inference__traced_save_19301
file_prefix1
-savev2_normalization_mean_read_readvariableop5
1savev2_normalization_variance_read_readvariableop2
.savev2_normalization_count_read_readvariableop	,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameъ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*№
valueЄBяB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesд
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices▌
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_normalization_mean_read_readvariableop1savev2_normalization_variance_read_readvariableop.savev2_normalization_count_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*o
_input_shapes^
\: ::: : : : @:@:
Ав/:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
Ав/: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ж
b
)__inference_dropout_1_layer_call_fn_19205

inputs
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_187132
StatefulPartitionedCallР
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*)
_output_shapes
:         Ав/2

Identity"
identityIdentity:output:0*(
_input_shapes
:         Ав/22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
в
C
'__inference_flatten_layer_call_fn_19183

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_186932
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         Ав/2

Identity"
identityIdentity:output:0*.
_input_shapes
:         nn@:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
■
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18576

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
д
╒
%__inference_model_layer_call_fn_18934
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_189152
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
-
_output_shapes
:         рр
!
_user_specified_name	input_1
х
`
B__inference_dropout_layer_call_and_return_conditional_losses_19162

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         nn@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         nn@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         nn@:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
┌

▄
C__inference_conv2d_1_layer_call_and_return_conditional_losses_18640

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ▄▄@2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ▄▄@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ▐▐ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ▐▐ 
 
_user_specified_nameinputs
э8
п
@__inference_model_layer_call_and_return_conditional_losses_18854

inputs1
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource
conv2d_18833
conv2d_18835
conv2d_1_18838
conv2d_1_18840
dense_18847
dense_18849
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв$normalization/Reshape/ReadVariableOpв&normalization/Reshape_1/ReadVariableOpГ
cast_to_float32/CastCastinputs*

DstT0*

SrcT0*-
_output_shapes
:         рр2
cast_to_float32/CastЛ
expand_last_dim/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
expand_last_dim/ExpandDims/dim┼
expand_last_dim/ExpandDims
ExpandDimscast_to_float32/Cast:y:0'expand_last_dim/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         рр2
expand_last_dim/ExpandDims╢
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOpУ
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape/shape╛
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape╝
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOpЧ
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape_1/shape╞
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape_1о
normalization/subSub#expand_last_dim/ExpandDims:output:0normalization/Reshape:output:0*
T0*1
_output_shapes
:         рр2
normalization/subГ
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization/Maximum/yд
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization/Maximumз
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:         рр2
normalization/truedivд
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_18833conv2d_18835*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▐▐ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_186132 
conv2d/StatefulPartitionedCall╝
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_18838conv2d_1_18840*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▄▄@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_186402"
 conv2d_1/StatefulPartitionedCallН
max_pooling2d/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_185762
max_pooling2d/PartitionedCallР
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_186692!
dropout/StatefulPartitionedCallЇ
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_186932
flatten/PartitionedCallм
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         Ав/* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_187132#
!dropout_1/StatefulPartitionedCallж
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_18847dense_18849*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_187412
dense/StatefulPartitionedCallЪ
%classification_head_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_classification_head_1_layer_call_and_return_conditional_losses_187622'
%classification_head_1/PartitionedCall№
IdentityIdentity.classification_head_1/PartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp:U Q
-
_output_shapes
:         рр
 
_user_specified_nameinputs
╝
^
B__inference_flatten_layer_call_and_return_conditional_losses_18693

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     ╤ 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         Ав/2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         Ав/2

Identity"
identityIdentity:output:0*.
_input_shapes
:         nn@:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
х
`
B__inference_dropout_layer_call_and_return_conditional_losses_18674

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         nn@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         nn@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         nn@:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
└
l
P__inference_classification_head_1_layer_call_and_return_conditional_losses_19234

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╞L
▌
@__inference_model_layer_call_and_return_conditional_losses_19017

inputs1
-normalization_reshape_readvariableop_resource3
/normalization_reshape_1_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpв$normalization/Reshape/ReadVariableOpв&normalization/Reshape_1/ReadVariableOpГ
cast_to_float32/CastCastinputs*

DstT0*

SrcT0*-
_output_shapes
:         рр2
cast_to_float32/CastЛ
expand_last_dim/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
expand_last_dim/ExpandDims/dim┼
expand_last_dim/ExpandDims
ExpandDimscast_to_float32/Cast:y:0'expand_last_dim/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         рр2
expand_last_dim/ExpandDims╢
$normalization/Reshape/ReadVariableOpReadVariableOp-normalization_reshape_readvariableop_resource*
_output_shapes
:*
dtype02&
$normalization/Reshape/ReadVariableOpУ
normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape/shape╛
normalization/ReshapeReshape,normalization/Reshape/ReadVariableOp:value:0$normalization/Reshape/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape╝
&normalization/Reshape_1/ReadVariableOpReadVariableOp/normalization_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization/Reshape_1/ReadVariableOpЧ
normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
normalization/Reshape_1/shape╞
normalization/Reshape_1Reshape.normalization/Reshape_1/ReadVariableOp:value:0&normalization/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
normalization/Reshape_1о
normalization/subSub#expand_last_dim/ExpandDims:output:0normalization/Reshape:output:0*
T0*1
_output_shapes
:         рр2
normalization/subГ
normalization/SqrtSqrt normalization/Reshape_1:output:0*
T0*&
_output_shapes
:2
normalization/Sqrtw
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓32
normalization/Maximum/yд
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:2
normalization/Maximumз
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*1
_output_shapes
:         рр2
normalization/truedivк
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp╬
conv2d/Conv2DConv2Dnormalization/truediv:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ *
paddingVALID*
strides
2
conv2d/Conv2Dб
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOpж
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ 2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:         ▐▐ 2
conv2d/Relu░
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp╘
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@*
paddingVALID*
strides
2
conv2d_1/Conv2Dз
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOpо
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@2
conv2d_1/BiasAdd}
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:         ▄▄@2
conv2d_1/Relu├
max_pooling2d/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:         nn@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?2
dropout/dropout/Constл
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         nn@2
dropout/dropout/Mul|
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape╘
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         nn@*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>2 
dropout/dropout/GreaterEqual/yц
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         nn@2
dropout/dropout/GreaterEqualЯ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         nn@2
dropout/dropout/Castв
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:         nn@2
dropout/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     ╤ 2
flatten/ConstФ
flatten/ReshapeReshapedropout/dropout/Mul_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:         Ав/2
flatten/Reshapew
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Constе
dropout_1/dropout/MulMulflatten/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*)
_output_shapes
:         Ав/2
dropout_1/dropout/Mulz
dropout_1/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape╘
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*)
_output_shapes
:         Ав/*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/yш
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         Ав/2 
dropout_1/dropout/GreaterEqualЯ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         Ав/2
dropout_1/dropout/Castд
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*)
_output_shapes
:         Ав/2
dropout_1/dropout/Mul_1б
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
Ав/*
dtype02
dense/MatMul/ReadVariableOpЪ
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/BiasAddУ
classification_head_1/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         2
classification_head_1/SigmoidД
IdentityIdentity!classification_head_1/Sigmoid:y:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp%^normalization/Reshape/ReadVariableOp'^normalization/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2L
$normalization/Reshape/ReadVariableOp$normalization/Reshape/ReadVariableOp2P
&normalization/Reshape_1/ReadVariableOp&normalization/Reshape_1/ReadVariableOp:U Q
-
_output_shapes
:         рр
 
_user_specified_nameinputs
╧
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_19200

inputs

identity_1\
IdentityIdentityinputs*
T0*)
_output_shapes
:         Ав/2

Identityk

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:         Ав/2

Identity_1"!

identity_1Identity_1:output:0*(
_input_shapes
:         Ав/:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
╝
^
B__inference_flatten_layer_call_and_return_conditional_losses_19178

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     ╤ 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         Ав/2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         Ав/2

Identity"
identityIdentity:output:0*.
_input_shapes
:         nn@:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
д
╒
%__inference_model_layer_call_fn_18873
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_188542
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:         рр::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
-
_output_shapes
:         рр
!
_user_specified_name	input_1
■
{
&__inference_conv2d_layer_call_fn_19125

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▐▐ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_186132
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ▐▐ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         рр::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
║
`
'__inference_dropout_layer_call_fn_19167

inputs
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_186692
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         nn@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         nn@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         nn@
 
_user_specified_nameinputs
С
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_18713

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constu
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:         Ав/2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╢
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:         Ав/*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y└
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         Ав/2
dropout/GreaterEqualБ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         Ав/2
dropout/Cast|
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:         Ав/2
dropout/Mul_1g
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:         Ав/2

Identity"
identityIdentity:output:0*(
_input_shapes
:         Ав/:Q M
)
_output_shapes
:         Ав/
 
_user_specified_nameinputs
└
l
P__inference_classification_head_1_layer_call_and_return_conditional_losses_18762

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╪

┌
A__inference_conv2d_layer_call_and_return_conditional_losses_18613

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▐▐ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ▐▐ 2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ▐▐ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         рр::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
ч8
╜
!__inference__traced_restore_19350
file_prefix'
#assignvariableop_normalization_mean-
)assignvariableop_1_normalization_variance*
&assignvariableop_2_normalization_count$
 assignvariableop_3_conv2d_kernel"
assignvariableop_4_conv2d_bias&
"assignvariableop_5_conv2d_1_kernel$
 assignvariableop_6_conv2d_1_bias#
assignvariableop_7_dense_kernel!
assignvariableop_8_dense_bias
assignvariableop_9_total
assignvariableop_10_count
assignvariableop_11_total_1
assignvariableop_12_count_1
identity_14ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*№
valueЄBяB4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesк
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesё
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityв
AssignVariableOpAssignVariableOp#assignvariableop_normalization_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1о
AssignVariableOp_1AssignVariableOp)assignvariableop_1_normalization_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2л
AssignVariableOp_2AssignVariableOp&assignvariableop_2_normalization_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3е
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4г
AssignVariableOp_4AssignVariableOpassignvariableop_4_conv2d_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5з
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6е
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv2d_1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7д
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8в
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Э
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10б
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11г
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12г
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp№
Identity_13Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_13я
Identity_14IdentityIdentity_13:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_14"#
identity_14Identity_14:output:0*I
_input_shapes8
6: :::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
В
}
(__inference_conv2d_1_layer_call_fn_19145

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▄▄@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_186402
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ▄▄@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ▐▐ ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ▐▐ 
 
_user_specified_nameinputs
┌

▄
C__inference_conv2d_1_layer_call_and_return_conditional_losses_19136

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpж
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▄▄@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ▄▄@2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ▄▄@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ▐▐ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ▐▐ 
 
_user_specified_nameinputs
к
Q
5__inference_classification_head_1_layer_call_fn_19239

inputs
identity╬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_classification_head_1_layer_call_and_return_conditional_losses_187622
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╛
serving_defaultк
A
input_16
serving_default_input_1:0         ррI
classification_head_10
StatefulPartitionedCall:0         tensorflow/serving/predict:┴Щ
ЄM
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
	optimizer
loss

signatures
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
З__call__
И_default_save_signature
+Й&call_and_return_all_conditional_losses"яI
_tf_keras_network╙I{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224]}, "dtype": "uint8", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Custom>CastToFloat32", "config": {"name": "cast_to_float32", "trainable": true, "dtype": "float32"}, "name": "cast_to_float32", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Custom>ExpandLastDim", "config": {"name": "expand_last_dim", "trainable": true, "dtype": "float32"}, "name": "expand_last_dim", "inbound_nodes": [[["cast_to_float32", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization", "inbound_nodes": [[["expand_last_dim", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["normalization", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "classification_head_1", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "name": "classification_head_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["classification_head_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 224, 224]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224]}, "dtype": "uint8", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Custom>CastToFloat32", "config": {"name": "cast_to_float32", "trainable": true, "dtype": "float32"}, "name": "cast_to_float32", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Custom>ExpandLastDim", "config": {"name": "expand_last_dim", "trainable": true, "dtype": "float32"}, "name": "expand_last_dim", "inbound_nodes": [[["cast_to_float32", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "name": "normalization", "inbound_nodes": [[["expand_last_dim", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["normalization", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "classification_head_1", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "name": "classification_head_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["classification_head_1", 0, 0]]}}, "training_config": {"loss": {"classification_head_1": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0}}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ш
#_self_saveable_object_factories"Ё
_tf_keras_input_layer╨{"class_name": "InputLayer", "name": "input_1", "dtype": "uint8", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224]}, "dtype": "uint8", "sparse": false, "ragged": false, "name": "input_1"}}
Ў
#_self_saveable_object_factories
	keras_api"┐
_tf_keras_layerе{"class_name": "Custom>CastToFloat32", "name": "cast_to_float32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "cast_to_float32", "trainable": true, "dtype": "float32"}}
Ў
#_self_saveable_object_factories
	keras_api"┐
_tf_keras_layerе{"class_name": "Custom>ExpandLastDim", "name": "expand_last_dim", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "expand_last_dim", "trainable": true, "dtype": "float32"}}
┐
state_variables
_broadcast_shape
mean
variance
	count
#_self_saveable_object_factories
 	keras_api"║
_tf_keras_layerа{"class_name": "Normalization", "name": "normalization", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 1]}}
Ц


!kernel
"bias
##_self_saveable_object_factories
$trainable_variables
%	variables
&regularization_losses
'	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"╩
_tf_keras_layer░{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 1]}}
Ь


(kernel
)bias
#*_self_saveable_object_factories
+trainable_variables
,	variables
-regularization_losses
.	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 222, 222, 32]}}
в
#/_self_saveable_object_factories
0trainable_variables
1	variables
2regularization_losses
3	keras_api
О__call__
+П&call_and_return_all_conditional_losses"ь
_tf_keras_layer╥{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Й
#4_self_saveable_object_factories
5trainable_variables
6	variables
7regularization_losses
8	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"╙
_tf_keras_layer╣{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}
Й
#9_self_saveable_object_factories
:trainable_variables
;	variables
<regularization_losses
=	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"╙
_tf_keras_layer╣{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
М
#>_self_saveable_object_factories
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"╓
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
Ь

Ckernel
Dbias
#E_self_saveable_object_factories
Ftrainable_variables
G	variables
Hregularization_losses
I	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses"╨
_tf_keras_layer╢{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 774400}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 774400]}}
С
#J_self_saveable_object_factories
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses"█
_tf_keras_layer┴{"class_name": "Activation", "name": "classification_head_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "classification_head_1", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
"
	optimizer
 "
trackable_dict_wrapper
-
Ъserving_default"
signature_map
 "
trackable_dict_wrapper
J
!0
"1
(2
)3
C4
D5"
trackable_list_wrapper
_
0
1
2
!3
"4
(5
)6
C7
D8"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
Olayer_regularization_losses
trainable_variables
Player_metrics
Qnon_trainable_variables
Rmetrics
	variables

Slayers
regularization_losses
З__call__
И_default_save_signature
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
C
mean
variance
	count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2normalization/mean
": 2normalization/variance
:	 2normalization/count
 "
trackable_dict_wrapper
"
_generic_user_object
':% 2conv2d/kernel
: 2conv2d/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Tlayer_regularization_losses
$trainable_variables
Ulayer_metrics
Vnon_trainable_variables
Wmetrics
%	variables

Xlayers
&regularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_1/kernel
:@2conv2d_1/bias
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Ylayer_regularization_losses
+trainable_variables
Zlayer_metrics
[non_trainable_variables
\metrics
,	variables

]layers
-regularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
^layer_regularization_losses
0trainable_variables
_layer_metrics
`non_trainable_variables
ametrics
1	variables

blayers
2regularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
clayer_regularization_losses
5trainable_variables
dlayer_metrics
enon_trainable_variables
fmetrics
6	variables

glayers
7regularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
hlayer_regularization_losses
:trainable_variables
ilayer_metrics
jnon_trainable_variables
kmetrics
;	variables

llayers
<regularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
mlayer_regularization_losses
?trainable_variables
nlayer_metrics
onon_trainable_variables
pmetrics
@	variables

qlayers
Aregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
 :
Ав/2dense/kernel
:2
dense/bias
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
rlayer_regularization_losses
Ftrainable_variables
slayer_metrics
tnon_trainable_variables
umetrics
G	variables

vlayers
Hregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
wlayer_regularization_losses
Ktrainable_variables
xlayer_metrics
ynon_trainable_variables
zmetrics
L	variables

{layers
Mregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╜
	~total
	count
А	variables
Б	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 

Вtotal

Гcount
Д
_fn_kwargs
Е	variables
Ж	keras_api"│
_tf_keras_metricШ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
.
~0
1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
В0
Г1"
trackable_list_wrapper
.
Е	variables"
_generic_user_object
т2▀
%__inference_model_layer_call_fn_18873
%__inference_model_layer_call_fn_19084
%__inference_model_layer_call_fn_18934
%__inference_model_layer_call_fn_19105└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ф2с
 __inference__wrapped_model_18570╝
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *,в)
'К$
input_1         рр
╬2╦
@__inference_model_layer_call_and_return_conditional_losses_19017
@__inference_model_layer_call_and_return_conditional_losses_19063
@__inference_model_layer_call_and_return_conditional_losses_18771
@__inference_model_layer_call_and_return_conditional_losses_18811└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨2═
&__inference_conv2d_layer_call_fn_19125в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_conv2d_layer_call_and_return_conditional_losses_19116в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_conv2d_1_layer_call_fn_19145в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_19136в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Х2Т
-__inference_max_pooling2d_layer_call_fn_18582р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
░2н
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18576р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
М2Й
'__inference_dropout_layer_call_fn_19172
'__inference_dropout_layer_call_fn_19167┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
┬2┐
B__inference_dropout_layer_call_and_return_conditional_losses_19162
B__inference_dropout_layer_call_and_return_conditional_losses_19157┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_flatten_layer_call_fn_19183в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_flatten_layer_call_and_return_conditional_losses_19178в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Р2Н
)__inference_dropout_1_layer_call_fn_19210
)__inference_dropout_1_layer_call_fn_19205┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╞2├
D__inference_dropout_1_layer_call_and_return_conditional_losses_19195
D__inference_dropout_1_layer_call_and_return_conditional_losses_19200┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╧2╠
%__inference_dense_layer_call_fn_19229в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_dense_layer_call_and_return_conditional_losses_19220в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▀2▄
5__inference_classification_head_1_layer_call_fn_19239в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·2ў
P__inference_classification_head_1_layer_call_and_return_conditional_losses_19234в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╩B╟
#__inference_signature_wrapper_18957input_1"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ╢
 __inference__wrapped_model_18570С!"()CD6в3
,в)
'К$
input_1         рр
к "MкJ
H
classification_head_1/К,
classification_head_1         м
P__inference_classification_head_1_layer_call_and_return_conditional_losses_19234X/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ Д
5__inference_classification_head_1_layer_call_fn_19239K/в,
%в"
 К
inputs         
к "К         ╖
C__inference_conv2d_1_layer_call_and_return_conditional_losses_19136p()9в6
/в,
*К'
inputs         ▐▐ 
к "/в,
%К"
0         ▄▄@
Ъ П
(__inference_conv2d_1_layer_call_fn_19145c()9в6
/в,
*К'
inputs         ▐▐ 
к ""К         ▄▄@╡
A__inference_conv2d_layer_call_and_return_conditional_losses_19116p!"9в6
/в,
*К'
inputs         рр
к "/в,
%К"
0         ▐▐ 
Ъ Н
&__inference_conv2d_layer_call_fn_19125c!"9в6
/в,
*К'
inputs         рр
к ""К         ▐▐ в
@__inference_dense_layer_call_and_return_conditional_losses_19220^CD1в.
'в$
"К
inputs         Ав/
к "%в"
К
0         
Ъ z
%__inference_dense_layer_call_fn_19229QCD1в.
'в$
"К
inputs         Ав/
к "К         и
D__inference_dropout_1_layer_call_and_return_conditional_losses_19195`5в2
+в(
"К
inputs         Ав/
p
к "'в$
К
0         Ав/
Ъ и
D__inference_dropout_1_layer_call_and_return_conditional_losses_19200`5в2
+в(
"К
inputs         Ав/
p 
к "'в$
К
0         Ав/
Ъ А
)__inference_dropout_1_layer_call_fn_19205S5в2
+в(
"К
inputs         Ав/
p
к "К         Ав/А
)__inference_dropout_1_layer_call_fn_19210S5в2
+в(
"К
inputs         Ав/
p 
к "К         Ав/▓
B__inference_dropout_layer_call_and_return_conditional_losses_19157l;в8
1в.
(К%
inputs         nn@
p
к "-в*
#К 
0         nn@
Ъ ▓
B__inference_dropout_layer_call_and_return_conditional_losses_19162l;в8
1в.
(К%
inputs         nn@
p 
к "-в*
#К 
0         nn@
Ъ К
'__inference_dropout_layer_call_fn_19167_;в8
1в.
(К%
inputs         nn@
p
к " К         nn@К
'__inference_dropout_layer_call_fn_19172_;в8
1в.
(К%
inputs         nn@
p 
к " К         nn@и
B__inference_flatten_layer_call_and_return_conditional_losses_19178b7в4
-в*
(К%
inputs         nn@
к "'в$
К
0         Ав/
Ъ А
'__inference_flatten_layer_call_fn_19183U7в4
-в*
(К%
inputs         nn@
к "К         Ав/ы
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18576ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ├
-__inference_max_pooling2d_layer_call_fn_18582СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╡
@__inference_model_layer_call_and_return_conditional_losses_18771q!"()CD>в;
4в1
'К$
input_1         рр
p

 
к "%в"
К
0         
Ъ ╡
@__inference_model_layer_call_and_return_conditional_losses_18811q!"()CD>в;
4в1
'К$
input_1         рр
p 

 
к "%в"
К
0         
Ъ ┤
@__inference_model_layer_call_and_return_conditional_losses_19017p!"()CD=в:
3в0
&К#
inputs         рр
p

 
к "%в"
К
0         
Ъ ┤
@__inference_model_layer_call_and_return_conditional_losses_19063p!"()CD=в:
3в0
&К#
inputs         рр
p 

 
к "%в"
К
0         
Ъ Н
%__inference_model_layer_call_fn_18873d!"()CD>в;
4в1
'К$
input_1         рр
p

 
к "К         Н
%__inference_model_layer_call_fn_18934d!"()CD>в;
4в1
'К$
input_1         рр
p 

 
к "К         М
%__inference_model_layer_call_fn_19084c!"()CD=в:
3в0
&К#
inputs         рр
p

 
к "К         М
%__inference_model_layer_call_fn_19105c!"()CD=в:
3в0
&К#
inputs         рр
p 

 
к "К         ─
#__inference_signature_wrapper_18957Ь!"()CDAв>
в 
7к4
2
input_1'К$
input_1         рр"MкJ
H
classification_head_1/К,
classification_head_1         