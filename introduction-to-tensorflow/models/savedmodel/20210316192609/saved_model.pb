??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??

?
sequential/h1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_namesequential/h1/kernel
}
(sequential/h1/kernel/Read/ReadVariableOpReadVariableOpsequential/h1/kernel*
_output_shapes

: *
dtype0
|
sequential/h1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namesequential/h1/bias
u
&sequential/h1/bias/Read/ReadVariableOpReadVariableOpsequential/h1/bias*
_output_shapes
: *
dtype0
?
sequential/h2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_namesequential/h2/kernel
}
(sequential/h2/kernel/Read/ReadVariableOpReadVariableOpsequential/h2/kernel*
_output_shapes

: *
dtype0
|
sequential/h2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namesequential/h2/bias
u
&sequential/h2/bias/Read/ReadVariableOpReadVariableOpsequential/h2/bias*
_output_shapes
:*
dtype0
?
sequential/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_namesequential/output/kernel
?
,sequential/output/kernel/Read/ReadVariableOpReadVariableOpsequential/output/kernel*
_output_shapes

:*
dtype0
?
sequential/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namesequential/output/bias
}
*sequential/output/bias/Read/ReadVariableOpReadVariableOpsequential/output/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
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
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/sequential/h1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameAdam/sequential/h1/kernel/m
?
/Adam/sequential/h1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/h1/kernel/m*
_output_shapes

: *
dtype0
?
Adam/sequential/h1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/sequential/h1/bias/m
?
-Adam/sequential/h1/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/h1/bias/m*
_output_shapes
: *
dtype0
?
Adam/sequential/h2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameAdam/sequential/h2/kernel/m
?
/Adam/sequential/h2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/h2/kernel/m*
_output_shapes

: *
dtype0
?
Adam/sequential/h2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/sequential/h2/bias/m
?
-Adam/sequential/h2/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/h2/bias/m*
_output_shapes
:*
dtype0
?
Adam/sequential/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!Adam/sequential/output/kernel/m
?
3Adam/sequential/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/output/kernel/m*
_output_shapes

:*
dtype0
?
Adam/sequential/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/sequential/output/bias/m
?
1Adam/sequential/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/output/bias/m*
_output_shapes
:*
dtype0
?
Adam/sequential/h1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameAdam/sequential/h1/kernel/v
?
/Adam/sequential/h1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/h1/kernel/v*
_output_shapes

: *
dtype0
?
Adam/sequential/h1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/sequential/h1/bias/v
?
-Adam/sequential/h1/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/h1/bias/v*
_output_shapes
: *
dtype0
?
Adam/sequential/h2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameAdam/sequential/h2/kernel/v
?
/Adam/sequential/h2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/h2/kernel/v*
_output_shapes

: *
dtype0
?
Adam/sequential/h2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/sequential/h2/bias/v
?
-Adam/sequential/h2/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/h2/bias/v*
_output_shapes
:*
dtype0
?
Adam/sequential/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!Adam/sequential/output/kernel/v
?
3Adam/sequential/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/output/kernel/v*
_output_shapes

:*
dtype0
?
Adam/sequential/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/sequential/output/bias/v
?
1Adam/sequential/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?*
value?*B?* B?*
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
_build_input_shape
trainable_variables
regularization_losses
		variables

	keras_api

signatures
x
_feature_columns

_resources
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemSmTmUmVmWmXvYvZv[v\v]v^
 
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
?
)metrics
trainable_variables
regularization_losses
*layer_regularization_losses

+layers
		variables
,non_trainable_variables
-layer_metrics
 
 
 
 
 
 
?
.metrics
trainable_variables
regularization_losses
/layer_regularization_losses

0layers
	variables
1non_trainable_variables
2layer_metrics
`^
VARIABLE_VALUEsequential/h1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEsequential/h1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
3metrics
trainable_variables
regularization_losses
4layer_regularization_losses

5layers
	variables
6non_trainable_variables
7layer_metrics
`^
VARIABLE_VALUEsequential/h2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEsequential/h2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
8metrics
trainable_variables
regularization_losses
9layer_regularization_losses

:layers
	variables
;non_trainable_variables
<layer_metrics
db
VARIABLE_VALUEsequential/output/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEsequential/output/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
=metrics
 trainable_variables
!regularization_losses
>layer_regularization_losses

?layers
"	variables
@non_trainable_variables
Alayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

B0
C1
D2
 

0
1
2
3
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
4
	Etotal
	Fcount
G	variables
H	keras_api
D
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api
D
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

G	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

I0
J1

L	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

Q	variables
??
VARIABLE_VALUEAdam/sequential/h1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/sequential/h1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/h2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/sequential/h2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/output/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/output/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/h1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/sequential/h1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/h2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/sequential/h2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/output/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/sequential/output/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_dropoff_latitudePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
!serving_default_dropoff_longitudePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
v
serving_default_keyPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_passenger_countPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_pickup_datetimePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_pickup_latitudePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
 serving_default_pickup_longitudePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_dropoff_latitude!serving_default_dropoff_longitudeserving_default_keyserving_default_passenger_countserving_default_pickup_datetimeserving_default_pickup_latitude serving_default_pickup_longitudesequential/h1/kernelsequential/h1/biassequential/h2/kernelsequential/h2/biassequential/output/kernelsequential/output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_6829
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(sequential/h1/kernel/Read/ReadVariableOp&sequential/h1/bias/Read/ReadVariableOp(sequential/h2/kernel/Read/ReadVariableOp&sequential/h2/bias/Read/ReadVariableOp,sequential/output/kernel/Read/ReadVariableOp*sequential/output/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp/Adam/sequential/h1/kernel/m/Read/ReadVariableOp-Adam/sequential/h1/bias/m/Read/ReadVariableOp/Adam/sequential/h2/kernel/m/Read/ReadVariableOp-Adam/sequential/h2/bias/m/Read/ReadVariableOp3Adam/sequential/output/kernel/m/Read/ReadVariableOp1Adam/sequential/output/bias/m/Read/ReadVariableOp/Adam/sequential/h1/kernel/v/Read/ReadVariableOp-Adam/sequential/h1/bias/v/Read/ReadVariableOp/Adam/sequential/h2/kernel/v/Read/ReadVariableOp-Adam/sequential/h2/bias/v/Read/ReadVariableOp3Adam/sequential/output/kernel/v/Read/ReadVariableOp1Adam/sequential/output/bias/v/Read/ReadVariableOpConst**
Tin#
!2	*
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
GPU 2J 8? *&
f!R
__inference__traced_save_7510
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamesequential/h1/kernelsequential/h1/biassequential/h2/kernelsequential/h2/biassequential/output/kernelsequential/output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/sequential/h1/kernel/mAdam/sequential/h1/bias/mAdam/sequential/h2/kernel/mAdam/sequential/h2/bias/mAdam/sequential/output/kernel/mAdam/sequential/output/bias/mAdam/sequential/h1/kernel/vAdam/sequential/h1/bias/vAdam/sequential/h2/kernel/vAdam/sequential/h2/bias/vAdam/sequential/output/kernel/vAdam/sequential/output/bias/v*)
Tin"
 2*
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
GPU 2J 8? *)
f$R"
 __inference__traced_restore_7607??	
?	
?
<__inference_h2_layer_call_and_return_conditional_losses_6628

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_6732

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
h1_6716
h1_6718
h2_6721
h2_6723
output_6726
output_6728
identity??h1/StatefulPartitionedCall?h2/StatefulPartitionedCall?output/StatefulPartitionedCall?
dense_features/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_features_layer_call_and_return_conditional_losses_65132 
dense_features/PartitionedCall?
h1/StatefulPartitionedCallStatefulPartitionedCall'dense_features/PartitionedCall:output:0h1_6716h1_6718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_h1_layer_call_and_return_conditional_losses_66012
h1/StatefulPartitionedCall?
h2/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0h2_6721h2_6723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_h2_layer_call_and_return_conditional_losses_66282
h2/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall#h2/StatefulPartitionedCall:output:0output_6726output_6728*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_66542 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?z
?
__inference__wrapped_model_6450
dropoff_latitude
dropoff_longitude
key
passenger_count
pickup_datetime
pickup_latitude
pickup_longitude0
,sequential_h1_matmul_readvariableop_resource1
-sequential_h1_biasadd_readvariableop_resource0
,sequential_h2_matmul_readvariableop_resource1
-sequential_h2_biasadd_readvariableop_resource4
0sequential_output_matmul_readvariableop_resource5
1sequential_output_biasadd_readvariableop_resource
identity??$sequential/h1/BiasAdd/ReadVariableOp?#sequential/h1/MatMul/ReadVariableOp?$sequential/h2/BiasAdd/ReadVariableOp?#sequential/h2/MatMul/ReadVariableOp?(sequential/output/BiasAdd/ReadVariableOp?'sequential/output/MatMul/ReadVariableOp?
0sequential/dense_features/dropoff_latitude/ShapeShapedropoff_latitude*
T0*
_output_shapes
:22
0sequential/dense_features/dropoff_latitude/Shape?
>sequential/dense_features/dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential/dense_features/dropoff_latitude/strided_slice/stack?
@sequential/dense_features/dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential/dense_features/dropoff_latitude/strided_slice/stack_1?
@sequential/dense_features/dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential/dense_features/dropoff_latitude/strided_slice/stack_2?
8sequential/dense_features/dropoff_latitude/strided_sliceStridedSlice9sequential/dense_features/dropoff_latitude/Shape:output:0Gsequential/dense_features/dropoff_latitude/strided_slice/stack:output:0Isequential/dense_features/dropoff_latitude/strided_slice/stack_1:output:0Isequential/dense_features/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential/dense_features/dropoff_latitude/strided_slice?
:sequential/dense_features/dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2<
:sequential/dense_features/dropoff_latitude/Reshape/shape/1?
8sequential/dense_features/dropoff_latitude/Reshape/shapePackAsequential/dense_features/dropoff_latitude/strided_slice:output:0Csequential/dense_features/dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2:
8sequential/dense_features/dropoff_latitude/Reshape/shape?
2sequential/dense_features/dropoff_latitude/ReshapeReshapedropoff_latitudeAsequential/dense_features/dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????24
2sequential/dense_features/dropoff_latitude/Reshape?
1sequential/dense_features/dropoff_longitude/ShapeShapedropoff_longitude*
T0*
_output_shapes
:23
1sequential/dense_features/dropoff_longitude/Shape?
?sequential/dense_features/dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?sequential/dense_features/dropoff_longitude/strided_slice/stack?
Asequential/dense_features/dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/dense_features/dropoff_longitude/strided_slice/stack_1?
Asequential/dense_features/dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential/dense_features/dropoff_longitude/strided_slice/stack_2?
9sequential/dense_features/dropoff_longitude/strided_sliceStridedSlice:sequential/dense_features/dropoff_longitude/Shape:output:0Hsequential/dense_features/dropoff_longitude/strided_slice/stack:output:0Jsequential/dense_features/dropoff_longitude/strided_slice/stack_1:output:0Jsequential/dense_features/dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9sequential/dense_features/dropoff_longitude/strided_slice?
;sequential/dense_features/dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;sequential/dense_features/dropoff_longitude/Reshape/shape/1?
9sequential/dense_features/dropoff_longitude/Reshape/shapePackBsequential/dense_features/dropoff_longitude/strided_slice:output:0Dsequential/dense_features/dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2;
9sequential/dense_features/dropoff_longitude/Reshape/shape?
3sequential/dense_features/dropoff_longitude/ReshapeReshapedropoff_longitudeBsequential/dense_features/dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????25
3sequential/dense_features/dropoff_longitude/Reshape?
/sequential/dense_features/passenger_count/ShapeShapepassenger_count*
T0*
_output_shapes
:21
/sequential/dense_features/passenger_count/Shape?
=sequential/dense_features/passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential/dense_features/passenger_count/strided_slice/stack?
?sequential/dense_features/passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/passenger_count/strided_slice/stack_1?
?sequential/dense_features/passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/passenger_count/strided_slice/stack_2?
7sequential/dense_features/passenger_count/strided_sliceStridedSlice8sequential/dense_features/passenger_count/Shape:output:0Fsequential/dense_features/passenger_count/strided_slice/stack:output:0Hsequential/dense_features/passenger_count/strided_slice/stack_1:output:0Hsequential/dense_features/passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential/dense_features/passenger_count/strided_slice?
9sequential/dense_features/passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2;
9sequential/dense_features/passenger_count/Reshape/shape/1?
7sequential/dense_features/passenger_count/Reshape/shapePack@sequential/dense_features/passenger_count/strided_slice:output:0Bsequential/dense_features/passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:29
7sequential/dense_features/passenger_count/Reshape/shape?
1sequential/dense_features/passenger_count/ReshapeReshapepassenger_count@sequential/dense_features/passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????23
1sequential/dense_features/passenger_count/Reshape?
/sequential/dense_features/pickup_latitude/ShapeShapepickup_latitude*
T0*
_output_shapes
:21
/sequential/dense_features/pickup_latitude/Shape?
=sequential/dense_features/pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential/dense_features/pickup_latitude/strided_slice/stack?
?sequential/dense_features/pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/pickup_latitude/strided_slice/stack_1?
?sequential/dense_features/pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential/dense_features/pickup_latitude/strided_slice/stack_2?
7sequential/dense_features/pickup_latitude/strided_sliceStridedSlice8sequential/dense_features/pickup_latitude/Shape:output:0Fsequential/dense_features/pickup_latitude/strided_slice/stack:output:0Hsequential/dense_features/pickup_latitude/strided_slice/stack_1:output:0Hsequential/dense_features/pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential/dense_features/pickup_latitude/strided_slice?
9sequential/dense_features/pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2;
9sequential/dense_features/pickup_latitude/Reshape/shape/1?
7sequential/dense_features/pickup_latitude/Reshape/shapePack@sequential/dense_features/pickup_latitude/strided_slice:output:0Bsequential/dense_features/pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:29
7sequential/dense_features/pickup_latitude/Reshape/shape?
1sequential/dense_features/pickup_latitude/ReshapeReshapepickup_latitude@sequential/dense_features/pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????23
1sequential/dense_features/pickup_latitude/Reshape?
0sequential/dense_features/pickup_longitude/ShapeShapepickup_longitude*
T0*
_output_shapes
:22
0sequential/dense_features/pickup_longitude/Shape?
>sequential/dense_features/pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential/dense_features/pickup_longitude/strided_slice/stack?
@sequential/dense_features/pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential/dense_features/pickup_longitude/strided_slice/stack_1?
@sequential/dense_features/pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential/dense_features/pickup_longitude/strided_slice/stack_2?
8sequential/dense_features/pickup_longitude/strided_sliceStridedSlice9sequential/dense_features/pickup_longitude/Shape:output:0Gsequential/dense_features/pickup_longitude/strided_slice/stack:output:0Isequential/dense_features/pickup_longitude/strided_slice/stack_1:output:0Isequential/dense_features/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential/dense_features/pickup_longitude/strided_slice?
:sequential/dense_features/pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2<
:sequential/dense_features/pickup_longitude/Reshape/shape/1?
8sequential/dense_features/pickup_longitude/Reshape/shapePackAsequential/dense_features/pickup_longitude/strided_slice:output:0Csequential/dense_features/pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2:
8sequential/dense_features/pickup_longitude/Reshape/shape?
2sequential/dense_features/pickup_longitude/ReshapeReshapepickup_longitudeAsequential/dense_features/pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????24
2sequential/dense_features/pickup_longitude/Reshape?
%sequential/dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%sequential/dense_features/concat/axis?
 sequential/dense_features/concatConcatV2;sequential/dense_features/dropoff_latitude/Reshape:output:0<sequential/dense_features/dropoff_longitude/Reshape:output:0:sequential/dense_features/passenger_count/Reshape:output:0:sequential/dense_features/pickup_latitude/Reshape:output:0;sequential/dense_features/pickup_longitude/Reshape:output:0.sequential/dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 sequential/dense_features/concat?
#sequential/h1/MatMul/ReadVariableOpReadVariableOp,sequential_h1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02%
#sequential/h1/MatMul/ReadVariableOp?
sequential/h1/MatMulMatMul)sequential/dense_features/concat:output:0+sequential/h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/h1/MatMul?
$sequential/h1/BiasAdd/ReadVariableOpReadVariableOp-sequential_h1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$sequential/h1/BiasAdd/ReadVariableOp?
sequential/h1/BiasAddBiasAddsequential/h1/MatMul:product:0,sequential/h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/h1/BiasAdd?
sequential/h1/ReluRelusequential/h1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/h1/Relu?
#sequential/h2/MatMul/ReadVariableOpReadVariableOp,sequential_h2_matmul_readvariableop_resource*
_output_shapes

: *
dtype02%
#sequential/h2/MatMul/ReadVariableOp?
sequential/h2/MatMulMatMul sequential/h1/Relu:activations:0+sequential/h2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/h2/MatMul?
$sequential/h2/BiasAdd/ReadVariableOpReadVariableOp-sequential_h2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$sequential/h2/BiasAdd/ReadVariableOp?
sequential/h2/BiasAddBiasAddsequential/h2/MatMul:product:0,sequential/h2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/h2/BiasAdd?
sequential/h2/ReluRelusequential/h2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential/h2/Relu?
'sequential/output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'sequential/output/MatMul/ReadVariableOp?
sequential/output/MatMulMatMul sequential/h2/Relu:activations:0/sequential/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/output/MatMul?
(sequential/output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/output/BiasAdd/ReadVariableOp?
sequential/output/BiasAddBiasAdd"sequential/output/MatMul:product:00sequential/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/output/BiasAdd?
IdentityIdentity"sequential/output/BiasAdd:output:0%^sequential/h1/BiasAdd/ReadVariableOp$^sequential/h1/MatMul/ReadVariableOp%^sequential/h2/BiasAdd/ReadVariableOp$^sequential/h2/MatMul/ReadVariableOp)^sequential/output/BiasAdd/ReadVariableOp(^sequential/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::2L
$sequential/h1/BiasAdd/ReadVariableOp$sequential/h1/BiasAdd/ReadVariableOp2J
#sequential/h1/MatMul/ReadVariableOp#sequential/h1/MatMul/ReadVariableOp2L
$sequential/h2/BiasAdd/ReadVariableOp$sequential/h2/BiasAdd/ReadVariableOp2J
#sequential/h2/MatMul/ReadVariableOp#sequential/h2/MatMul/ReadVariableOp2T
(sequential/output/BiasAdd/ReadVariableOp(sequential/output/BiasAdd/ReadVariableOp2R
'sequential/output/MatMul/ReadVariableOp'sequential/output/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:LH
'
_output_shapes
:?????????

_user_specified_namekey:XT
'
_output_shapes
:?????????
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_datetime:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?B
?
H__inference_dense_features_layer_call_and_return_conditional_losses_6565
features

features_1

features_2

features_3

features_4

features_5

features_6
identityh
dropoff_latitude/ShapeShapefeatures*
T0*
_output_shapes
:2
dropoff_latitude/Shape?
$dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$dropoff_latitude/strided_slice/stack?
&dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&dropoff_latitude/strided_slice/stack_1?
&dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&dropoff_latitude/strided_slice/stack_2?
dropoff_latitude/strided_sliceStridedSlicedropoff_latitude/Shape:output:0-dropoff_latitude/strided_slice/stack:output:0/dropoff_latitude/strided_slice/stack_1:output:0/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
dropoff_latitude/strided_slice?
 dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2"
 dropoff_latitude/Reshape/shape/1?
dropoff_latitude/Reshape/shapePack'dropoff_latitude/strided_slice:output:0)dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
dropoff_latitude/Reshape/shape?
dropoff_latitude/ReshapeReshapefeatures'dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dropoff_latitude/Reshapel
dropoff_longitude/ShapeShape
features_1*
T0*
_output_shapes
:2
dropoff_longitude/Shape?
%dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%dropoff_longitude/strided_slice/stack?
'dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'dropoff_longitude/strided_slice/stack_1?
'dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'dropoff_longitude/strided_slice/stack_2?
dropoff_longitude/strided_sliceStridedSlice dropoff_longitude/Shape:output:0.dropoff_longitude/strided_slice/stack:output:00dropoff_longitude/strided_slice/stack_1:output:00dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
dropoff_longitude/strided_slice?
!dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!dropoff_longitude/Reshape/shape/1?
dropoff_longitude/Reshape/shapePack(dropoff_longitude/strided_slice:output:0*dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
dropoff_longitude/Reshape/shape?
dropoff_longitude/ReshapeReshape
features_1(dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dropoff_longitude/Reshapeh
passenger_count/ShapeShape
features_3*
T0*
_output_shapes
:2
passenger_count/Shape?
#passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#passenger_count/strided_slice/stack?
%passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%passenger_count/strided_slice/stack_1?
%passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%passenger_count/strided_slice/stack_2?
passenger_count/strided_sliceStridedSlicepassenger_count/Shape:output:0,passenger_count/strided_slice/stack:output:0.passenger_count/strided_slice/stack_1:output:0.passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
passenger_count/strided_slice?
passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
passenger_count/Reshape/shape/1?
passenger_count/Reshape/shapePack&passenger_count/strided_slice:output:0(passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
passenger_count/Reshape/shape?
passenger_count/ReshapeReshape
features_3&passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
passenger_count/Reshapeh
pickup_latitude/ShapeShape
features_5*
T0*
_output_shapes
:2
pickup_latitude/Shape?
#pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#pickup_latitude/strided_slice/stack?
%pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%pickup_latitude/strided_slice/stack_1?
%pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%pickup_latitude/strided_slice/stack_2?
pickup_latitude/strided_sliceStridedSlicepickup_latitude/Shape:output:0,pickup_latitude/strided_slice/stack:output:0.pickup_latitude/strided_slice/stack_1:output:0.pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
pickup_latitude/strided_slice?
pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
pickup_latitude/Reshape/shape/1?
pickup_latitude/Reshape/shapePack&pickup_latitude/strided_slice:output:0(pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
pickup_latitude/Reshape/shape?
pickup_latitude/ReshapeReshape
features_5&pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pickup_latitude/Reshapej
pickup_longitude/ShapeShape
features_6*
T0*
_output_shapes
:2
pickup_longitude/Shape?
$pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$pickup_longitude/strided_slice/stack?
&pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&pickup_longitude/strided_slice/stack_1?
&pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&pickup_longitude/strided_slice/stack_2?
pickup_longitude/strided_sliceStridedSlicepickup_longitude/Shape:output:0-pickup_longitude/strided_slice/stack:output:0/pickup_longitude/strided_slice/stack_1:output:0/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
pickup_longitude/strided_slice?
 pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2"
 pickup_longitude/Reshape/shape/1?
pickup_longitude/Reshape/shapePack'pickup_longitude/strided_slice:output:0)pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
pickup_longitude/Reshape/shape?
pickup_longitude/ReshapeReshape
features_6'pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pickup_longitude/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2!dropoff_latitude/Reshape:output:0"dropoff_longitude/Reshape:output:0 passenger_count/Reshape:output:0 pickup_latitude/Reshape:output:0!pickup_longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_6781

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
h1_6765
h1_6767
h2_6770
h2_6772
output_6775
output_6777
identity??h1/StatefulPartitionedCall?h2/StatefulPartitionedCall?output/StatefulPartitionedCall?
dense_features/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_features_layer_call_and_return_conditional_losses_65652 
dense_features/PartitionedCall?
h1/StatefulPartitionedCallStatefulPartitionedCall'dense_features/PartitionedCall:output:0h1_6765h1_6767*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_h1_layer_call_and_return_conditional_losses_66012
h1/StatefulPartitionedCall?
h2/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0h2_6770h2_6772*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_h2_layer_call_and_return_conditional_losses_66282
h2/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall#h2/StatefulPartitionedCall:output:0output_6775output_6777*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_66542 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
@__inference_output_layer_call_and_return_conditional_losses_7385

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?i
?
D__inference_sequential_layer_call_and_return_conditional_losses_6901
dropoff_latitude
dropoff_longitude
key
passenger_count
pickup_datetime
pickup_latitude
pickup_longitude%
!h1_matmul_readvariableop_resource&
"h1_biasadd_readvariableop_resource%
!h2_matmul_readvariableop_resource&
"h2_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??h1/BiasAdd/ReadVariableOp?h1/MatMul/ReadVariableOp?h2/BiasAdd/ReadVariableOp?h2/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?
%dense_features/dropoff_latitude/ShapeShapedropoff_latitude*
T0*
_output_shapes
:2'
%dense_features/dropoff_latitude/Shape?
3dense_features/dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_features/dropoff_latitude/strided_slice/stack?
5dense_features/dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/dropoff_latitude/strided_slice/stack_1?
5dense_features/dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/dropoff_latitude/strided_slice/stack_2?
-dense_features/dropoff_latitude/strided_sliceStridedSlice.dense_features/dropoff_latitude/Shape:output:0<dense_features/dropoff_latitude/strided_slice/stack:output:0>dense_features/dropoff_latitude/strided_slice/stack_1:output:0>dense_features/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_features/dropoff_latitude/strided_slice?
/dense_features/dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/dense_features/dropoff_latitude/Reshape/shape/1?
-dense_features/dropoff_latitude/Reshape/shapePack6dense_features/dropoff_latitude/strided_slice:output:08dense_features/dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-dense_features/dropoff_latitude/Reshape/shape?
'dense_features/dropoff_latitude/ReshapeReshapedropoff_latitude6dense_features/dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2)
'dense_features/dropoff_latitude/Reshape?
&dense_features/dropoff_longitude/ShapeShapedropoff_longitude*
T0*
_output_shapes
:2(
&dense_features/dropoff_longitude/Shape?
4dense_features/dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features/dropoff_longitude/strided_slice/stack?
6dense_features/dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/dropoff_longitude/strided_slice/stack_1?
6dense_features/dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/dropoff_longitude/strided_slice/stack_2?
.dense_features/dropoff_longitude/strided_sliceStridedSlice/dense_features/dropoff_longitude/Shape:output:0=dense_features/dropoff_longitude/strided_slice/stack:output:0?dense_features/dropoff_longitude/strided_slice/stack_1:output:0?dense_features/dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features/dropoff_longitude/strided_slice?
0dense_features/dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0dense_features/dropoff_longitude/Reshape/shape/1?
.dense_features/dropoff_longitude/Reshape/shapePack7dense_features/dropoff_longitude/strided_slice:output:09dense_features/dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features/dropoff_longitude/Reshape/shape?
(dense_features/dropoff_longitude/ReshapeReshapedropoff_longitude7dense_features/dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features/dropoff_longitude/Reshape?
$dense_features/passenger_count/ShapeShapepassenger_count*
T0*
_output_shapes
:2&
$dense_features/passenger_count/Shape?
2dense_features/passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/passenger_count/strided_slice/stack?
4dense_features/passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/passenger_count/strided_slice/stack_1?
4dense_features/passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/passenger_count/strided_slice/stack_2?
,dense_features/passenger_count/strided_sliceStridedSlice-dense_features/passenger_count/Shape:output:0;dense_features/passenger_count/strided_slice/stack:output:0=dense_features/passenger_count/strided_slice/stack_1:output:0=dense_features/passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/passenger_count/strided_slice?
.dense_features/passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/passenger_count/Reshape/shape/1?
,dense_features/passenger_count/Reshape/shapePack5dense_features/passenger_count/strided_slice:output:07dense_features/passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/passenger_count/Reshape/shape?
&dense_features/passenger_count/ReshapeReshapepassenger_count5dense_features/passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/passenger_count/Reshape?
$dense_features/pickup_latitude/ShapeShapepickup_latitude*
T0*
_output_shapes
:2&
$dense_features/pickup_latitude/Shape?
2dense_features/pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/pickup_latitude/strided_slice/stack?
4dense_features/pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/pickup_latitude/strided_slice/stack_1?
4dense_features/pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/pickup_latitude/strided_slice/stack_2?
,dense_features/pickup_latitude/strided_sliceStridedSlice-dense_features/pickup_latitude/Shape:output:0;dense_features/pickup_latitude/strided_slice/stack:output:0=dense_features/pickup_latitude/strided_slice/stack_1:output:0=dense_features/pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/pickup_latitude/strided_slice?
.dense_features/pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/pickup_latitude/Reshape/shape/1?
,dense_features/pickup_latitude/Reshape/shapePack5dense_features/pickup_latitude/strided_slice:output:07dense_features/pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/pickup_latitude/Reshape/shape?
&dense_features/pickup_latitude/ReshapeReshapepickup_latitude5dense_features/pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/pickup_latitude/Reshape?
%dense_features/pickup_longitude/ShapeShapepickup_longitude*
T0*
_output_shapes
:2'
%dense_features/pickup_longitude/Shape?
3dense_features/pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_features/pickup_longitude/strided_slice/stack?
5dense_features/pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/pickup_longitude/strided_slice/stack_1?
5dense_features/pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/pickup_longitude/strided_slice/stack_2?
-dense_features/pickup_longitude/strided_sliceStridedSlice.dense_features/pickup_longitude/Shape:output:0<dense_features/pickup_longitude/strided_slice/stack:output:0>dense_features/pickup_longitude/strided_slice/stack_1:output:0>dense_features/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_features/pickup_longitude/strided_slice?
/dense_features/pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/dense_features/pickup_longitude/Reshape/shape/1?
-dense_features/pickup_longitude/Reshape/shapePack6dense_features/pickup_longitude/strided_slice:output:08dense_features/pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-dense_features/pickup_longitude/Reshape/shape?
'dense_features/pickup_longitude/ReshapeReshapepickup_longitude6dense_features/pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2)
'dense_features/pickup_longitude/Reshape?
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dense_features/concat/axis?
dense_features/concatConcatV20dense_features/dropoff_latitude/Reshape:output:01dense_features/dropoff_longitude/Reshape:output:0/dense_features/passenger_count/Reshape:output:0/dense_features/pickup_latitude/Reshape:output:00dense_features/pickup_longitude/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
dense_features/concat?
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
h1/MatMul/ReadVariableOp?
	h1/MatMulMatMuldense_features/concat:output:0 h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
	h1/MatMul?
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
h1/BiasAdd/ReadVariableOp?

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2

h1/BiasAdda
h1/ReluReluh1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2	
h1/Relu?
h2/MatMul/ReadVariableOpReadVariableOp!h2_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
h2/MatMul/ReadVariableOp?
	h2/MatMulMatMulh1/Relu:activations:0 h2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
	h2/MatMul?
h2/BiasAdd/ReadVariableOpReadVariableOp"h2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
h2/BiasAdd/ReadVariableOp?

h2/BiasAddBiasAddh2/MatMul:product:0!h2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

h2/BiasAdda
h2/ReluReluh2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
h2/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulh2/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^h2/BiasAdd/ReadVariableOp^h2/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
h2/BiasAdd/ReadVariableOph2/BiasAdd/ReadVariableOp24
h2/MatMul/ReadVariableOph2/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:LH
'
_output_shapes
:?????????

_user_specified_namekey:XT
'
_output_shapes
:?????????
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_datetime:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?
v
!__inference_h1_layer_call_fn_7355

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_h1_layer_call_and_return_conditional_losses_66012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_7209
inputs_dropoff_latitude
inputs_dropoff_longitude

inputs_key
inputs_passenger_count
inputs_pickup_datetime
inputs_pickup_latitude
inputs_pickup_longitude
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_dropoff_latitudeinputs_dropoff_longitude
inputs_keyinputs_passenger_countinputs_pickup_datetimeinputs_pickup_latitudeinputs_pickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_67812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
'
_output_shapes
:?????????
1
_user_specified_nameinputs/dropoff_latitude:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/dropoff_longitude:SO
'
_output_shapes
:?????????
$
_user_specified_name
inputs/key:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/passenger_count:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_datetime:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_latitude:`\
'
_output_shapes
:?????????
1
_user_specified_nameinputs/pickup_longitude
?	
?
<__inference_h1_layer_call_and_return_conditional_losses_7346

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?B
?
H__inference_dense_features_layer_call_and_return_conditional_losses_6513
features

features_1

features_2

features_3

features_4

features_5

features_6
identityh
dropoff_latitude/ShapeShapefeatures*
T0*
_output_shapes
:2
dropoff_latitude/Shape?
$dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$dropoff_latitude/strided_slice/stack?
&dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&dropoff_latitude/strided_slice/stack_1?
&dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&dropoff_latitude/strided_slice/stack_2?
dropoff_latitude/strided_sliceStridedSlicedropoff_latitude/Shape:output:0-dropoff_latitude/strided_slice/stack:output:0/dropoff_latitude/strided_slice/stack_1:output:0/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
dropoff_latitude/strided_slice?
 dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2"
 dropoff_latitude/Reshape/shape/1?
dropoff_latitude/Reshape/shapePack'dropoff_latitude/strided_slice:output:0)dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
dropoff_latitude/Reshape/shape?
dropoff_latitude/ReshapeReshapefeatures'dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dropoff_latitude/Reshapel
dropoff_longitude/ShapeShape
features_1*
T0*
_output_shapes
:2
dropoff_longitude/Shape?
%dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%dropoff_longitude/strided_slice/stack?
'dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'dropoff_longitude/strided_slice/stack_1?
'dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'dropoff_longitude/strided_slice/stack_2?
dropoff_longitude/strided_sliceStridedSlice dropoff_longitude/Shape:output:0.dropoff_longitude/strided_slice/stack:output:00dropoff_longitude/strided_slice/stack_1:output:00dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
dropoff_longitude/strided_slice?
!dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!dropoff_longitude/Reshape/shape/1?
dropoff_longitude/Reshape/shapePack(dropoff_longitude/strided_slice:output:0*dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
dropoff_longitude/Reshape/shape?
dropoff_longitude/ReshapeReshape
features_1(dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dropoff_longitude/Reshapeh
passenger_count/ShapeShape
features_3*
T0*
_output_shapes
:2
passenger_count/Shape?
#passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#passenger_count/strided_slice/stack?
%passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%passenger_count/strided_slice/stack_1?
%passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%passenger_count/strided_slice/stack_2?
passenger_count/strided_sliceStridedSlicepassenger_count/Shape:output:0,passenger_count/strided_slice/stack:output:0.passenger_count/strided_slice/stack_1:output:0.passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
passenger_count/strided_slice?
passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
passenger_count/Reshape/shape/1?
passenger_count/Reshape/shapePack&passenger_count/strided_slice:output:0(passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
passenger_count/Reshape/shape?
passenger_count/ReshapeReshape
features_3&passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
passenger_count/Reshapeh
pickup_latitude/ShapeShape
features_5*
T0*
_output_shapes
:2
pickup_latitude/Shape?
#pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#pickup_latitude/strided_slice/stack?
%pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%pickup_latitude/strided_slice/stack_1?
%pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%pickup_latitude/strided_slice/stack_2?
pickup_latitude/strided_sliceStridedSlicepickup_latitude/Shape:output:0,pickup_latitude/strided_slice/stack:output:0.pickup_latitude/strided_slice/stack_1:output:0.pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
pickup_latitude/strided_slice?
pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
pickup_latitude/Reshape/shape/1?
pickup_latitude/Reshape/shapePack&pickup_latitude/strided_slice:output:0(pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
pickup_latitude/Reshape/shape?
pickup_latitude/ReshapeReshape
features_5&pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pickup_latitude/Reshapej
pickup_longitude/ShapeShape
features_6*
T0*
_output_shapes
:2
pickup_longitude/Shape?
$pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$pickup_longitude/strided_slice/stack?
&pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&pickup_longitude/strided_slice/stack_1?
&pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&pickup_longitude/strided_slice/stack_2?
pickup_longitude/strided_sliceStridedSlicepickup_longitude/Shape:output:0-pickup_longitude/strided_slice/stack:output:0/pickup_longitude/strided_slice/stack_1:output:0/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
pickup_longitude/strided_slice?
 pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2"
 pickup_longitude/Reshape/shape/1?
pickup_longitude/Reshape/shapePack'pickup_longitude/strided_slice:output:0)pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
pickup_longitude/Reshape/shape?
pickup_longitude/ReshapeReshape
features_6'pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pickup_longitude/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2!dropoff_latitude/Reshape:output:0"dropoff_longitude/Reshape:output:0 passenger_count/Reshape:output:0 pickup_latitude/Reshape:output:0!pickup_longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features:QM
'
_output_shapes
:?????????
"
_user_specified_name
features
?
v
!__inference_h2_layer_call_fn_7375

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_h2_layer_call_and_return_conditional_losses_66282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?E
?
H__inference_dense_features_layer_call_and_return_conditional_losses_7313
features_dropoff_latitude
features_dropoff_longitude
features_key
features_passenger_count
features_pickup_datetime
features_pickup_latitude
features_pickup_longitude
identityy
dropoff_latitude/ShapeShapefeatures_dropoff_latitude*
T0*
_output_shapes
:2
dropoff_latitude/Shape?
$dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$dropoff_latitude/strided_slice/stack?
&dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&dropoff_latitude/strided_slice/stack_1?
&dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&dropoff_latitude/strided_slice/stack_2?
dropoff_latitude/strided_sliceStridedSlicedropoff_latitude/Shape:output:0-dropoff_latitude/strided_slice/stack:output:0/dropoff_latitude/strided_slice/stack_1:output:0/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
dropoff_latitude/strided_slice?
 dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2"
 dropoff_latitude/Reshape/shape/1?
dropoff_latitude/Reshape/shapePack'dropoff_latitude/strided_slice:output:0)dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
dropoff_latitude/Reshape/shape?
dropoff_latitude/ReshapeReshapefeatures_dropoff_latitude'dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dropoff_latitude/Reshape|
dropoff_longitude/ShapeShapefeatures_dropoff_longitude*
T0*
_output_shapes
:2
dropoff_longitude/Shape?
%dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%dropoff_longitude/strided_slice/stack?
'dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'dropoff_longitude/strided_slice/stack_1?
'dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'dropoff_longitude/strided_slice/stack_2?
dropoff_longitude/strided_sliceStridedSlice dropoff_longitude/Shape:output:0.dropoff_longitude/strided_slice/stack:output:00dropoff_longitude/strided_slice/stack_1:output:00dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
dropoff_longitude/strided_slice?
!dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!dropoff_longitude/Reshape/shape/1?
dropoff_longitude/Reshape/shapePack(dropoff_longitude/strided_slice:output:0*dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
dropoff_longitude/Reshape/shape?
dropoff_longitude/ReshapeReshapefeatures_dropoff_longitude(dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dropoff_longitude/Reshapev
passenger_count/ShapeShapefeatures_passenger_count*
T0*
_output_shapes
:2
passenger_count/Shape?
#passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#passenger_count/strided_slice/stack?
%passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%passenger_count/strided_slice/stack_1?
%passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%passenger_count/strided_slice/stack_2?
passenger_count/strided_sliceStridedSlicepassenger_count/Shape:output:0,passenger_count/strided_slice/stack:output:0.passenger_count/strided_slice/stack_1:output:0.passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
passenger_count/strided_slice?
passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
passenger_count/Reshape/shape/1?
passenger_count/Reshape/shapePack&passenger_count/strided_slice:output:0(passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
passenger_count/Reshape/shape?
passenger_count/ReshapeReshapefeatures_passenger_count&passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
passenger_count/Reshapev
pickup_latitude/ShapeShapefeatures_pickup_latitude*
T0*
_output_shapes
:2
pickup_latitude/Shape?
#pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#pickup_latitude/strided_slice/stack?
%pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%pickup_latitude/strided_slice/stack_1?
%pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%pickup_latitude/strided_slice/stack_2?
pickup_latitude/strided_sliceStridedSlicepickup_latitude/Shape:output:0,pickup_latitude/strided_slice/stack:output:0.pickup_latitude/strided_slice/stack_1:output:0.pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
pickup_latitude/strided_slice?
pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
pickup_latitude/Reshape/shape/1?
pickup_latitude/Reshape/shapePack&pickup_latitude/strided_slice:output:0(pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
pickup_latitude/Reshape/shape?
pickup_latitude/ReshapeReshapefeatures_pickup_latitude&pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pickup_latitude/Reshapey
pickup_longitude/ShapeShapefeatures_pickup_longitude*
T0*
_output_shapes
:2
pickup_longitude/Shape?
$pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$pickup_longitude/strided_slice/stack?
&pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&pickup_longitude/strided_slice/stack_1?
&pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&pickup_longitude/strided_slice/stack_2?
pickup_longitude/strided_sliceStridedSlicepickup_longitude/Shape:output:0-pickup_longitude/strided_slice/stack:output:0/pickup_longitude/strided_slice/stack_1:output:0/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
pickup_longitude/strided_slice?
 pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2"
 pickup_longitude/Reshape/shape/1?
pickup_longitude/Reshape/shapePack'pickup_longitude/strided_slice:output:0)pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
pickup_longitude/Reshape/shape?
pickup_longitude/ReshapeReshapefeatures_pickup_longitude'pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pickup_longitude/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2!dropoff_latitude/Reshape:output:0"dropoff_longitude/Reshape:output:0 passenger_count/Reshape:output:0 pickup_latitude/Reshape:output:0!pickup_longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:b ^
'
_output_shapes
:?????????
3
_user_specified_namefeatures/dropoff_latitude:c_
'
_output_shapes
:?????????
4
_user_specified_namefeatures/dropoff_longitude:UQ
'
_output_shapes
:?????????
&
_user_specified_namefeatures/key:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/passenger_count:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_datetime:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_latitude:b^
'
_output_shapes
:?????????
3
_user_specified_namefeatures/pickup_longitude
?
?
)__inference_sequential_layer_call_fn_6996
dropoff_latitude
dropoff_longitude
key
passenger_count
pickup_datetime
pickup_latitude
pickup_longitude
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudekeypassenger_countpickup_datetimepickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_67322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:LH
'
_output_shapes
:?????????

_user_specified_namekey:XT
'
_output_shapes
:?????????
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_datetime:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?i
?
D__inference_sequential_layer_call_and_return_conditional_losses_6973
dropoff_latitude
dropoff_longitude
key
passenger_count
pickup_datetime
pickup_latitude
pickup_longitude%
!h1_matmul_readvariableop_resource&
"h1_biasadd_readvariableop_resource%
!h2_matmul_readvariableop_resource&
"h2_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??h1/BiasAdd/ReadVariableOp?h1/MatMul/ReadVariableOp?h2/BiasAdd/ReadVariableOp?h2/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?
%dense_features/dropoff_latitude/ShapeShapedropoff_latitude*
T0*
_output_shapes
:2'
%dense_features/dropoff_latitude/Shape?
3dense_features/dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_features/dropoff_latitude/strided_slice/stack?
5dense_features/dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/dropoff_latitude/strided_slice/stack_1?
5dense_features/dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/dropoff_latitude/strided_slice/stack_2?
-dense_features/dropoff_latitude/strided_sliceStridedSlice.dense_features/dropoff_latitude/Shape:output:0<dense_features/dropoff_latitude/strided_slice/stack:output:0>dense_features/dropoff_latitude/strided_slice/stack_1:output:0>dense_features/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_features/dropoff_latitude/strided_slice?
/dense_features/dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/dense_features/dropoff_latitude/Reshape/shape/1?
-dense_features/dropoff_latitude/Reshape/shapePack6dense_features/dropoff_latitude/strided_slice:output:08dense_features/dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-dense_features/dropoff_latitude/Reshape/shape?
'dense_features/dropoff_latitude/ReshapeReshapedropoff_latitude6dense_features/dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2)
'dense_features/dropoff_latitude/Reshape?
&dense_features/dropoff_longitude/ShapeShapedropoff_longitude*
T0*
_output_shapes
:2(
&dense_features/dropoff_longitude/Shape?
4dense_features/dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features/dropoff_longitude/strided_slice/stack?
6dense_features/dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/dropoff_longitude/strided_slice/stack_1?
6dense_features/dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/dropoff_longitude/strided_slice/stack_2?
.dense_features/dropoff_longitude/strided_sliceStridedSlice/dense_features/dropoff_longitude/Shape:output:0=dense_features/dropoff_longitude/strided_slice/stack:output:0?dense_features/dropoff_longitude/strided_slice/stack_1:output:0?dense_features/dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features/dropoff_longitude/strided_slice?
0dense_features/dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0dense_features/dropoff_longitude/Reshape/shape/1?
.dense_features/dropoff_longitude/Reshape/shapePack7dense_features/dropoff_longitude/strided_slice:output:09dense_features/dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features/dropoff_longitude/Reshape/shape?
(dense_features/dropoff_longitude/ReshapeReshapedropoff_longitude7dense_features/dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features/dropoff_longitude/Reshape?
$dense_features/passenger_count/ShapeShapepassenger_count*
T0*
_output_shapes
:2&
$dense_features/passenger_count/Shape?
2dense_features/passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/passenger_count/strided_slice/stack?
4dense_features/passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/passenger_count/strided_slice/stack_1?
4dense_features/passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/passenger_count/strided_slice/stack_2?
,dense_features/passenger_count/strided_sliceStridedSlice-dense_features/passenger_count/Shape:output:0;dense_features/passenger_count/strided_slice/stack:output:0=dense_features/passenger_count/strided_slice/stack_1:output:0=dense_features/passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/passenger_count/strided_slice?
.dense_features/passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/passenger_count/Reshape/shape/1?
,dense_features/passenger_count/Reshape/shapePack5dense_features/passenger_count/strided_slice:output:07dense_features/passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/passenger_count/Reshape/shape?
&dense_features/passenger_count/ReshapeReshapepassenger_count5dense_features/passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/passenger_count/Reshape?
$dense_features/pickup_latitude/ShapeShapepickup_latitude*
T0*
_output_shapes
:2&
$dense_features/pickup_latitude/Shape?
2dense_features/pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/pickup_latitude/strided_slice/stack?
4dense_features/pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/pickup_latitude/strided_slice/stack_1?
4dense_features/pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/pickup_latitude/strided_slice/stack_2?
,dense_features/pickup_latitude/strided_sliceStridedSlice-dense_features/pickup_latitude/Shape:output:0;dense_features/pickup_latitude/strided_slice/stack:output:0=dense_features/pickup_latitude/strided_slice/stack_1:output:0=dense_features/pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/pickup_latitude/strided_slice?
.dense_features/pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/pickup_latitude/Reshape/shape/1?
,dense_features/pickup_latitude/Reshape/shapePack5dense_features/pickup_latitude/strided_slice:output:07dense_features/pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/pickup_latitude/Reshape/shape?
&dense_features/pickup_latitude/ReshapeReshapepickup_latitude5dense_features/pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/pickup_latitude/Reshape?
%dense_features/pickup_longitude/ShapeShapepickup_longitude*
T0*
_output_shapes
:2'
%dense_features/pickup_longitude/Shape?
3dense_features/pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_features/pickup_longitude/strided_slice/stack?
5dense_features/pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/pickup_longitude/strided_slice/stack_1?
5dense_features/pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/pickup_longitude/strided_slice/stack_2?
-dense_features/pickup_longitude/strided_sliceStridedSlice.dense_features/pickup_longitude/Shape:output:0<dense_features/pickup_longitude/strided_slice/stack:output:0>dense_features/pickup_longitude/strided_slice/stack_1:output:0>dense_features/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_features/pickup_longitude/strided_slice?
/dense_features/pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/dense_features/pickup_longitude/Reshape/shape/1?
-dense_features/pickup_longitude/Reshape/shapePack6dense_features/pickup_longitude/strided_slice:output:08dense_features/pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-dense_features/pickup_longitude/Reshape/shape?
'dense_features/pickup_longitude/ReshapeReshapepickup_longitude6dense_features/pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2)
'dense_features/pickup_longitude/Reshape?
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dense_features/concat/axis?
dense_features/concatConcatV20dense_features/dropoff_latitude/Reshape:output:01dense_features/dropoff_longitude/Reshape:output:0/dense_features/passenger_count/Reshape:output:0/dense_features/pickup_latitude/Reshape:output:00dense_features/pickup_longitude/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
dense_features/concat?
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
h1/MatMul/ReadVariableOp?
	h1/MatMulMatMuldense_features/concat:output:0 h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
	h1/MatMul?
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
h1/BiasAdd/ReadVariableOp?

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2

h1/BiasAdda
h1/ReluReluh1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2	
h1/Relu?
h2/MatMul/ReadVariableOpReadVariableOp!h2_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
h2/MatMul/ReadVariableOp?
	h2/MatMulMatMulh1/Relu:activations:0 h2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
	h2/MatMul?
h2/BiasAdd/ReadVariableOpReadVariableOp"h2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
h2/BiasAdd/ReadVariableOp?

h2/BiasAddBiasAddh2/MatMul:product:0!h2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

h2/BiasAdda
h2/ReluReluh2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
h2/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulh2/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^h2/BiasAdd/ReadVariableOp^h2/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
h2/BiasAdd/ReadVariableOph2/BiasAdd/ReadVariableOp24
h2/MatMul/ReadVariableOph2/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:LH
'
_output_shapes
:?????????

_user_specified_namekey:XT
'
_output_shapes
:?????????
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_datetime:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?	
?
<__inference_h2_layer_call_and_return_conditional_losses_7366

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?|
?
 __inference__traced_restore_7607
file_prefix)
%assignvariableop_sequential_h1_kernel)
%assignvariableop_1_sequential_h1_bias+
'assignvariableop_2_sequential_h2_kernel)
%assignvariableop_3_sequential_h2_bias/
+assignvariableop_4_sequential_output_kernel-
)assignvariableop_5_sequential_output_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_1
assignvariableop_15_total_2
assignvariableop_16_count_23
/assignvariableop_17_adam_sequential_h1_kernel_m1
-assignvariableop_18_adam_sequential_h1_bias_m3
/assignvariableop_19_adam_sequential_h2_kernel_m1
-assignvariableop_20_adam_sequential_h2_bias_m7
3assignvariableop_21_adam_sequential_output_kernel_m5
1assignvariableop_22_adam_sequential_output_bias_m3
/assignvariableop_23_adam_sequential_h1_kernel_v1
-assignvariableop_24_adam_sequential_h1_bias_v3
/assignvariableop_25_adam_sequential_h2_kernel_v1
-assignvariableop_26_adam_sequential_h2_bias_v7
3assignvariableop_27_adam_sequential_output_kernel_v5
1assignvariableop_28_adam_sequential_output_bias_v
identity_30??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_sequential_h1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp%assignvariableop_1_sequential_h1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp'assignvariableop_2_sequential_h2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp%assignvariableop_3_sequential_h2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp+assignvariableop_4_sequential_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp)assignvariableop_5_sequential_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp/assignvariableop_17_adam_sequential_h1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp-assignvariableop_18_adam_sequential_h1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp/assignvariableop_19_adam_sequential_h2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_adam_sequential_h2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp3assignvariableop_21_adam_sequential_output_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp1assignvariableop_22_adam_sequential_output_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_sequential_h1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp-assignvariableop_24_adam_sequential_h1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_adam_sequential_h2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_adam_sequential_h2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp3assignvariableop_27_adam_sequential_output_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp1assignvariableop_28_adam_sequential_output_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_289
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_29?
Identity_30IdentityIdentity_29:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_30"#
identity_30Identity_30:output:0*?
_input_shapesx
v: :::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
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
?A
?
__inference__traced_save_7510
file_prefix3
/savev2_sequential_h1_kernel_read_readvariableop1
-savev2_sequential_h1_bias_read_readvariableop3
/savev2_sequential_h2_kernel_read_readvariableop1
-savev2_sequential_h2_bias_read_readvariableop7
3savev2_sequential_output_kernel_read_readvariableop5
1savev2_sequential_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop:
6savev2_adam_sequential_h1_kernel_m_read_readvariableop8
4savev2_adam_sequential_h1_bias_m_read_readvariableop:
6savev2_adam_sequential_h2_kernel_m_read_readvariableop8
4savev2_adam_sequential_h2_bias_m_read_readvariableop>
:savev2_adam_sequential_output_kernel_m_read_readvariableop<
8savev2_adam_sequential_output_bias_m_read_readvariableop:
6savev2_adam_sequential_h1_kernel_v_read_readvariableop8
4savev2_adam_sequential_h1_bias_v_read_readvariableop:
6savev2_adam_sequential_h2_kernel_v_read_readvariableop8
4savev2_adam_sequential_h2_bias_v_read_readvariableop>
:savev2_adam_sequential_output_kernel_v_read_readvariableop<
8savev2_adam_sequential_output_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_sequential_h1_kernel_read_readvariableop-savev2_sequential_h1_bias_read_readvariableop/savev2_sequential_h2_kernel_read_readvariableop-savev2_sequential_h2_bias_read_readvariableop3savev2_sequential_output_kernel_read_readvariableop1savev2_sequential_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop6savev2_adam_sequential_h1_kernel_m_read_readvariableop4savev2_adam_sequential_h1_bias_m_read_readvariableop6savev2_adam_sequential_h2_kernel_m_read_readvariableop4savev2_adam_sequential_h2_bias_m_read_readvariableop:savev2_adam_sequential_output_kernel_m_read_readvariableop8savev2_adam_sequential_output_bias_m_read_readvariableop6savev2_adam_sequential_h1_kernel_v_read_readvariableop4savev2_adam_sequential_h1_bias_v_read_readvariableop6savev2_adam_sequential_h2_kernel_v_read_readvariableop4savev2_adam_sequential_h2_bias_v_read_readvariableop:savev2_adam_sequential_output_kernel_v_read_readvariableop8savev2_adam_sequential_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : :::: : : : : : : : : : : : : : :::: : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
?
-__inference_dense_features_layer_call_fn_7335
features_dropoff_latitude
features_dropoff_longitude
features_key
features_passenger_count
features_pickup_datetime
features_pickup_latitude
features_pickup_longitude
identity?
PartitionedCallPartitionedCallfeatures_dropoff_latitudefeatures_dropoff_longitudefeatures_keyfeatures_passenger_countfeatures_pickup_datetimefeatures_pickup_latitudefeatures_pickup_longitude*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_features_layer_call_and_return_conditional_losses_65652
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:b ^
'
_output_shapes
:?????????
3
_user_specified_namefeatures/dropoff_latitude:c_
'
_output_shapes
:?????????
4
_user_specified_namefeatures/dropoff_longitude:UQ
'
_output_shapes
:?????????
&
_user_specified_namefeatures/key:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/passenger_count:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_datetime:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_latitude:b^
'
_output_shapes
:?????????
3
_user_specified_namefeatures/pickup_longitude
?k
?
D__inference_sequential_layer_call_and_return_conditional_losses_7163
inputs_dropoff_latitude
inputs_dropoff_longitude

inputs_key
inputs_passenger_count
inputs_pickup_datetime
inputs_pickup_latitude
inputs_pickup_longitude%
!h1_matmul_readvariableop_resource&
"h1_biasadd_readvariableop_resource%
!h2_matmul_readvariableop_resource&
"h2_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??h1/BiasAdd/ReadVariableOp?h1/MatMul/ReadVariableOp?h2/BiasAdd/ReadVariableOp?h2/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?
%dense_features/dropoff_latitude/ShapeShapeinputs_dropoff_latitude*
T0*
_output_shapes
:2'
%dense_features/dropoff_latitude/Shape?
3dense_features/dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_features/dropoff_latitude/strided_slice/stack?
5dense_features/dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/dropoff_latitude/strided_slice/stack_1?
5dense_features/dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/dropoff_latitude/strided_slice/stack_2?
-dense_features/dropoff_latitude/strided_sliceStridedSlice.dense_features/dropoff_latitude/Shape:output:0<dense_features/dropoff_latitude/strided_slice/stack:output:0>dense_features/dropoff_latitude/strided_slice/stack_1:output:0>dense_features/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_features/dropoff_latitude/strided_slice?
/dense_features/dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/dense_features/dropoff_latitude/Reshape/shape/1?
-dense_features/dropoff_latitude/Reshape/shapePack6dense_features/dropoff_latitude/strided_slice:output:08dense_features/dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-dense_features/dropoff_latitude/Reshape/shape?
'dense_features/dropoff_latitude/ReshapeReshapeinputs_dropoff_latitude6dense_features/dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2)
'dense_features/dropoff_latitude/Reshape?
&dense_features/dropoff_longitude/ShapeShapeinputs_dropoff_longitude*
T0*
_output_shapes
:2(
&dense_features/dropoff_longitude/Shape?
4dense_features/dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features/dropoff_longitude/strided_slice/stack?
6dense_features/dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/dropoff_longitude/strided_slice/stack_1?
6dense_features/dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/dropoff_longitude/strided_slice/stack_2?
.dense_features/dropoff_longitude/strided_sliceStridedSlice/dense_features/dropoff_longitude/Shape:output:0=dense_features/dropoff_longitude/strided_slice/stack:output:0?dense_features/dropoff_longitude/strided_slice/stack_1:output:0?dense_features/dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features/dropoff_longitude/strided_slice?
0dense_features/dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0dense_features/dropoff_longitude/Reshape/shape/1?
.dense_features/dropoff_longitude/Reshape/shapePack7dense_features/dropoff_longitude/strided_slice:output:09dense_features/dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features/dropoff_longitude/Reshape/shape?
(dense_features/dropoff_longitude/ReshapeReshapeinputs_dropoff_longitude7dense_features/dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features/dropoff_longitude/Reshape?
$dense_features/passenger_count/ShapeShapeinputs_passenger_count*
T0*
_output_shapes
:2&
$dense_features/passenger_count/Shape?
2dense_features/passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/passenger_count/strided_slice/stack?
4dense_features/passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/passenger_count/strided_slice/stack_1?
4dense_features/passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/passenger_count/strided_slice/stack_2?
,dense_features/passenger_count/strided_sliceStridedSlice-dense_features/passenger_count/Shape:output:0;dense_features/passenger_count/strided_slice/stack:output:0=dense_features/passenger_count/strided_slice/stack_1:output:0=dense_features/passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/passenger_count/strided_slice?
.dense_features/passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/passenger_count/Reshape/shape/1?
,dense_features/passenger_count/Reshape/shapePack5dense_features/passenger_count/strided_slice:output:07dense_features/passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/passenger_count/Reshape/shape?
&dense_features/passenger_count/ReshapeReshapeinputs_passenger_count5dense_features/passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/passenger_count/Reshape?
$dense_features/pickup_latitude/ShapeShapeinputs_pickup_latitude*
T0*
_output_shapes
:2&
$dense_features/pickup_latitude/Shape?
2dense_features/pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/pickup_latitude/strided_slice/stack?
4dense_features/pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/pickup_latitude/strided_slice/stack_1?
4dense_features/pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/pickup_latitude/strided_slice/stack_2?
,dense_features/pickup_latitude/strided_sliceStridedSlice-dense_features/pickup_latitude/Shape:output:0;dense_features/pickup_latitude/strided_slice/stack:output:0=dense_features/pickup_latitude/strided_slice/stack_1:output:0=dense_features/pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/pickup_latitude/strided_slice?
.dense_features/pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/pickup_latitude/Reshape/shape/1?
,dense_features/pickup_latitude/Reshape/shapePack5dense_features/pickup_latitude/strided_slice:output:07dense_features/pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/pickup_latitude/Reshape/shape?
&dense_features/pickup_latitude/ReshapeReshapeinputs_pickup_latitude5dense_features/pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/pickup_latitude/Reshape?
%dense_features/pickup_longitude/ShapeShapeinputs_pickup_longitude*
T0*
_output_shapes
:2'
%dense_features/pickup_longitude/Shape?
3dense_features/pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_features/pickup_longitude/strided_slice/stack?
5dense_features/pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/pickup_longitude/strided_slice/stack_1?
5dense_features/pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/pickup_longitude/strided_slice/stack_2?
-dense_features/pickup_longitude/strided_sliceStridedSlice.dense_features/pickup_longitude/Shape:output:0<dense_features/pickup_longitude/strided_slice/stack:output:0>dense_features/pickup_longitude/strided_slice/stack_1:output:0>dense_features/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_features/pickup_longitude/strided_slice?
/dense_features/pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/dense_features/pickup_longitude/Reshape/shape/1?
-dense_features/pickup_longitude/Reshape/shapePack6dense_features/pickup_longitude/strided_slice:output:08dense_features/pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-dense_features/pickup_longitude/Reshape/shape?
'dense_features/pickup_longitude/ReshapeReshapeinputs_pickup_longitude6dense_features/pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2)
'dense_features/pickup_longitude/Reshape?
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dense_features/concat/axis?
dense_features/concatConcatV20dense_features/dropoff_latitude/Reshape:output:01dense_features/dropoff_longitude/Reshape:output:0/dense_features/passenger_count/Reshape:output:0/dense_features/pickup_latitude/Reshape:output:00dense_features/pickup_longitude/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
dense_features/concat?
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
h1/MatMul/ReadVariableOp?
	h1/MatMulMatMuldense_features/concat:output:0 h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
	h1/MatMul?
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
h1/BiasAdd/ReadVariableOp?

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2

h1/BiasAdda
h1/ReluReluh1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2	
h1/Relu?
h2/MatMul/ReadVariableOpReadVariableOp!h2_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
h2/MatMul/ReadVariableOp?
	h2/MatMulMatMulh1/Relu:activations:0 h2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
	h2/MatMul?
h2/BiasAdd/ReadVariableOpReadVariableOp"h2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
h2/BiasAdd/ReadVariableOp?

h2/BiasAddBiasAddh2/MatMul:product:0!h2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

h2/BiasAdda
h2/ReluReluh2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
h2/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulh2/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^h2/BiasAdd/ReadVariableOp^h2/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
h2/BiasAdd/ReadVariableOph2/BiasAdd/ReadVariableOp24
h2/MatMul/ReadVariableOph2/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:` \
'
_output_shapes
:?????????
1
_user_specified_nameinputs/dropoff_latitude:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/dropoff_longitude:SO
'
_output_shapes
:?????????
$
_user_specified_name
inputs/key:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/passenger_count:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_datetime:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_latitude:`\
'
_output_shapes
:?????????
1
_user_specified_nameinputs/pickup_longitude
?
?
-__inference_dense_features_layer_call_fn_7324
features_dropoff_latitude
features_dropoff_longitude
features_key
features_passenger_count
features_pickup_datetime
features_pickup_latitude
features_pickup_longitude
identity?
PartitionedCallPartitionedCallfeatures_dropoff_latitudefeatures_dropoff_longitudefeatures_keyfeatures_passenger_countfeatures_pickup_datetimefeatures_pickup_latitudefeatures_pickup_longitude*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_features_layer_call_and_return_conditional_losses_65132
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:b ^
'
_output_shapes
:?????????
3
_user_specified_namefeatures/dropoff_latitude:c_
'
_output_shapes
:?????????
4
_user_specified_namefeatures/dropoff_longitude:UQ
'
_output_shapes
:?????????
&
_user_specified_namefeatures/key:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/passenger_count:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_datetime:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_latitude:b^
'
_output_shapes
:?????????
3
_user_specified_namefeatures/pickup_longitude
?k
?
D__inference_sequential_layer_call_and_return_conditional_losses_7091
inputs_dropoff_latitude
inputs_dropoff_longitude

inputs_key
inputs_passenger_count
inputs_pickup_datetime
inputs_pickup_latitude
inputs_pickup_longitude%
!h1_matmul_readvariableop_resource&
"h1_biasadd_readvariableop_resource%
!h2_matmul_readvariableop_resource&
"h2_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??h1/BiasAdd/ReadVariableOp?h1/MatMul/ReadVariableOp?h2/BiasAdd/ReadVariableOp?h2/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?
%dense_features/dropoff_latitude/ShapeShapeinputs_dropoff_latitude*
T0*
_output_shapes
:2'
%dense_features/dropoff_latitude/Shape?
3dense_features/dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_features/dropoff_latitude/strided_slice/stack?
5dense_features/dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/dropoff_latitude/strided_slice/stack_1?
5dense_features/dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/dropoff_latitude/strided_slice/stack_2?
-dense_features/dropoff_latitude/strided_sliceStridedSlice.dense_features/dropoff_latitude/Shape:output:0<dense_features/dropoff_latitude/strided_slice/stack:output:0>dense_features/dropoff_latitude/strided_slice/stack_1:output:0>dense_features/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_features/dropoff_latitude/strided_slice?
/dense_features/dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/dense_features/dropoff_latitude/Reshape/shape/1?
-dense_features/dropoff_latitude/Reshape/shapePack6dense_features/dropoff_latitude/strided_slice:output:08dense_features/dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-dense_features/dropoff_latitude/Reshape/shape?
'dense_features/dropoff_latitude/ReshapeReshapeinputs_dropoff_latitude6dense_features/dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2)
'dense_features/dropoff_latitude/Reshape?
&dense_features/dropoff_longitude/ShapeShapeinputs_dropoff_longitude*
T0*
_output_shapes
:2(
&dense_features/dropoff_longitude/Shape?
4dense_features/dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features/dropoff_longitude/strided_slice/stack?
6dense_features/dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/dropoff_longitude/strided_slice/stack_1?
6dense_features/dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/dropoff_longitude/strided_slice/stack_2?
.dense_features/dropoff_longitude/strided_sliceStridedSlice/dense_features/dropoff_longitude/Shape:output:0=dense_features/dropoff_longitude/strided_slice/stack:output:0?dense_features/dropoff_longitude/strided_slice/stack_1:output:0?dense_features/dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features/dropoff_longitude/strided_slice?
0dense_features/dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0dense_features/dropoff_longitude/Reshape/shape/1?
.dense_features/dropoff_longitude/Reshape/shapePack7dense_features/dropoff_longitude/strided_slice:output:09dense_features/dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features/dropoff_longitude/Reshape/shape?
(dense_features/dropoff_longitude/ReshapeReshapeinputs_dropoff_longitude7dense_features/dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2*
(dense_features/dropoff_longitude/Reshape?
$dense_features/passenger_count/ShapeShapeinputs_passenger_count*
T0*
_output_shapes
:2&
$dense_features/passenger_count/Shape?
2dense_features/passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/passenger_count/strided_slice/stack?
4dense_features/passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/passenger_count/strided_slice/stack_1?
4dense_features/passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/passenger_count/strided_slice/stack_2?
,dense_features/passenger_count/strided_sliceStridedSlice-dense_features/passenger_count/Shape:output:0;dense_features/passenger_count/strided_slice/stack:output:0=dense_features/passenger_count/strided_slice/stack_1:output:0=dense_features/passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/passenger_count/strided_slice?
.dense_features/passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/passenger_count/Reshape/shape/1?
,dense_features/passenger_count/Reshape/shapePack5dense_features/passenger_count/strided_slice:output:07dense_features/passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/passenger_count/Reshape/shape?
&dense_features/passenger_count/ReshapeReshapeinputs_passenger_count5dense_features/passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/passenger_count/Reshape?
$dense_features/pickup_latitude/ShapeShapeinputs_pickup_latitude*
T0*
_output_shapes
:2&
$dense_features/pickup_latitude/Shape?
2dense_features/pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2dense_features/pickup_latitude/strided_slice/stack?
4dense_features/pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/pickup_latitude/strided_slice/stack_1?
4dense_features/pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4dense_features/pickup_latitude/strided_slice/stack_2?
,dense_features/pickup_latitude/strided_sliceStridedSlice-dense_features/pickup_latitude/Shape:output:0;dense_features/pickup_latitude/strided_slice/stack:output:0=dense_features/pickup_latitude/strided_slice/stack_1:output:0=dense_features/pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,dense_features/pickup_latitude/strided_slice?
.dense_features/pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :20
.dense_features/pickup_latitude/Reshape/shape/1?
,dense_features/pickup_latitude/Reshape/shapePack5dense_features/pickup_latitude/strided_slice:output:07dense_features/pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2.
,dense_features/pickup_latitude/Reshape/shape?
&dense_features/pickup_latitude/ReshapeReshapeinputs_pickup_latitude5dense_features/pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2(
&dense_features/pickup_latitude/Reshape?
%dense_features/pickup_longitude/ShapeShapeinputs_pickup_longitude*
T0*
_output_shapes
:2'
%dense_features/pickup_longitude/Shape?
3dense_features/pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_features/pickup_longitude/strided_slice/stack?
5dense_features/pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/pickup_longitude/strided_slice/stack_1?
5dense_features/pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_features/pickup_longitude/strided_slice/stack_2?
-dense_features/pickup_longitude/strided_sliceStridedSlice.dense_features/pickup_longitude/Shape:output:0<dense_features/pickup_longitude/strided_slice/stack:output:0>dense_features/pickup_longitude/strided_slice/stack_1:output:0>dense_features/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_features/pickup_longitude/strided_slice?
/dense_features/pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :21
/dense_features/pickup_longitude/Reshape/shape/1?
-dense_features/pickup_longitude/Reshape/shapePack6dense_features/pickup_longitude/strided_slice:output:08dense_features/pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2/
-dense_features/pickup_longitude/Reshape/shape?
'dense_features/pickup_longitude/ReshapeReshapeinputs_pickup_longitude6dense_features/pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2)
'dense_features/pickup_longitude/Reshape?
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
dense_features/concat/axis?
dense_features/concatConcatV20dense_features/dropoff_latitude/Reshape:output:01dense_features/dropoff_longitude/Reshape:output:0/dense_features/passenger_count/Reshape:output:0/dense_features/pickup_latitude/Reshape:output:00dense_features/pickup_longitude/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
dense_features/concat?
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
h1/MatMul/ReadVariableOp?
	h1/MatMulMatMuldense_features/concat:output:0 h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
	h1/MatMul?
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
h1/BiasAdd/ReadVariableOp?

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2

h1/BiasAdda
h1/ReluReluh1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2	
h1/Relu?
h2/MatMul/ReadVariableOpReadVariableOp!h2_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
h2/MatMul/ReadVariableOp?
	h2/MatMulMatMulh1/Relu:activations:0 h2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
	h2/MatMul?
h2/BiasAdd/ReadVariableOpReadVariableOp"h2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
h2/BiasAdd/ReadVariableOp?

h2/BiasAddBiasAddh2/MatMul:product:0!h2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

h2/BiasAdda
h2/ReluReluh2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
h2/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMulh2/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^h2/BiasAdd/ReadVariableOp^h2/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
h2/BiasAdd/ReadVariableOph2/BiasAdd/ReadVariableOp24
h2/MatMul/ReadVariableOph2/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:` \
'
_output_shapes
:?????????
1
_user_specified_nameinputs/dropoff_latitude:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/dropoff_longitude:SO
'
_output_shapes
:?????????
$
_user_specified_name
inputs/key:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/passenger_count:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_datetime:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_latitude:`\
'
_output_shapes
:?????????
1
_user_specified_nameinputs/pickup_longitude
?
?
"__inference_signature_wrapper_6829
dropoff_latitude
dropoff_longitude
key
passenger_count
pickup_datetime
pickup_latitude
pickup_longitude
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudekeypassenger_countpickup_datetimepickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_64502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:LH
'
_output_shapes
:?????????

_user_specified_namekey:XT
'
_output_shapes
:?????????
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_datetime:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?
?
)__inference_sequential_layer_call_fn_7186
inputs_dropoff_latitude
inputs_dropoff_longitude

inputs_key
inputs_passenger_count
inputs_pickup_datetime
inputs_pickup_latitude
inputs_pickup_longitude
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_dropoff_latitudeinputs_dropoff_longitude
inputs_keyinputs_passenger_countinputs_pickup_datetimeinputs_pickup_latitudeinputs_pickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_67322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
'
_output_shapes
:?????????
1
_user_specified_nameinputs/dropoff_latitude:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/dropoff_longitude:SO
'
_output_shapes
:?????????
$
_user_specified_name
inputs/key:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/passenger_count:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_datetime:_[
'
_output_shapes
:?????????
0
_user_specified_nameinputs/pickup_latitude:`\
'
_output_shapes
:?????????
1
_user_specified_nameinputs/pickup_longitude
?
?
)__inference_sequential_layer_call_fn_7019
dropoff_latitude
dropoff_longitude
key
passenger_count
pickup_datetime
pickup_latitude
pickup_longitude
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudekeypassenger_countpickup_datetimepickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_67812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:?????????
+
_user_specified_namedropoff_longitude:LH
'
_output_shapes
:?????????

_user_specified_namekey:XT
'
_output_shapes
:?????????
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_datetime:XT
'
_output_shapes
:?????????
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:?????????
*
_user_specified_namepickup_longitude
?E
?
H__inference_dense_features_layer_call_and_return_conditional_losses_7261
features_dropoff_latitude
features_dropoff_longitude
features_key
features_passenger_count
features_pickup_datetime
features_pickup_latitude
features_pickup_longitude
identityy
dropoff_latitude/ShapeShapefeatures_dropoff_latitude*
T0*
_output_shapes
:2
dropoff_latitude/Shape?
$dropoff_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$dropoff_latitude/strided_slice/stack?
&dropoff_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&dropoff_latitude/strided_slice/stack_1?
&dropoff_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&dropoff_latitude/strided_slice/stack_2?
dropoff_latitude/strided_sliceStridedSlicedropoff_latitude/Shape:output:0-dropoff_latitude/strided_slice/stack:output:0/dropoff_latitude/strided_slice/stack_1:output:0/dropoff_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
dropoff_latitude/strided_slice?
 dropoff_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2"
 dropoff_latitude/Reshape/shape/1?
dropoff_latitude/Reshape/shapePack'dropoff_latitude/strided_slice:output:0)dropoff_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
dropoff_latitude/Reshape/shape?
dropoff_latitude/ReshapeReshapefeatures_dropoff_latitude'dropoff_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dropoff_latitude/Reshape|
dropoff_longitude/ShapeShapefeatures_dropoff_longitude*
T0*
_output_shapes
:2
dropoff_longitude/Shape?
%dropoff_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%dropoff_longitude/strided_slice/stack?
'dropoff_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'dropoff_longitude/strided_slice/stack_1?
'dropoff_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'dropoff_longitude/strided_slice/stack_2?
dropoff_longitude/strided_sliceStridedSlice dropoff_longitude/Shape:output:0.dropoff_longitude/strided_slice/stack:output:00dropoff_longitude/strided_slice/stack_1:output:00dropoff_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
dropoff_longitude/strided_slice?
!dropoff_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!dropoff_longitude/Reshape/shape/1?
dropoff_longitude/Reshape/shapePack(dropoff_longitude/strided_slice:output:0*dropoff_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
dropoff_longitude/Reshape/shape?
dropoff_longitude/ReshapeReshapefeatures_dropoff_longitude(dropoff_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
dropoff_longitude/Reshapev
passenger_count/ShapeShapefeatures_passenger_count*
T0*
_output_shapes
:2
passenger_count/Shape?
#passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#passenger_count/strided_slice/stack?
%passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%passenger_count/strided_slice/stack_1?
%passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%passenger_count/strided_slice/stack_2?
passenger_count/strided_sliceStridedSlicepassenger_count/Shape:output:0,passenger_count/strided_slice/stack:output:0.passenger_count/strided_slice/stack_1:output:0.passenger_count/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
passenger_count/strided_slice?
passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
passenger_count/Reshape/shape/1?
passenger_count/Reshape/shapePack&passenger_count/strided_slice:output:0(passenger_count/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
passenger_count/Reshape/shape?
passenger_count/ReshapeReshapefeatures_passenger_count&passenger_count/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
passenger_count/Reshapev
pickup_latitude/ShapeShapefeatures_pickup_latitude*
T0*
_output_shapes
:2
pickup_latitude/Shape?
#pickup_latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#pickup_latitude/strided_slice/stack?
%pickup_latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%pickup_latitude/strided_slice/stack_1?
%pickup_latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%pickup_latitude/strided_slice/stack_2?
pickup_latitude/strided_sliceStridedSlicepickup_latitude/Shape:output:0,pickup_latitude/strided_slice/stack:output:0.pickup_latitude/strided_slice/stack_1:output:0.pickup_latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
pickup_latitude/strided_slice?
pickup_latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
pickup_latitude/Reshape/shape/1?
pickup_latitude/Reshape/shapePack&pickup_latitude/strided_slice:output:0(pickup_latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
pickup_latitude/Reshape/shape?
pickup_latitude/ReshapeReshapefeatures_pickup_latitude&pickup_latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pickup_latitude/Reshapey
pickup_longitude/ShapeShapefeatures_pickup_longitude*
T0*
_output_shapes
:2
pickup_longitude/Shape?
$pickup_longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$pickup_longitude/strided_slice/stack?
&pickup_longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&pickup_longitude/strided_slice/stack_1?
&pickup_longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&pickup_longitude/strided_slice/stack_2?
pickup_longitude/strided_sliceStridedSlicepickup_longitude/Shape:output:0-pickup_longitude/strided_slice/stack:output:0/pickup_longitude/strided_slice/stack_1:output:0/pickup_longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
pickup_longitude/strided_slice?
 pickup_longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2"
 pickup_longitude/Reshape/shape/1?
pickup_longitude/Reshape/shapePack'pickup_longitude/strided_slice:output:0)pickup_longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
pickup_longitude/Reshape/shape?
pickup_longitude/ReshapeReshapefeatures_pickup_longitude'pickup_longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
pickup_longitude/Reshapee
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2!dropoff_latitude/Reshape:output:0"dropoff_longitude/Reshape:output:0 passenger_count/Reshape:output:0 pickup_latitude/Reshape:output:0!pickup_longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:b ^
'
_output_shapes
:?????????
3
_user_specified_namefeatures/dropoff_latitude:c_
'
_output_shapes
:?????????
4
_user_specified_namefeatures/dropoff_longitude:UQ
'
_output_shapes
:?????????
&
_user_specified_namefeatures/key:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/passenger_count:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_datetime:a]
'
_output_shapes
:?????????
2
_user_specified_namefeatures/pickup_latitude:b^
'
_output_shapes
:?????????
3
_user_specified_namefeatures/pickup_longitude
?	
?
@__inference_output_layer_call_and_return_conditional_losses_6654

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
z
%__inference_output_layer_call_fn_7394

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_66542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
<__inference_h1_layer_call_and_return_conditional_losses_6601

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
dropoff_latitude9
"serving_default_dropoff_latitude:0?????????
O
dropoff_longitude:
#serving_default_dropoff_longitude:0?????????
3
key,
serving_default_key:0?????????
K
passenger_count8
!serving_default_passenger_count:0?????????
K
pickup_datetime8
!serving_default_pickup_datetime:0?????????
K
pickup_latitude8
!serving_default_pickup_latitude:0?????????
M
pickup_longitude9
"serving_default_pickup_longitude:0?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?:
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
_build_input_shape
trainable_variables
regularization_losses
		variables

	keras_api

signatures
__default_save_signature
*`&call_and_return_all_conditional_losses
a__call__"?7
_tf_keras_sequential?7{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "NumericColumn", "config": {"key": "dropoff_latitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "dropoff_longitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "passenger_count", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pickup_latitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pickup_longitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}], "partitioner": null}}, {"class_name": "Dense", "config": {"name": "h1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "h2", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"pickup_datetime": {"class_name": "__tuple__", "items": [null, 1]}, "pickup_longitude": {"class_name": "__tuple__", "items": [null, 1]}, "pickup_latitude": {"class_name": "__tuple__", "items": [null, 1]}, "dropoff_longitude": {"class_name": "__tuple__", "items": [null, 1]}, "dropoff_latitude": {"class_name": "__tuple__", "items": [null, 1]}, "passenger_count": {"class_name": "__tuple__", "items": [null, 1]}, "key": {"class_name": "__tuple__", "items": [null, 1]}}}, "build_input_shape": {"pickup_datetime": {"class_name": "__tuple__", "items": [null, 1]}, "pickup_longitude": {"class_name": "__tuple__", "items": [null, 1]}, "pickup_latitude": {"class_name": "__tuple__", "items": [null, 1]}, "dropoff_longitude": {"class_name": "__tuple__", "items": [null, 1]}, "dropoff_latitude": {"class_name": "__tuple__", "items": [null, 1]}, "passenger_count": {"class_name": "__tuple__", "items": [null, 1]}, "key": {"class_name": "__tuple__", "items": [null, 1]}}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "NumericColumn", "config": {"key": "dropoff_latitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "dropoff_longitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "passenger_count", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pickup_latitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pickup_longitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}], "partitioner": null}}, {"class_name": "Dense", "config": {"name": "h1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "h2", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"pickup_datetime": {"class_name": "__tuple__", "items": [null, 1]}, "pickup_longitude": {"class_name": "__tuple__", "items": [null, 1]}, "pickup_latitude": {"class_name": "__tuple__", "items": [null, 1]}, "dropoff_longitude": {"class_name": "__tuple__", "items": [null, 1]}, "dropoff_latitude": {"class_name": "__tuple__", "items": [null, 1]}, "passenger_count": {"class_name": "__tuple__", "items": [null, 1]}, "key": {"class_name": "__tuple__", "items": [null, 1]}}}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "rmse", "dtype": "float32", "fn": "rmse"}}, {"class_name": "MeanMetricWrapper", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
_feature_columns

_resources
trainable_variables
regularization_losses
	variables
	keras_api
*b&call_and_return_all_conditional_losses
c__call__"?
_tf_keras_layer?{"class_name": "DenseFeatures", "name": "dense_features", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "NumericColumn", "config": {"key": "dropoff_latitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "dropoff_longitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "passenger_count", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pickup_latitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}, {"class_name": "NumericColumn", "config": {"key": "pickup_longitude", "shape": {"class_name": "__tuple__", "items": [1]}, "default_value": null, "dtype": "float32", "normalizer_fn": null}}], "partitioner": null}, "build_input_shape": {"pickup_datetime": {"class_name": "TensorShape", "items": [1000, 1]}, "pickup_longitude": {"class_name": "TensorShape", "items": [1000, 1]}, "pickup_latitude": {"class_name": "TensorShape", "items": [1000, 1]}, "dropoff_longitude": {"class_name": "TensorShape", "items": [1000, 1]}, "dropoff_latitude": {"class_name": "TensorShape", "items": [1000, 1]}, "passenger_count": {"class_name": "TensorShape", "items": [1000, 1]}, "key": {"class_name": "TensorShape", "items": [1000, 1]}}, "_is_feature_layer": true}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*d&call_and_return_all_conditional_losses
e__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "h1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "h1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1000, 5]}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*f&call_and_return_all_conditional_losses
g__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "h2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "h2", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1000, 32]}}
?

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
*h&call_and_return_all_conditional_losses
i__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1000, 8]}}
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemSmTmUmVmWmXvYvZv[v\v]v^"
	optimizer
 "
trackable_dict_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?
)metrics
trainable_variables
regularization_losses
*layer_regularization_losses

+layers
		variables
,non_trainable_variables
-layer_metrics
a__call__
__default_save_signature
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
,
jserving_default"
signature_map
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
.metrics
trainable_variables
regularization_losses
/layer_regularization_losses

0layers
	variables
1non_trainable_variables
2layer_metrics
c__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
&:$ 2sequential/h1/kernel
 : 2sequential/h1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
3metrics
trainable_variables
regularization_losses
4layer_regularization_losses

5layers
	variables
6non_trainable_variables
7layer_metrics
e__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
&:$ 2sequential/h2/kernel
 :2sequential/h2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
8metrics
trainable_variables
regularization_losses
9layer_regularization_losses

:layers
	variables
;non_trainable_variables
<layer_metrics
g__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
*:(2sequential/output/kernel
$:"2sequential/output/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
=metrics
 trainable_variables
!regularization_losses
>layer_regularization_losses

?layers
"	variables
@non_trainable_variables
Alayer_metrics
i__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
B0
C1
D2"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
?
	Etotal
	Fcount
G	variables
H	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "rmse", "dtype": "float32", "config": {"name": "rmse", "dtype": "float32", "fn": "rmse"}}
?
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mse", "dtype": "float32", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}}
:  (2total
:  (2count
.
E0
F1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
+:) 2Adam/sequential/h1/kernel/m
%:# 2Adam/sequential/h1/bias/m
+:) 2Adam/sequential/h2/kernel/m
%:#2Adam/sequential/h2/bias/m
/:-2Adam/sequential/output/kernel/m
):'2Adam/sequential/output/bias/m
+:) 2Adam/sequential/h1/kernel/v
%:# 2Adam/sequential/h1/bias/v
+:) 2Adam/sequential/h2/kernel/v
%:#2Adam/sequential/h2/bias/v
/:-2Adam/sequential/output/kernel/v
):'2Adam/sequential/output/bias/v
?2?
__inference__wrapped_model_6450?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *???
???
>
dropoff_latitude*?'
dropoff_latitude?????????
@
dropoff_longitude+?(
dropoff_longitude?????????
$
key?
key?????????
<
passenger_count)?&
passenger_count?????????
<
pickup_datetime)?&
pickup_datetime?????????
<
pickup_latitude)?&
pickup_latitude?????????
>
pickup_longitude*?'
pickup_longitude?????????
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_7091
D__inference_sequential_layer_call_and_return_conditional_losses_6973
D__inference_sequential_layer_call_and_return_conditional_losses_6901
D__inference_sequential_layer_call_and_return_conditional_losses_7163?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_sequential_layer_call_fn_6996
)__inference_sequential_layer_call_fn_7186
)__inference_sequential_layer_call_fn_7209
)__inference_sequential_layer_call_fn_7019?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dense_features_layer_call_and_return_conditional_losses_7261
H__inference_dense_features_layer_call_and_return_conditional_losses_7313?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_dense_features_layer_call_fn_7324
-__inference_dense_features_layer_call_fn_7335?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
<__inference_h1_layer_call_and_return_conditional_losses_7346?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
!__inference_h1_layer_call_fn_7355?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
<__inference_h2_layer_call_and_return_conditional_losses_7366?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
!__inference_h2_layer_call_fn_7375?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_output_layer_call_and_return_conditional_losses_7385?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_output_layer_call_fn_7394?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_6829dropoff_latitudedropoff_longitudekeypassenger_countpickup_datetimepickup_latitudepickup_longitude"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_6450????
???
???
>
dropoff_latitude*?'
dropoff_latitude?????????
@
dropoff_longitude+?(
dropoff_longitude?????????
$
key?
key?????????
<
passenger_count)?&
passenger_count?????????
<
pickup_datetime)?&
pickup_datetime?????????
<
pickup_latitude)?&
pickup_latitude?????????
>
pickup_longitude*?'
pickup_longitude?????????
? "3?0
.
output_1"?
output_1??????????
H__inference_dense_features_layer_call_and_return_conditional_losses_7261????
???
???
G
dropoff_latitude3?0
features/dropoff_latitude?????????
I
dropoff_longitude4?1
features/dropoff_longitude?????????
-
key&?#
features/key?????????
E
passenger_count2?/
features/passenger_count?????????
E
pickup_datetime2?/
features/pickup_datetime?????????
E
pickup_latitude2?/
features/pickup_latitude?????????
G
pickup_longitude3?0
features/pickup_longitude?????????

 
p
? "%?"
?
0?????????
? ?
H__inference_dense_features_layer_call_and_return_conditional_losses_7313????
???
???
G
dropoff_latitude3?0
features/dropoff_latitude?????????
I
dropoff_longitude4?1
features/dropoff_longitude?????????
-
key&?#
features/key?????????
E
passenger_count2?/
features/passenger_count?????????
E
pickup_datetime2?/
features/pickup_datetime?????????
E
pickup_latitude2?/
features/pickup_latitude?????????
G
pickup_longitude3?0
features/pickup_longitude?????????

 
p 
? "%?"
?
0?????????
? ?
-__inference_dense_features_layer_call_fn_7324????
???
???
G
dropoff_latitude3?0
features/dropoff_latitude?????????
I
dropoff_longitude4?1
features/dropoff_longitude?????????
-
key&?#
features/key?????????
E
passenger_count2?/
features/passenger_count?????????
E
pickup_datetime2?/
features/pickup_datetime?????????
E
pickup_latitude2?/
features/pickup_latitude?????????
G
pickup_longitude3?0
features/pickup_longitude?????????

 
p
? "???????????
-__inference_dense_features_layer_call_fn_7335????
???
???
G
dropoff_latitude3?0
features/dropoff_latitude?????????
I
dropoff_longitude4?1
features/dropoff_longitude?????????
-
key&?#
features/key?????????
E
passenger_count2?/
features/passenger_count?????????
E
pickup_datetime2?/
features/pickup_datetime?????????
E
pickup_latitude2?/
features/pickup_latitude?????????
G
pickup_longitude3?0
features/pickup_longitude?????????

 
p 
? "???????????
<__inference_h1_layer_call_and_return_conditional_losses_7346\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? t
!__inference_h1_layer_call_fn_7355O/?,
%?"
 ?
inputs?????????
? "?????????? ?
<__inference_h2_layer_call_and_return_conditional_losses_7366\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? t
!__inference_h2_layer_call_fn_7375O/?,
%?"
 ?
inputs????????? 
? "???????????
@__inference_output_layer_call_and_return_conditional_losses_7385\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? x
%__inference_output_layer_call_fn_7394O/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_sequential_layer_call_and_return_conditional_losses_6901????
???
???
>
dropoff_latitude*?'
dropoff_latitude?????????
@
dropoff_longitude+?(
dropoff_longitude?????????
$
key?
key?????????
<
passenger_count)?&
passenger_count?????????
<
pickup_datetime)?&
pickup_datetime?????????
<
pickup_latitude)?&
pickup_latitude?????????
>
pickup_longitude*?'
pickup_longitude?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_6973????
???
???
>
dropoff_latitude*?'
dropoff_latitude?????????
@
dropoff_longitude+?(
dropoff_longitude?????????
$
key?
key?????????
<
passenger_count)?&
passenger_count?????????
<
pickup_datetime)?&
pickup_datetime?????????
<
pickup_latitude)?&
pickup_latitude?????????
>
pickup_longitude*?'
pickup_longitude?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_7091????
???
???
E
dropoff_latitude1?.
inputs/dropoff_latitude?????????
G
dropoff_longitude2?/
inputs/dropoff_longitude?????????
+
key$?!

inputs/key?????????
C
passenger_count0?-
inputs/passenger_count?????????
C
pickup_datetime0?-
inputs/pickup_datetime?????????
C
pickup_latitude0?-
inputs/pickup_latitude?????????
E
pickup_longitude1?.
inputs/pickup_longitude?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_7163????
???
???
E
dropoff_latitude1?.
inputs/dropoff_latitude?????????
G
dropoff_longitude2?/
inputs/dropoff_longitude?????????
+
key$?!

inputs/key?????????
C
passenger_count0?-
inputs/passenger_count?????????
C
pickup_datetime0?-
inputs/pickup_datetime?????????
C
pickup_latitude0?-
inputs/pickup_latitude?????????
E
pickup_longitude1?.
inputs/pickup_longitude?????????
p 

 
? "%?"
?
0?????????
? ?
)__inference_sequential_layer_call_fn_6996????
???
???
>
dropoff_latitude*?'
dropoff_latitude?????????
@
dropoff_longitude+?(
dropoff_longitude?????????
$
key?
key?????????
<
passenger_count)?&
passenger_count?????????
<
pickup_datetime)?&
pickup_datetime?????????
<
pickup_latitude)?&
pickup_latitude?????????
>
pickup_longitude*?'
pickup_longitude?????????
p

 
? "???????????
)__inference_sequential_layer_call_fn_7019????
???
???
>
dropoff_latitude*?'
dropoff_latitude?????????
@
dropoff_longitude+?(
dropoff_longitude?????????
$
key?
key?????????
<
passenger_count)?&
passenger_count?????????
<
pickup_datetime)?&
pickup_datetime?????????
<
pickup_latitude)?&
pickup_latitude?????????
>
pickup_longitude*?'
pickup_longitude?????????
p 

 
? "???????????
)__inference_sequential_layer_call_fn_7186????
???
???
E
dropoff_latitude1?.
inputs/dropoff_latitude?????????
G
dropoff_longitude2?/
inputs/dropoff_longitude?????????
+
key$?!

inputs/key?????????
C
passenger_count0?-
inputs/passenger_count?????????
C
pickup_datetime0?-
inputs/pickup_datetime?????????
C
pickup_latitude0?-
inputs/pickup_latitude?????????
E
pickup_longitude1?.
inputs/pickup_longitude?????????
p

 
? "???????????
)__inference_sequential_layer_call_fn_7209????
???
???
E
dropoff_latitude1?.
inputs/dropoff_latitude?????????
G
dropoff_longitude2?/
inputs/dropoff_longitude?????????
+
key$?!

inputs/key?????????
C
passenger_count0?-
inputs/passenger_count?????????
C
pickup_datetime0?-
inputs/pickup_datetime?????????
C
pickup_latitude0?-
inputs/pickup_latitude?????????
E
pickup_longitude1?.
inputs/pickup_longitude?????????
p 

 
? "???????????
"__inference_signature_wrapper_6829????
? 
???
>
dropoff_latitude*?'
dropoff_latitude?????????
@
dropoff_longitude+?(
dropoff_longitude?????????
$
key?
key?????????
<
passenger_count)?&
passenger_count?????????
<
pickup_datetime)?&
pickup_datetime?????????
<
pickup_latitude)?&
pickup_latitude?????????
>
pickup_longitude*?'
pickup_longitude?????????"3?0
.
output_1"?
output_1?????????