ʶ!
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.12unknown8��
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
~
CONV01/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameCONV01/kernel
w
!CONV01/kernel/Read/ReadVariableOpReadVariableOpCONV01/kernel*&
_output_shapes
:*
dtype0
n
CONV01/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameCONV01/bias
g
CONV01/bias/Read/ReadVariableOpReadVariableOpCONV01/bias*
_output_shapes
:*
dtype0
p
BNOR01/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameBNOR01/gamma
i
 BNOR01/gamma/Read/ReadVariableOpReadVariableOpBNOR01/gamma*
_output_shapes
:*
dtype0
n
BNOR01/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameBNOR01/beta
g
BNOR01/beta/Read/ReadVariableOpReadVariableOpBNOR01/beta*
_output_shapes
:*
dtype0
|
BNOR01/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameBNOR01/moving_mean
u
&BNOR01/moving_mean/Read/ReadVariableOpReadVariableOpBNOR01/moving_mean*
_output_shapes
:*
dtype0
�
BNOR01/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameBNOR01/moving_variance
}
*BNOR01/moving_variance/Read/ReadVariableOpReadVariableOpBNOR01/moving_variance*
_output_shapes
:*
dtype0
~
CONV02/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameCONV02/kernel
w
!CONV02/kernel/Read/ReadVariableOpReadVariableOpCONV02/kernel*&
_output_shapes
:*
dtype0
n
CONV02/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameCONV02/bias
g
CONV02/bias/Read/ReadVariableOpReadVariableOpCONV02/bias*
_output_shapes
:*
dtype0
p
BNOR02/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameBNOR02/gamma
i
 BNOR02/gamma/Read/ReadVariableOpReadVariableOpBNOR02/gamma*
_output_shapes
:*
dtype0
n
BNOR02/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameBNOR02/beta
g
BNOR02/beta/Read/ReadVariableOpReadVariableOpBNOR02/beta*
_output_shapes
:*
dtype0
|
BNOR02/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameBNOR02/moving_mean
u
&BNOR02/moving_mean/Read/ReadVariableOpReadVariableOpBNOR02/moving_mean*
_output_shapes
:*
dtype0
�
BNOR02/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameBNOR02/moving_variance
}
*BNOR02/moving_variance/Read/ReadVariableOpReadVariableOpBNOR02/moving_variance*
_output_shapes
:*
dtype0
~
CONV03/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameCONV03/kernel
w
!CONV03/kernel/Read/ReadVariableOpReadVariableOpCONV03/kernel*&
_output_shapes
:<*
dtype0
n
CONV03/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameCONV03/bias
g
CONV03/bias/Read/ReadVariableOpReadVariableOpCONV03/bias*
_output_shapes
:<*
dtype0
p
BNOR03/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameBNOR03/gamma
i
 BNOR03/gamma/Read/ReadVariableOpReadVariableOpBNOR03/gamma*
_output_shapes
:<*
dtype0
n
BNOR03/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameBNOR03/beta
g
BNOR03/beta/Read/ReadVariableOpReadVariableOpBNOR03/beta*
_output_shapes
:<*
dtype0
|
BNOR03/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*#
shared_nameBNOR03/moving_mean
u
&BNOR03/moving_mean/Read/ReadVariableOpReadVariableOpBNOR03/moving_mean*
_output_shapes
:<*
dtype0
�
BNOR03/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*'
shared_nameBNOR03/moving_variance
}
*BNOR03/moving_variance/Read/ReadVariableOpReadVariableOpBNOR03/moving_variance*
_output_shapes
:<*
dtype0
w
DENS01/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�[*
shared_nameDENS01/kernel
p
!DENS01/kernel/Read/ReadVariableOpReadVariableOpDENS01/kernel*
_output_shapes
:	�[*
dtype0
n
DENS01/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameDENS01/bias
g
DENS01/bias/Read/ReadVariableOpReadVariableOpDENS01/bias*
_output_shapes
:*
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
�
random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
�
random_rotation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*)
shared_namerandom_rotation/StateVar
�
,random_rotation/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation/StateVar*
_output_shapes
:*
dtype0	
�
Adam/CONV01/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/CONV01/kernel/m
�
(Adam/CONV01/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CONV01/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/CONV01/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/CONV01/bias/m
u
&Adam/CONV01/bias/m/Read/ReadVariableOpReadVariableOpAdam/CONV01/bias/m*
_output_shapes
:*
dtype0
~
Adam/BNOR01/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/BNOR01/gamma/m
w
'Adam/BNOR01/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BNOR01/gamma/m*
_output_shapes
:*
dtype0
|
Adam/BNOR01/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/BNOR01/beta/m
u
&Adam/BNOR01/beta/m/Read/ReadVariableOpReadVariableOpAdam/BNOR01/beta/m*
_output_shapes
:*
dtype0
�
Adam/CONV02/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/CONV02/kernel/m
�
(Adam/CONV02/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CONV02/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/CONV02/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/CONV02/bias/m
u
&Adam/CONV02/bias/m/Read/ReadVariableOpReadVariableOpAdam/CONV02/bias/m*
_output_shapes
:*
dtype0
~
Adam/BNOR02/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/BNOR02/gamma/m
w
'Adam/BNOR02/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BNOR02/gamma/m*
_output_shapes
:*
dtype0
|
Adam/BNOR02/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/BNOR02/beta/m
u
&Adam/BNOR02/beta/m/Read/ReadVariableOpReadVariableOpAdam/BNOR02/beta/m*
_output_shapes
:*
dtype0
�
Adam/CONV03/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*%
shared_nameAdam/CONV03/kernel/m
�
(Adam/CONV03/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CONV03/kernel/m*&
_output_shapes
:<*
dtype0
|
Adam/CONV03/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*#
shared_nameAdam/CONV03/bias/m
u
&Adam/CONV03/bias/m/Read/ReadVariableOpReadVariableOpAdam/CONV03/bias/m*
_output_shapes
:<*
dtype0
~
Adam/BNOR03/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_nameAdam/BNOR03/gamma/m
w
'Adam/BNOR03/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BNOR03/gamma/m*
_output_shapes
:<*
dtype0
|
Adam/BNOR03/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*#
shared_nameAdam/BNOR03/beta/m
u
&Adam/BNOR03/beta/m/Read/ReadVariableOpReadVariableOpAdam/BNOR03/beta/m*
_output_shapes
:<*
dtype0
�
Adam/DENS01/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�[*%
shared_nameAdam/DENS01/kernel/m
~
(Adam/DENS01/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DENS01/kernel/m*
_output_shapes
:	�[*
dtype0
|
Adam/DENS01/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/DENS01/bias/m
u
&Adam/DENS01/bias/m/Read/ReadVariableOpReadVariableOpAdam/DENS01/bias/m*
_output_shapes
:*
dtype0
�
Adam/CONV01/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/CONV01/kernel/v
�
(Adam/CONV01/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CONV01/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/CONV01/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/CONV01/bias/v
u
&Adam/CONV01/bias/v/Read/ReadVariableOpReadVariableOpAdam/CONV01/bias/v*
_output_shapes
:*
dtype0
~
Adam/BNOR01/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/BNOR01/gamma/v
w
'Adam/BNOR01/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BNOR01/gamma/v*
_output_shapes
:*
dtype0
|
Adam/BNOR01/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/BNOR01/beta/v
u
&Adam/BNOR01/beta/v/Read/ReadVariableOpReadVariableOpAdam/BNOR01/beta/v*
_output_shapes
:*
dtype0
�
Adam/CONV02/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/CONV02/kernel/v
�
(Adam/CONV02/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CONV02/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/CONV02/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/CONV02/bias/v
u
&Adam/CONV02/bias/v/Read/ReadVariableOpReadVariableOpAdam/CONV02/bias/v*
_output_shapes
:*
dtype0
~
Adam/BNOR02/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/BNOR02/gamma/v
w
'Adam/BNOR02/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BNOR02/gamma/v*
_output_shapes
:*
dtype0
|
Adam/BNOR02/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/BNOR02/beta/v
u
&Adam/BNOR02/beta/v/Read/ReadVariableOpReadVariableOpAdam/BNOR02/beta/v*
_output_shapes
:*
dtype0
�
Adam/CONV03/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*%
shared_nameAdam/CONV03/kernel/v
�
(Adam/CONV03/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CONV03/kernel/v*&
_output_shapes
:<*
dtype0
|
Adam/CONV03/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*#
shared_nameAdam/CONV03/bias/v
u
&Adam/CONV03/bias/v/Read/ReadVariableOpReadVariableOpAdam/CONV03/bias/v*
_output_shapes
:<*
dtype0
~
Adam/BNOR03/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_nameAdam/BNOR03/gamma/v
w
'Adam/BNOR03/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BNOR03/gamma/v*
_output_shapes
:<*
dtype0
|
Adam/BNOR03/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*#
shared_nameAdam/BNOR03/beta/v
u
&Adam/BNOR03/beta/v/Read/ReadVariableOpReadVariableOpAdam/BNOR03/beta/v*
_output_shapes
:<*
dtype0
�
Adam/DENS01/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�[*%
shared_nameAdam/DENS01/kernel/v
~
(Adam/DENS01/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DENS01/kernel/v*
_output_shapes
:	�[*
dtype0
|
Adam/DENS01/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/DENS01/bias/v
u
&Adam/DENS01/bias/v/Read/ReadVariableOpReadVariableOpAdam/DENS01/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer-1
layer_with_weights-0
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
layer_with_weights-4
layer-8
layer_with_weights-5
layer-9
layer-10
 layer-11
!layer-12
"layer_with_weights-6
"layer-13
#layer-14
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
�
*iter

+beta_1

,beta_2
	-decay
.learning_rate/m�0m�1m�2m�5m�6m�7m�8m�;m�<m�=m�>m�Am�Bm�/v�0v�1v�2v�5v�6v�7v�8v�;v�<v�=v�>v�Av�Bv�*
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19*
j
/0
01
12
23
54
65
76
87
;8
<9
=10
>11
A12
B13*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

Hserving_default* 
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M_random_generator
N__call__
*O&call_and_return_all_conditional_losses*
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T_random_generator
U__call__
*V&call_and_return_all_conditional_losses*
* 
* 
* 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
�

/kernel
0bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses*
�
baxis
	1gamma
2beta
3moving_mean
4moving_variance
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses* 
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
�

5kernel
6bias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses*
�
{axis
	7gamma
8beta
9moving_mean
:moving_variance
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�

;kernel
<bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
	�axis
	=gamma
>beta
?moving_mean
@moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�_random_generator
�__call__
+�&call_and_return_all_conditional_losses* 
�

Akernel
Bbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19*
j
/0
01
12
23
54
65
76
87
;8
<9
=10
>11
A12
B13*
2
�0
�1
�2
�3
�4
�5* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUECONV01/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUECONV01/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEBNOR01/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEBNOR01/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEBNOR01/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEBNOR01/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUECONV02/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUECONV02/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEBNOR02/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEBNOR02/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEBNOR02/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEBNOR02/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUECONV03/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUECONV03/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEBNOR03/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEBNOR03/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEBNOR03/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEBNOR03/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEDENS01/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEDENS01/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
.
30
41
92
:3
?4
@5*

0
1
2*

�0
�1*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

�
_generator*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

�
_generator*
* 
* 
* 

0
1*
* 
* 
* 

/0
01*

/0
01*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*
* 
* 
* 
 
10
21
32
43*

10
21*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 
* 
* 

50
61*

50
61*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*
* 
* 
* 
 
70
81
92
:3*

70
81*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 

;0
<1*

;0
<1*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
 
=0
>1
?2
@3*

=0
>1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

A0
B1*

A0
B1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
.
30
41
92
:3
?4
@5*
r
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
#14*
* 
* 
* 
<

�total

�count
�	variables
�	keras_api*
M

�total

�count
�
_fn_kwargs
�	variables
�	keras_api*
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 

�0
�1* 
* 

30
41*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1* 
* 

90
:1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1* 
* 

?0
@1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
�z
VARIABLE_VALUErandom_flip/StateVarRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUErandom_rotation/StateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/CONV01/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/CONV01/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/BNOR01/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/BNOR01/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/CONV02/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/CONV02/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/BNOR02/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/BNOR02/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/CONV03/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/CONV03/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/BNOR03/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/BNOR03/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/DENS01/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/DENS01/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/CONV01/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/CONV01/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/BNOR01/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/BNOR01/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/CONV02/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/CONV02/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/BNOR02/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/BNOR02/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/CONV03/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/CONV03/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/BNOR03/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/BNOR03/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/DENS01/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/DENS01/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_2Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2CONV01/kernelCONV01/biasBNOR01/gammaBNOR01/betaBNOR01/moving_meanBNOR01/moving_varianceCONV02/kernelCONV02/biasBNOR02/gammaBNOR02/betaBNOR02/moving_meanBNOR02/moving_varianceCONV03/kernelCONV03/biasBNOR03/gammaBNOR03/betaBNOR03/moving_meanBNOR03/moving_varianceDENS01/kernelDENS01/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_797417
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp!CONV01/kernel/Read/ReadVariableOpCONV01/bias/Read/ReadVariableOp BNOR01/gamma/Read/ReadVariableOpBNOR01/beta/Read/ReadVariableOp&BNOR01/moving_mean/Read/ReadVariableOp*BNOR01/moving_variance/Read/ReadVariableOp!CONV02/kernel/Read/ReadVariableOpCONV02/bias/Read/ReadVariableOp BNOR02/gamma/Read/ReadVariableOpBNOR02/beta/Read/ReadVariableOp&BNOR02/moving_mean/Read/ReadVariableOp*BNOR02/moving_variance/Read/ReadVariableOp!CONV03/kernel/Read/ReadVariableOpCONV03/bias/Read/ReadVariableOp BNOR03/gamma/Read/ReadVariableOpBNOR03/beta/Read/ReadVariableOp&BNOR03/moving_mean/Read/ReadVariableOp*BNOR03/moving_variance/Read/ReadVariableOp!DENS01/kernel/Read/ReadVariableOpDENS01/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(random_flip/StateVar/Read/ReadVariableOp,random_rotation/StateVar/Read/ReadVariableOp(Adam/CONV01/kernel/m/Read/ReadVariableOp&Adam/CONV01/bias/m/Read/ReadVariableOp'Adam/BNOR01/gamma/m/Read/ReadVariableOp&Adam/BNOR01/beta/m/Read/ReadVariableOp(Adam/CONV02/kernel/m/Read/ReadVariableOp&Adam/CONV02/bias/m/Read/ReadVariableOp'Adam/BNOR02/gamma/m/Read/ReadVariableOp&Adam/BNOR02/beta/m/Read/ReadVariableOp(Adam/CONV03/kernel/m/Read/ReadVariableOp&Adam/CONV03/bias/m/Read/ReadVariableOp'Adam/BNOR03/gamma/m/Read/ReadVariableOp&Adam/BNOR03/beta/m/Read/ReadVariableOp(Adam/DENS01/kernel/m/Read/ReadVariableOp&Adam/DENS01/bias/m/Read/ReadVariableOp(Adam/CONV01/kernel/v/Read/ReadVariableOp&Adam/CONV01/bias/v/Read/ReadVariableOp'Adam/BNOR01/gamma/v/Read/ReadVariableOp&Adam/BNOR01/beta/v/Read/ReadVariableOp(Adam/CONV02/kernel/v/Read/ReadVariableOp&Adam/CONV02/bias/v/Read/ReadVariableOp'Adam/BNOR02/gamma/v/Read/ReadVariableOp&Adam/BNOR02/beta/v/Read/ReadVariableOp(Adam/CONV03/kernel/v/Read/ReadVariableOp&Adam/CONV03/bias/v/Read/ReadVariableOp'Adam/BNOR03/gamma/v/Read/ReadVariableOp&Adam/BNOR03/beta/v/Read/ReadVariableOp(Adam/DENS01/kernel/v/Read/ReadVariableOp&Adam/DENS01/bias/v/Read/ReadVariableOpConst*H
TinA
?2=			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_798886
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateCONV01/kernelCONV01/biasBNOR01/gammaBNOR01/betaBNOR01/moving_meanBNOR01/moving_varianceCONV02/kernelCONV02/biasBNOR02/gammaBNOR02/betaBNOR02/moving_meanBNOR02/moving_varianceCONV03/kernelCONV03/biasBNOR03/gammaBNOR03/betaBNOR03/moving_meanBNOR03/moving_varianceDENS01/kernelDENS01/biastotalcounttotal_1count_1random_flip/StateVarrandom_rotation/StateVarAdam/CONV01/kernel/mAdam/CONV01/bias/mAdam/BNOR01/gamma/mAdam/BNOR01/beta/mAdam/CONV02/kernel/mAdam/CONV02/bias/mAdam/BNOR02/gamma/mAdam/BNOR02/beta/mAdam/CONV03/kernel/mAdam/CONV03/bias/mAdam/BNOR03/gamma/mAdam/BNOR03/beta/mAdam/DENS01/kernel/mAdam/DENS01/bias/mAdam/CONV01/kernel/vAdam/CONV01/bias/vAdam/BNOR01/gamma/vAdam/BNOR01/beta/vAdam/CONV02/kernel/vAdam/CONV02/bias/vAdam/BNOR02/gamma/vAdam/BNOR02/beta/vAdam/CONV03/kernel/vAdam/CONV03/bias/vAdam/BNOR03/gamma/vAdam/BNOR03/beta/vAdam/DENS01/kernel/vAdam/DENS01/bias/v*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_799073ِ
�j
�	
H__inference_sequential_1_layer_call_and_return_conditional_losses_795747

inputs'
conv01_795561:
conv01_795563:
bnor01_795566:
bnor01_795568:
bnor01_795570:
bnor01_795572:'
conv02_795606:
conv02_795608:
bnor02_795611:
bnor02_795613:
bnor02_795615:
bnor02_795617:'
conv03_795651:<
conv03_795653:<
bnor03_795656:<
bnor03_795658:<
bnor03_795660:<
bnor03_795662:< 
dens01_795698:	�[
dens01_795700:
identity��BNOR01/StatefulPartitionedCall�BNOR02/StatefulPartitionedCall�BNOR03/StatefulPartitionedCall�CONV01/StatefulPartitionedCall�-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�CONV02/StatefulPartitionedCall�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�CONV03/StatefulPartitionedCall�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�DENS01/StatefulPartitionedCall�
CONV01/StatefulPartitionedCallStatefulPartitionedCallinputsconv01_795561conv01_795563*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV01_layer_call_and_return_conditional_losses_795560�
BNOR01/StatefulPartitionedCallStatefulPartitionedCall'CONV01/StatefulPartitionedCall:output:0bnor01_795566bnor01_795568bnor01_795570bnor01_795572*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR01_layer_call_and_return_conditional_losses_795337�
RELU01/PartitionedCallPartitionedCall'BNOR01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU01_layer_call_and_return_conditional_losses_795580�
MP0102/PartitionedCallPartitionedCallRELU01/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0102_layer_call_and_return_conditional_losses_795388�
CONV02/StatefulPartitionedCallStatefulPartitionedCallMP0102/PartitionedCall:output:0conv02_795606conv02_795608*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV02_layer_call_and_return_conditional_losses_795605�
BNOR02/StatefulPartitionedCallStatefulPartitionedCall'CONV02/StatefulPartitionedCall:output:0bnor02_795611bnor02_795613bnor02_795615bnor02_795617*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR02_layer_call_and_return_conditional_losses_795413�
RELU02/PartitionedCallPartitionedCall'BNOR02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU02_layer_call_and_return_conditional_losses_795625�
MP0203/PartitionedCallPartitionedCallRELU02/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0203_layer_call_and_return_conditional_losses_795464�
CONV03/StatefulPartitionedCallStatefulPartitionedCallMP0203/PartitionedCall:output:0conv03_795651conv03_795653*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV03_layer_call_and_return_conditional_losses_795650�
BNOR03/StatefulPartitionedCallStatefulPartitionedCall'CONV03/StatefulPartitionedCall:output:0bnor03_795656bnor03_795658bnor03_795660bnor03_795662*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR03_layer_call_and_return_conditional_losses_795489�
RELU03/PartitionedCallPartitionedCall'BNOR03/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU03_layer_call_and_return_conditional_losses_795670�
FLAT01/PartitionedCallPartitionedCallRELU03/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_FLAT01_layer_call_and_return_conditional_losses_795678�
DROP01/PartitionedCallPartitionedCallFLAT01/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DROP01_layer_call_and_return_conditional_losses_795685�
DENS01/StatefulPartitionedCallStatefulPartitionedCallDROP01/PartitionedCall:output:0dens01_795698dens01_795700*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DENS01_layer_call_and_return_conditional_losses_795697�
SOFT01/PartitionedCallPartitionedCall'DENS01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_SOFT01_layer_call_and_return_conditional_losses_795708�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv01_795561*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv01_795563*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv02_795606*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv02_795608*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv03_795651*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv03_795653*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentitySOFT01/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BNOR01/StatefulPartitionedCall^BNOR02/StatefulPartitionedCall^BNOR03/StatefulPartitionedCall^CONV01/StatefulPartitionedCall.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp^CONV02/StatefulPartitionedCall.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp^CONV03/StatefulPartitionedCall.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp^DENS01/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2@
BNOR01/StatefulPartitionedCallBNOR01/StatefulPartitionedCall2@
BNOR02/StatefulPartitionedCallBNOR02/StatefulPartitionedCall2@
BNOR03/StatefulPartitionedCallBNOR03/StatefulPartitionedCall2@
CONV01/StatefulPartitionedCallCONV01/StatefulPartitionedCall2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2@
CONV02/StatefulPartitionedCallCONV02/StatefulPartitionedCall2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2@
CONV03/StatefulPartitionedCallCONV03/StatefulPartitionedCall2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2@
DENS01/StatefulPartitionedCallDENS01/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�M
�
G__inference_random_flip_layer_call_and_return_conditional_losses_798044

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:������������
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:�����������q
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_1_layer_call_fn_795790
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:	�[

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_795747o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�

�
__inference_loss_fn_5_798676D
6conv03_bias_regularizer_square_readvariableop_resource:<
identity��-CONV03/bias/Regularizer/Square/ReadVariableOp�
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOp6conv03_bias_regularizer_square_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentityCONV03/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^CONV03/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp
��
�
A__inference_model_layer_call_and_return_conditional_losses_797370

inputsV
Hsequential_random_flip_stateful_uniform_full_int_rngreadandskip_resource:	Q
Csequential_random_rotation_stateful_uniform_rngreadandskip_resource:	L
2sequential_1_conv01_conv2d_readvariableop_resource:A
3sequential_1_conv01_biasadd_readvariableop_resource:9
+sequential_1_bnor01_readvariableop_resource:;
-sequential_1_bnor01_readvariableop_1_resource:J
<sequential_1_bnor01_fusedbatchnormv3_readvariableop_resource:L
>sequential_1_bnor01_fusedbatchnormv3_readvariableop_1_resource:L
2sequential_1_conv02_conv2d_readvariableop_resource:A
3sequential_1_conv02_biasadd_readvariableop_resource:9
+sequential_1_bnor02_readvariableop_resource:;
-sequential_1_bnor02_readvariableop_1_resource:J
<sequential_1_bnor02_fusedbatchnormv3_readvariableop_resource:L
>sequential_1_bnor02_fusedbatchnormv3_readvariableop_1_resource:L
2sequential_1_conv03_conv2d_readvariableop_resource:<A
3sequential_1_conv03_biasadd_readvariableop_resource:<9
+sequential_1_bnor03_readvariableop_resource:<;
-sequential_1_bnor03_readvariableop_1_resource:<J
<sequential_1_bnor03_fusedbatchnormv3_readvariableop_resource:<L
>sequential_1_bnor03_fusedbatchnormv3_readvariableop_1_resource:<E
2sequential_1_dens01_matmul_readvariableop_resource:	�[A
3sequential_1_dens01_biasadd_readvariableop_resource:
identity��-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�?sequential/random_flip/stateful_uniform_full_int/RngReadAndSkip�:sequential/random_rotation/stateful_uniform/RngReadAndSkip�"sequential_1/BNOR01/AssignNewValue�$sequential_1/BNOR01/AssignNewValue_1�3sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp�5sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1�"sequential_1/BNOR01/ReadVariableOp�$sequential_1/BNOR01/ReadVariableOp_1�"sequential_1/BNOR02/AssignNewValue�$sequential_1/BNOR02/AssignNewValue_1�3sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp�5sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1�"sequential_1/BNOR02/ReadVariableOp�$sequential_1/BNOR02/ReadVariableOp_1�"sequential_1/BNOR03/AssignNewValue�$sequential_1/BNOR03/AssignNewValue_1�3sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp�5sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1�"sequential_1/BNOR03/ReadVariableOp�$sequential_1/BNOR03/ReadVariableOp_1�*sequential_1/CONV01/BiasAdd/ReadVariableOp�)sequential_1/CONV01/Conv2D/ReadVariableOp�*sequential_1/CONV02/BiasAdd/ReadVariableOp�)sequential_1/CONV02/Conv2D/ReadVariableOp�*sequential_1/CONV03/BiasAdd/ReadVariableOp�)sequential_1/CONV03/Conv2D/ReadVariableOp�*sequential_1/DENS01/BiasAdd/ReadVariableOp�)sequential_1/DENS01/MatMul/ReadVariableOp�
6sequential/random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
6sequential/random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5sequential/random_flip/stateful_uniform_full_int/ProdProd?sequential/random_flip/stateful_uniform_full_int/shape:output:0?sequential/random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: y
7sequential/random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
7sequential/random_flip/stateful_uniform_full_int/Cast_1Cast>sequential/random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
?sequential/random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipHsequential_random_flip_stateful_uniform_full_int_rngreadandskip_resource@sequential/random_flip/stateful_uniform_full_int/Cast/x:output:0;sequential/random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Dsequential/random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Fsequential/random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Fsequential/random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential/random_flip/stateful_uniform_full_int/strided_sliceStridedSliceGsequential/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Msequential/random_flip/stateful_uniform_full_int/strided_slice/stack:output:0Osequential/random_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Osequential/random_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
8sequential/random_flip/stateful_uniform_full_int/BitcastBitcastGsequential/random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Fsequential/random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Hsequential/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Hsequential/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential/random_flip/stateful_uniform_full_int/strided_slice_1StridedSliceGsequential/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Osequential/random_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Qsequential/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Qsequential/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
:sequential/random_flip/stateful_uniform_full_int/Bitcast_1BitcastIsequential/random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0v
4sequential/random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
0sequential/random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV2?sequential/random_flip/stateful_uniform_full_int/shape:output:0Csequential/random_flip/stateful_uniform_full_int/Bitcast_1:output:0Asequential/random_flip/stateful_uniform_full_int/Bitcast:output:0=sequential/random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	k
!sequential/random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
sequential/random_flip/stackPack9sequential/random_flip/stateful_uniform_full_int:output:0*sequential/random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:{
*sequential/random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        }
,sequential/random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,sequential/random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$sequential/random_flip/strided_sliceStridedSlice%sequential/random_flip/stack:output:03sequential/random_flip/strided_slice/stack:output:05sequential/random_flip/strided_slice/stack_1:output:05sequential/random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Jsequential/random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
=sequential/random_flip/stateless_random_flip_left_right/ShapeShapeSsequential/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:�
Ksequential/random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Msequential/random_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Msequential/random_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Esequential/random_flip/stateless_random_flip_left_right/strided_sliceStridedSliceFsequential/random_flip/stateless_random_flip_left_right/Shape:output:0Tsequential/random_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Vsequential/random_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Vsequential/random_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Vsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackNsequential/random_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Tsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Tsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
msequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter-sequential/random_flip/strided_slice:output:0* 
_output_shapes
::�
msequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
isequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2_sequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0ssequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0wsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0vsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Tsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/subSub]sequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0]sequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Tsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulrsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Xsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Psequential/random_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Xsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0]sequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:����������
Gsequential/random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Gsequential/random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Gsequential/random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Esequential/random_flip/stateless_random_flip_left_right/Reshape/shapePackNsequential/random_flip/stateless_random_flip_left_right/strided_slice:output:0Psequential/random_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Psequential/random_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Psequential/random_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
?sequential/random_flip/stateless_random_flip_left_right/ReshapeReshapeTsequential/random_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Nsequential/random_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
=sequential/random_flip/stateless_random_flip_left_right/RoundRoundHsequential/random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:����������
Fsequential/random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Asequential/random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Ssequential/random_flip/stateless_random_flip_left_right/control_dependency:output:0Osequential/random_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
;sequential/random_flip/stateless_random_flip_left_right/mulMulAsequential/random_flip/stateless_random_flip_left_right/Round:y:0Jsequential/random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:������������
=sequential/random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
;sequential/random_flip/stateless_random_flip_left_right/subSubFsequential/random_flip/stateless_random_flip_left_right/sub/x:output:0Asequential/random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
=sequential/random_flip/stateless_random_flip_left_right/mul_1Mul?sequential/random_flip/stateless_random_flip_left_right/sub:z:0Ssequential/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
;sequential/random_flip/stateless_random_flip_left_right/addAddV2?sequential/random_flip/stateless_random_flip_left_right/mul:z:0Asequential/random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:������������
 sequential/random_rotation/ShapeShape?sequential/random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:x
.sequential/random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential/random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential/random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(sequential/random_rotation/strided_sliceStridedSlice)sequential/random_rotation/Shape:output:07sequential/random_rotation/strided_slice/stack:output:09sequential/random_rotation/strided_slice/stack_1:output:09sequential/random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0sequential/random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
2sequential/random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������|
2sequential/random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*sequential/random_rotation/strided_slice_1StridedSlice)sequential/random_rotation/Shape:output:09sequential/random_rotation/strided_slice_1/stack:output:0;sequential/random_rotation/strided_slice_1/stack_1:output:0;sequential/random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
sequential/random_rotation/CastCast3sequential/random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0sequential/random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
2sequential/random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������|
2sequential/random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*sequential/random_rotation/strided_slice_2StridedSlice)sequential/random_rotation/Shape:output:09sequential/random_rotation/strided_slice_2/stack:output:0;sequential/random_rotation/strided_slice_2/stack_1:output:0;sequential/random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
!sequential/random_rotation/Cast_1Cast3sequential/random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
1sequential/random_rotation/stateful_uniform/shapePack1sequential/random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:t
/sequential/random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�t
/sequential/random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠>{
1sequential/random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0sequential/random_rotation/stateful_uniform/ProdProd:sequential/random_rotation/stateful_uniform/shape:output:0:sequential/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: t
2sequential/random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
2sequential/random_rotation/stateful_uniform/Cast_1Cast9sequential/random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
:sequential/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkipCsequential_random_rotation_stateful_uniform_rngreadandskip_resource;sequential/random_rotation/stateful_uniform/Cast/x:output:06sequential/random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
?sequential/random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Asequential/random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Asequential/random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential/random_rotation/stateful_uniform/strided_sliceStridedSliceBsequential/random_rotation/stateful_uniform/RngReadAndSkip:value:0Hsequential/random_rotation/stateful_uniform/strided_slice/stack:output:0Jsequential/random_rotation/stateful_uniform/strided_slice/stack_1:output:0Jsequential/random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
3sequential/random_rotation/stateful_uniform/BitcastBitcastBsequential/random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Asequential/random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Csequential/random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Csequential/random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;sequential/random_rotation/stateful_uniform/strided_slice_1StridedSliceBsequential/random_rotation/stateful_uniform/RngReadAndSkip:value:0Jsequential/random_rotation/stateful_uniform/strided_slice_1/stack:output:0Lsequential/random_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Lsequential/random_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
5sequential/random_rotation/stateful_uniform/Bitcast_1BitcastDsequential/random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Hsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Dsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2:sequential/random_rotation/stateful_uniform/shape:output:0>sequential/random_rotation/stateful_uniform/Bitcast_1:output:0<sequential/random_rotation/stateful_uniform/Bitcast:output:0Qsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
/sequential/random_rotation/stateful_uniform/subSub8sequential/random_rotation/stateful_uniform/max:output:08sequential/random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
/sequential/random_rotation/stateful_uniform/mulMulMsequential/random_rotation/stateful_uniform/StatelessRandomUniformV2:output:03sequential/random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
+sequential/random_rotation/stateful_uniformAddV23sequential/random_rotation/stateful_uniform/mul:z:08sequential/random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������u
0sequential/random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.sequential/random_rotation/rotation_matrix/subSub%sequential/random_rotation/Cast_1:y:09sequential/random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
.sequential/random_rotation/rotation_matrix/CosCos/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������w
2sequential/random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0sequential/random_rotation/rotation_matrix/sub_1Sub%sequential/random_rotation/Cast_1:y:0;sequential/random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
.sequential/random_rotation/rotation_matrix/mulMul2sequential/random_rotation/rotation_matrix/Cos:y:04sequential/random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
.sequential/random_rotation/rotation_matrix/SinSin/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������w
2sequential/random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0sequential/random_rotation/rotation_matrix/sub_2Sub#sequential/random_rotation/Cast:y:0;sequential/random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
0sequential/random_rotation/rotation_matrix/mul_1Mul2sequential/random_rotation/rotation_matrix/Sin:y:04sequential/random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
0sequential/random_rotation/rotation_matrix/sub_3Sub2sequential/random_rotation/rotation_matrix/mul:z:04sequential/random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
0sequential/random_rotation/rotation_matrix/sub_4Sub2sequential/random_rotation/rotation_matrix/sub:z:04sequential/random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������y
4sequential/random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
2sequential/random_rotation/rotation_matrix/truedivRealDiv4sequential/random_rotation/rotation_matrix/sub_4:z:0=sequential/random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������w
2sequential/random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0sequential/random_rotation/rotation_matrix/sub_5Sub#sequential/random_rotation/Cast:y:0;sequential/random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
0sequential/random_rotation/rotation_matrix/Sin_1Sin/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������w
2sequential/random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0sequential/random_rotation/rotation_matrix/sub_6Sub%sequential/random_rotation/Cast_1:y:0;sequential/random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
0sequential/random_rotation/rotation_matrix/mul_2Mul4sequential/random_rotation/rotation_matrix/Sin_1:y:04sequential/random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
0sequential/random_rotation/rotation_matrix/Cos_1Cos/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������w
2sequential/random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0sequential/random_rotation/rotation_matrix/sub_7Sub#sequential/random_rotation/Cast:y:0;sequential/random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
0sequential/random_rotation/rotation_matrix/mul_3Mul4sequential/random_rotation/rotation_matrix/Cos_1:y:04sequential/random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
.sequential/random_rotation/rotation_matrix/addAddV24sequential/random_rotation/rotation_matrix/mul_2:z:04sequential/random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
0sequential/random_rotation/rotation_matrix/sub_8Sub4sequential/random_rotation/rotation_matrix/sub_5:z:02sequential/random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������{
6sequential/random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
4sequential/random_rotation/rotation_matrix/truediv_1RealDiv4sequential/random_rotation/rotation_matrix/sub_8:z:0?sequential/random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
0sequential/random_rotation/rotation_matrix/ShapeShape/sequential/random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:�
>sequential/random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@sequential/random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential/random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8sequential/random_rotation/rotation_matrix/strided_sliceStridedSlice9sequential/random_rotation/rotation_matrix/Shape:output:0Gsequential/random_rotation/rotation_matrix/strided_slice/stack:output:0Isequential/random_rotation/rotation_matrix/strided_slice/stack_1:output:0Isequential/random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0sequential/random_rotation/rotation_matrix/Cos_2Cos/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
@sequential/random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
:sequential/random_rotation/rotation_matrix/strided_slice_1StridedSlice4sequential/random_rotation/rotation_matrix/Cos_2:y:0Isequential/random_rotation/rotation_matrix/strided_slice_1/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
0sequential/random_rotation/rotation_matrix/Sin_2Sin/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
@sequential/random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
:sequential/random_rotation/rotation_matrix/strided_slice_2StridedSlice4sequential/random_rotation/rotation_matrix/Sin_2:y:0Isequential/random_rotation/rotation_matrix/strided_slice_2/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
.sequential/random_rotation/rotation_matrix/NegNegCsequential/random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
@sequential/random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
:sequential/random_rotation/rotation_matrix/strided_slice_3StridedSlice6sequential/random_rotation/rotation_matrix/truediv:z:0Isequential/random_rotation/rotation_matrix/strided_slice_3/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
0sequential/random_rotation/rotation_matrix/Sin_3Sin/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
@sequential/random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
:sequential/random_rotation/rotation_matrix/strided_slice_4StridedSlice4sequential/random_rotation/rotation_matrix/Sin_3:y:0Isequential/random_rotation/rotation_matrix/strided_slice_4/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
0sequential/random_rotation/rotation_matrix/Cos_3Cos/sequential/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
@sequential/random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
:sequential/random_rotation/rotation_matrix/strided_slice_5StridedSlice4sequential/random_rotation/rotation_matrix/Cos_3:y:0Isequential/random_rotation/rotation_matrix/strided_slice_5/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
@sequential/random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Bsequential/random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
:sequential/random_rotation/rotation_matrix/strided_slice_6StridedSlice8sequential/random_rotation/rotation_matrix/truediv_1:z:0Isequential/random_rotation/rotation_matrix/strided_slice_6/stack:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0Ksequential/random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask{
9sequential/random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
7sequential/random_rotation/rotation_matrix/zeros/packedPackAsequential/random_rotation/rotation_matrix/strided_slice:output:0Bsequential/random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:{
6sequential/random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0sequential/random_rotation/rotation_matrix/zerosFill@sequential/random_rotation/rotation_matrix/zeros/packed:output:0?sequential/random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������x
6sequential/random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
1sequential/random_rotation/rotation_matrix/concatConcatV2Csequential/random_rotation/rotation_matrix/strided_slice_1:output:02sequential/random_rotation/rotation_matrix/Neg:y:0Csequential/random_rotation/rotation_matrix/strided_slice_3:output:0Csequential/random_rotation/rotation_matrix/strided_slice_4:output:0Csequential/random_rotation/rotation_matrix/strided_slice_5:output:0Csequential/random_rotation/rotation_matrix/strided_slice_6:output:09sequential/random_rotation/rotation_matrix/zeros:output:0?sequential/random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
*sequential/random_rotation/transform/ShapeShape?sequential/random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:�
8sequential/random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
:sequential/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:sequential/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2sequential/random_rotation/transform/strided_sliceStridedSlice3sequential/random_rotation/transform/Shape:output:0Asequential/random_rotation/transform/strided_slice/stack:output:0Csequential/random_rotation/transform/strided_slice/stack_1:output:0Csequential/random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:t
/sequential/random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?sequential/random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3?sequential/random_flip/stateless_random_flip_left_right/add:z:0:sequential/random_rotation/rotation_matrix/concat:output:0;sequential/random_rotation/transform/strided_slice:output:08sequential/random_rotation/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	NEAREST*
interpolation
BILINEAR�
)sequential_1/CONV01/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_1/CONV01/Conv2DConv2DTsequential/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:01sequential_1/CONV01/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential_1/CONV01/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/CONV01/BiasAddBiasAdd#sequential_1/CONV01/Conv2D:output:02sequential_1/CONV01/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
"sequential_1/BNOR01/ReadVariableOpReadVariableOp+sequential_1_bnor01_readvariableop_resource*
_output_shapes
:*
dtype0�
$sequential_1/BNOR01/ReadVariableOp_1ReadVariableOp-sequential_1_bnor01_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOpReadVariableOp<sequential_1_bnor01_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>sequential_1_bnor01_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
$sequential_1/BNOR01/FusedBatchNormV3FusedBatchNormV3$sequential_1/CONV01/BiasAdd:output:0*sequential_1/BNOR01/ReadVariableOp:value:0,sequential_1/BNOR01/ReadVariableOp_1:value:0;sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp:value:0=sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
"sequential_1/BNOR01/AssignNewValueAssignVariableOp<sequential_1_bnor01_fusedbatchnormv3_readvariableop_resource1sequential_1/BNOR01/FusedBatchNormV3:batch_mean:04^sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
$sequential_1/BNOR01/AssignNewValue_1AssignVariableOp>sequential_1_bnor01_fusedbatchnormv3_readvariableop_1_resource5sequential_1/BNOR01/FusedBatchNormV3:batch_variance:06^sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_1/RELU01/ReluRelu(sequential_1/BNOR01/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
sequential_1/MP0102/MaxPoolMaxPool&sequential_1/RELU01/Relu:activations:0*/
_output_shapes
:���������88*
ksize
*
paddingVALID*
strides
�
)sequential_1/CONV02/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_1/CONV02/Conv2DConv2D$sequential_1/MP0102/MaxPool:output:01sequential_1/CONV02/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88*
paddingSAME*
strides
�
*sequential_1/CONV02/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/CONV02/BiasAddBiasAdd#sequential_1/CONV02/Conv2D:output:02sequential_1/CONV02/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88�
"sequential_1/BNOR02/ReadVariableOpReadVariableOp+sequential_1_bnor02_readvariableop_resource*
_output_shapes
:*
dtype0�
$sequential_1/BNOR02/ReadVariableOp_1ReadVariableOp-sequential_1_bnor02_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOpReadVariableOp<sequential_1_bnor02_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>sequential_1_bnor02_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
$sequential_1/BNOR02/FusedBatchNormV3FusedBatchNormV3$sequential_1/CONV02/BiasAdd:output:0*sequential_1/BNOR02/ReadVariableOp:value:0,sequential_1/BNOR02/ReadVariableOp_1:value:0;sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp:value:0=sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������88:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
"sequential_1/BNOR02/AssignNewValueAssignVariableOp<sequential_1_bnor02_fusedbatchnormv3_readvariableop_resource1sequential_1/BNOR02/FusedBatchNormV3:batch_mean:04^sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
$sequential_1/BNOR02/AssignNewValue_1AssignVariableOp>sequential_1_bnor02_fusedbatchnormv3_readvariableop_1_resource5sequential_1/BNOR02/FusedBatchNormV3:batch_variance:06^sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_1/RELU02/ReluRelu(sequential_1/BNOR02/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������88�
sequential_1/MP0203/MaxPoolMaxPool&sequential_1/RELU02/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
)sequential_1/CONV03/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
sequential_1/CONV03/Conv2DConv2D$sequential_1/MP0203/MaxPool:output:01sequential_1/CONV03/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
*sequential_1/CONV03/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
sequential_1/CONV03/BiasAddBiasAdd#sequential_1/CONV03/Conv2D:output:02sequential_1/CONV03/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
"sequential_1/BNOR03/ReadVariableOpReadVariableOp+sequential_1_bnor03_readvariableop_resource*
_output_shapes
:<*
dtype0�
$sequential_1/BNOR03/ReadVariableOp_1ReadVariableOp-sequential_1_bnor03_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
3sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOpReadVariableOp<sequential_1_bnor03_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
5sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>sequential_1_bnor03_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
$sequential_1/BNOR03/FusedBatchNormV3FusedBatchNormV3$sequential_1/CONV03/BiasAdd:output:0*sequential_1/BNOR03/ReadVariableOp:value:0,sequential_1/BNOR03/ReadVariableOp_1:value:0;sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp:value:0=sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
"sequential_1/BNOR03/AssignNewValueAssignVariableOp<sequential_1_bnor03_fusedbatchnormv3_readvariableop_resource1sequential_1/BNOR03/FusedBatchNormV3:batch_mean:04^sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
$sequential_1/BNOR03/AssignNewValue_1AssignVariableOp>sequential_1_bnor03_fusedbatchnormv3_readvariableop_1_resource5sequential_1/BNOR03/FusedBatchNormV3:batch_variance:06^sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_1/RELU03/ReluRelu(sequential_1/BNOR03/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<j
sequential_1/FLAT01/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����-  �
sequential_1/FLAT01/ReshapeReshape&sequential_1/RELU03/Relu:activations:0"sequential_1/FLAT01/Const:output:0*
T0*(
_output_shapes
:����������[f
!sequential_1/DROP01/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
sequential_1/DROP01/dropout/MulMul$sequential_1/FLAT01/Reshape:output:0*sequential_1/DROP01/dropout/Const:output:0*
T0*(
_output_shapes
:����������[u
!sequential_1/DROP01/dropout/ShapeShape$sequential_1/FLAT01/Reshape:output:0*
T0*
_output_shapes
:�
8sequential_1/DROP01/dropout/random_uniform/RandomUniformRandomUniform*sequential_1/DROP01/dropout/Shape:output:0*
T0*(
_output_shapes
:����������[*
dtype0o
*sequential_1/DROP01/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
(sequential_1/DROP01/dropout/GreaterEqualGreaterEqualAsequential_1/DROP01/dropout/random_uniform/RandomUniform:output:03sequential_1/DROP01/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������[�
 sequential_1/DROP01/dropout/CastCast,sequential_1/DROP01/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������[�
!sequential_1/DROP01/dropout/Mul_1Mul#sequential_1/DROP01/dropout/Mul:z:0$sequential_1/DROP01/dropout/Cast:y:0*
T0*(
_output_shapes
:����������[�
)sequential_1/DENS01/MatMul/ReadVariableOpReadVariableOp2sequential_1_dens01_matmul_readvariableop_resource*
_output_shapes
:	�[*
dtype0�
sequential_1/DENS01/MatMulMatMul%sequential_1/DROP01/dropout/Mul_1:z:01sequential_1/DENS01/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*sequential_1/DENS01/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_dens01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/DENS01/BiasAddBiasAdd$sequential_1/DENS01/MatMul:product:02sequential_1/DENS01/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
sequential_1/SOFT01/SoftmaxSoftmax$sequential_1/DENS01/BiasAdd:output:0*
T0*'
_output_shapes
:����������
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2sequential_1_conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOp3sequential_1_conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2sequential_1_conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOp3sequential_1_conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2sequential_1_conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOp3sequential_1_conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentity%sequential_1/SOFT01/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp@^sequential/random_flip/stateful_uniform_full_int/RngReadAndSkip;^sequential/random_rotation/stateful_uniform/RngReadAndSkip#^sequential_1/BNOR01/AssignNewValue%^sequential_1/BNOR01/AssignNewValue_14^sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp6^sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1#^sequential_1/BNOR01/ReadVariableOp%^sequential_1/BNOR01/ReadVariableOp_1#^sequential_1/BNOR02/AssignNewValue%^sequential_1/BNOR02/AssignNewValue_14^sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp6^sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1#^sequential_1/BNOR02/ReadVariableOp%^sequential_1/BNOR02/ReadVariableOp_1#^sequential_1/BNOR03/AssignNewValue%^sequential_1/BNOR03/AssignNewValue_14^sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp6^sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1#^sequential_1/BNOR03/ReadVariableOp%^sequential_1/BNOR03/ReadVariableOp_1+^sequential_1/CONV01/BiasAdd/ReadVariableOp*^sequential_1/CONV01/Conv2D/ReadVariableOp+^sequential_1/CONV02/BiasAdd/ReadVariableOp*^sequential_1/CONV02/Conv2D/ReadVariableOp+^sequential_1/CONV03/BiasAdd/ReadVariableOp*^sequential_1/CONV03/Conv2D/ReadVariableOp+^sequential_1/DENS01/BiasAdd/ReadVariableOp*^sequential_1/DENS01/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2�
?sequential/random_flip/stateful_uniform_full_int/RngReadAndSkip?sequential/random_flip/stateful_uniform_full_int/RngReadAndSkip2x
:sequential/random_rotation/stateful_uniform/RngReadAndSkip:sequential/random_rotation/stateful_uniform/RngReadAndSkip2H
"sequential_1/BNOR01/AssignNewValue"sequential_1/BNOR01/AssignNewValue2L
$sequential_1/BNOR01/AssignNewValue_1$sequential_1/BNOR01/AssignNewValue_12j
3sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp3sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp2n
5sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_15sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_12H
"sequential_1/BNOR01/ReadVariableOp"sequential_1/BNOR01/ReadVariableOp2L
$sequential_1/BNOR01/ReadVariableOp_1$sequential_1/BNOR01/ReadVariableOp_12H
"sequential_1/BNOR02/AssignNewValue"sequential_1/BNOR02/AssignNewValue2L
$sequential_1/BNOR02/AssignNewValue_1$sequential_1/BNOR02/AssignNewValue_12j
3sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp3sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp2n
5sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_15sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_12H
"sequential_1/BNOR02/ReadVariableOp"sequential_1/BNOR02/ReadVariableOp2L
$sequential_1/BNOR02/ReadVariableOp_1$sequential_1/BNOR02/ReadVariableOp_12H
"sequential_1/BNOR03/AssignNewValue"sequential_1/BNOR03/AssignNewValue2L
$sequential_1/BNOR03/AssignNewValue_1$sequential_1/BNOR03/AssignNewValue_12j
3sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp3sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp2n
5sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_15sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_12H
"sequential_1/BNOR03/ReadVariableOp"sequential_1/BNOR03/ReadVariableOp2L
$sequential_1/BNOR03/ReadVariableOp_1$sequential_1/BNOR03/ReadVariableOp_12X
*sequential_1/CONV01/BiasAdd/ReadVariableOp*sequential_1/CONV01/BiasAdd/ReadVariableOp2V
)sequential_1/CONV01/Conv2D/ReadVariableOp)sequential_1/CONV01/Conv2D/ReadVariableOp2X
*sequential_1/CONV02/BiasAdd/ReadVariableOp*sequential_1/CONV02/BiasAdd/ReadVariableOp2V
)sequential_1/CONV02/Conv2D/ReadVariableOp)sequential_1/CONV02/Conv2D/ReadVariableOp2X
*sequential_1/CONV03/BiasAdd/ReadVariableOp*sequential_1/CONV03/BiasAdd/ReadVariableOp2V
)sequential_1/CONV03/Conv2D/ReadVariableOp)sequential_1/CONV03/Conv2D/ReadVariableOp2X
*sequential_1/DENS01/BiasAdd/ReadVariableOp*sequential_1/DENS01/BiasAdd/ReadVariableOp2V
)sequential_1/DENS01/MatMul/ReadVariableOp)sequential_1/DENS01/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_795283

inputs 
random_flip_795276:	$
random_rotation_795279:	
identity��#random_flip/StatefulPartitionedCall�'random_rotation/StatefulPartitionedCall�
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_795276*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_795261�
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_795279*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_random_rotation_layer_call_and_return_conditional_losses_795190�
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
^
B__inference_RELU02_layer_call_and_return_conditional_losses_798418

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������88b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������88"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������88:W S
/
_output_shapes
:���������88
 
_user_specified_nameinputs
��
�#
"__inference__traced_restore_799073
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: :
 assignvariableop_5_conv01_kernel:,
assignvariableop_6_conv01_bias:-
assignvariableop_7_bnor01_gamma:,
assignvariableop_8_bnor01_beta:3
%assignvariableop_9_bnor01_moving_mean:8
*assignvariableop_10_bnor01_moving_variance:;
!assignvariableop_11_conv02_kernel:-
assignvariableop_12_conv02_bias:.
 assignvariableop_13_bnor02_gamma:-
assignvariableop_14_bnor02_beta:4
&assignvariableop_15_bnor02_moving_mean:8
*assignvariableop_16_bnor02_moving_variance:;
!assignvariableop_17_conv03_kernel:<-
assignvariableop_18_conv03_bias:<.
 assignvariableop_19_bnor03_gamma:<-
assignvariableop_20_bnor03_beta:<4
&assignvariableop_21_bnor03_moving_mean:<8
*assignvariableop_22_bnor03_moving_variance:<4
!assignvariableop_23_dens01_kernel:	�[-
assignvariableop_24_dens01_bias:#
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: 6
(assignvariableop_29_random_flip_statevar:	:
,assignvariableop_30_random_rotation_statevar:	B
(assignvariableop_31_adam_conv01_kernel_m:4
&assignvariableop_32_adam_conv01_bias_m:5
'assignvariableop_33_adam_bnor01_gamma_m:4
&assignvariableop_34_adam_bnor01_beta_m:B
(assignvariableop_35_adam_conv02_kernel_m:4
&assignvariableop_36_adam_conv02_bias_m:5
'assignvariableop_37_adam_bnor02_gamma_m:4
&assignvariableop_38_adam_bnor02_beta_m:B
(assignvariableop_39_adam_conv03_kernel_m:<4
&assignvariableop_40_adam_conv03_bias_m:<5
'assignvariableop_41_adam_bnor03_gamma_m:<4
&assignvariableop_42_adam_bnor03_beta_m:<;
(assignvariableop_43_adam_dens01_kernel_m:	�[4
&assignvariableop_44_adam_dens01_bias_m:B
(assignvariableop_45_adam_conv01_kernel_v:4
&assignvariableop_46_adam_conv01_bias_v:5
'assignvariableop_47_adam_bnor01_gamma_v:4
&assignvariableop_48_adam_bnor01_beta_v:B
(assignvariableop_49_adam_conv02_kernel_v:4
&assignvariableop_50_adam_conv02_bias_v:5
'assignvariableop_51_adam_bnor02_gamma_v:4
&assignvariableop_52_adam_bnor02_beta_v:B
(assignvariableop_53_adam_conv03_kernel_v:<4
&assignvariableop_54_adam_conv03_bias_v:<5
'assignvariableop_55_adam_bnor03_gamma_v:<4
&assignvariableop_56_adam_bnor03_beta_v:<;
(assignvariableop_57_adam_dens01_kernel_v:	�[4
&assignvariableop_58_adam_dens01_bias_v:
identity_60��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv01_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv01_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_bnor01_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_bnor01_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp%assignvariableop_9_bnor01_moving_meanIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp*assignvariableop_10_bnor01_moving_varianceIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv02_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_conv02_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_bnor02_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_bnor02_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp&assignvariableop_15_bnor02_moving_meanIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_bnor02_moving_varianceIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv03_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_conv03_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp assignvariableop_19_bnor03_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_bnor03_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp&assignvariableop_21_bnor03_moving_meanIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_bnor03_moving_varianceIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dens01_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_dens01_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_random_flip_statevarIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp,assignvariableop_30_random_rotation_statevarIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv01_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_conv01_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_bnor01_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_bnor01_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv02_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_conv02_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_bnor02_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_bnor02_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_conv03_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_conv03_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_bnor03_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_bnor03_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_dens01_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_dens01_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_conv01_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_conv01_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_bnor01_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp&assignvariableop_48_adam_bnor01_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv02_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv02_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_bnor02_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_bnor02_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_conv03_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_conv03_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_bnor03_gamma_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp&assignvariableop_56_adam_bnor03_beta_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_dens01_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_dens01_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*�
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
m
F__inference_sequential_layer_call_and_return_conditional_losses_795305
random_flip_input
identity�
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_795052�
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_random_rotation_layer_call_and_return_conditional_losses_795058z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�
�
$__inference_signature_wrapper_797417
input_2!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:	�[

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_795041o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
`
'__inference_DROP01_layer_call_fn_798564

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DROP01_layer_call_and_return_conditional_losses_795826p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������[`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������[22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�

�
__inference_loss_fn_3_798654D
6conv02_bias_regularizer_square_readvariableop_resource:
identity��-CONV02/bias/Regularizer/Square/ReadVariableOp�
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOp6conv02_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentityCONV02/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^CONV02/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp
�
�
'__inference_BNOR02_layer_call_fn_798359

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR02_layer_call_and_return_conditional_losses_795413�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
b
F__inference_sequential_layer_call_and_return_conditional_losses_797435

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
G
+__inference_sequential_layer_call_fn_797422

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_795061j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
K__inference_random_rotation_layer_call_and_return_conditional_losses_798178

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠>`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	NEAREST*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_CONV02_layer_call_and_return_conditional_losses_798346

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88�
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������88�
NoOpNoOp^BiasAdd/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������88
 
_user_specified_nameinputs
�
�
B__inference_BNOR02_layer_call_and_return_conditional_losses_795444

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
^
B__inference_MP0203_layer_call_and_return_conditional_losses_798428

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
B__inference_DROP01_layer_call_and_return_conditional_losses_798569

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������[\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������["!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������[:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�
�
-__inference_sequential_1_layer_call_fn_797733

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:	�[

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_796025o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
؀
�
H__inference_sequential_1_layer_call_and_return_conditional_losses_797848

inputs?
%conv01_conv2d_readvariableop_resource:4
&conv01_biasadd_readvariableop_resource:,
bnor01_readvariableop_resource:.
 bnor01_readvariableop_1_resource:=
/bnor01_fusedbatchnormv3_readvariableop_resource:?
1bnor01_fusedbatchnormv3_readvariableop_1_resource:?
%conv02_conv2d_readvariableop_resource:4
&conv02_biasadd_readvariableop_resource:,
bnor02_readvariableop_resource:.
 bnor02_readvariableop_1_resource:=
/bnor02_fusedbatchnormv3_readvariableop_resource:?
1bnor02_fusedbatchnormv3_readvariableop_1_resource:?
%conv03_conv2d_readvariableop_resource:<4
&conv03_biasadd_readvariableop_resource:<,
bnor03_readvariableop_resource:<.
 bnor03_readvariableop_1_resource:<=
/bnor03_fusedbatchnormv3_readvariableop_resource:<?
1bnor03_fusedbatchnormv3_readvariableop_1_resource:<8
%dens01_matmul_readvariableop_resource:	�[4
&dens01_biasadd_readvariableop_resource:
identity��&BNOR01/FusedBatchNormV3/ReadVariableOp�(BNOR01/FusedBatchNormV3/ReadVariableOp_1�BNOR01/ReadVariableOp�BNOR01/ReadVariableOp_1�&BNOR02/FusedBatchNormV3/ReadVariableOp�(BNOR02/FusedBatchNormV3/ReadVariableOp_1�BNOR02/ReadVariableOp�BNOR02/ReadVariableOp_1�&BNOR03/FusedBatchNormV3/ReadVariableOp�(BNOR03/FusedBatchNormV3/ReadVariableOp_1�BNOR03/ReadVariableOp�BNOR03/ReadVariableOp_1�CONV01/BiasAdd/ReadVariableOp�CONV01/Conv2D/ReadVariableOp�-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�CONV02/BiasAdd/ReadVariableOp�CONV02/Conv2D/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�CONV03/BiasAdd/ReadVariableOp�CONV03/Conv2D/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�DENS01/BiasAdd/ReadVariableOp�DENS01/MatMul/ReadVariableOp�
CONV01/Conv2D/ReadVariableOpReadVariableOp%conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
CONV01/Conv2DConv2Dinputs$CONV01/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
CONV01/BiasAdd/ReadVariableOpReadVariableOp&conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/BiasAddBiasAddCONV01/Conv2D:output:0%CONV01/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������p
BNOR01/ReadVariableOpReadVariableOpbnor01_readvariableop_resource*
_output_shapes
:*
dtype0t
BNOR01/ReadVariableOp_1ReadVariableOp bnor01_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&BNOR01/FusedBatchNormV3/ReadVariableOpReadVariableOp/bnor01_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
(BNOR01/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp1bnor01_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
BNOR01/FusedBatchNormV3FusedBatchNormV3CONV01/BiasAdd:output:0BNOR01/ReadVariableOp:value:0BNOR01/ReadVariableOp_1:value:0.BNOR01/FusedBatchNormV3/ReadVariableOp:value:00BNOR01/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( l
RELU01/ReluReluBNOR01/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
MP0102/MaxPoolMaxPoolRELU01/Relu:activations:0*/
_output_shapes
:���������88*
ksize
*
paddingVALID*
strides
�
CONV02/Conv2D/ReadVariableOpReadVariableOp%conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
CONV02/Conv2DConv2DMP0102/MaxPool:output:0$CONV02/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88*
paddingSAME*
strides
�
CONV02/BiasAdd/ReadVariableOpReadVariableOp&conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/BiasAddBiasAddCONV02/Conv2D:output:0%CONV02/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88p
BNOR02/ReadVariableOpReadVariableOpbnor02_readvariableop_resource*
_output_shapes
:*
dtype0t
BNOR02/ReadVariableOp_1ReadVariableOp bnor02_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&BNOR02/FusedBatchNormV3/ReadVariableOpReadVariableOp/bnor02_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
(BNOR02/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp1bnor02_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
BNOR02/FusedBatchNormV3FusedBatchNormV3CONV02/BiasAdd:output:0BNOR02/ReadVariableOp:value:0BNOR02/ReadVariableOp_1:value:0.BNOR02/FusedBatchNormV3/ReadVariableOp:value:00BNOR02/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������88:::::*
epsilon%o�:*
is_training( j
RELU02/ReluReluBNOR02/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������88�
MP0203/MaxPoolMaxPoolRELU02/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
CONV03/Conv2D/ReadVariableOpReadVariableOp%conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
CONV03/Conv2DConv2DMP0203/MaxPool:output:0$CONV03/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
CONV03/BiasAdd/ReadVariableOpReadVariableOp&conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/BiasAddBiasAddCONV03/Conv2D:output:0%CONV03/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<p
BNOR03/ReadVariableOpReadVariableOpbnor03_readvariableop_resource*
_output_shapes
:<*
dtype0t
BNOR03/ReadVariableOp_1ReadVariableOp bnor03_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
&BNOR03/FusedBatchNormV3/ReadVariableOpReadVariableOp/bnor03_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
(BNOR03/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp1bnor03_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
BNOR03/FusedBatchNormV3FusedBatchNormV3CONV03/BiasAdd:output:0BNOR03/ReadVariableOp:value:0BNOR03/ReadVariableOp_1:value:0.BNOR03/FusedBatchNormV3/ReadVariableOp:value:00BNOR03/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
is_training( j
RELU03/ReluReluBNOR03/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<]
FLAT01/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����-  ~
FLAT01/ReshapeReshapeRELU03/Relu:activations:0FLAT01/Const:output:0*
T0*(
_output_shapes
:����������[g
DROP01/IdentityIdentityFLAT01/Reshape:output:0*
T0*(
_output_shapes
:����������[�
DENS01/MatMul/ReadVariableOpReadVariableOp%dens01_matmul_readvariableop_resource*
_output_shapes
:	�[*
dtype0�
DENS01/MatMulMatMulDROP01/Identity:output:0$DENS01/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
DENS01/BiasAdd/ReadVariableOpReadVariableOp&dens01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
DENS01/BiasAddBiasAddDENS01/MatMul:product:0%DENS01/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
SOFT01/SoftmaxSoftmaxDENS01/BiasAdd:output:0*
T0*'
_output_shapes
:����������
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOp&conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOp&conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOp&conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitySOFT01/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^BNOR01/FusedBatchNormV3/ReadVariableOp)^BNOR01/FusedBatchNormV3/ReadVariableOp_1^BNOR01/ReadVariableOp^BNOR01/ReadVariableOp_1'^BNOR02/FusedBatchNormV3/ReadVariableOp)^BNOR02/FusedBatchNormV3/ReadVariableOp_1^BNOR02/ReadVariableOp^BNOR02/ReadVariableOp_1'^BNOR03/FusedBatchNormV3/ReadVariableOp)^BNOR03/FusedBatchNormV3/ReadVariableOp_1^BNOR03/ReadVariableOp^BNOR03/ReadVariableOp_1^CONV01/BiasAdd/ReadVariableOp^CONV01/Conv2D/ReadVariableOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp^CONV02/BiasAdd/ReadVariableOp^CONV02/Conv2D/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp^CONV03/BiasAdd/ReadVariableOp^CONV03/Conv2D/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp^DENS01/BiasAdd/ReadVariableOp^DENS01/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2P
&BNOR01/FusedBatchNormV3/ReadVariableOp&BNOR01/FusedBatchNormV3/ReadVariableOp2T
(BNOR01/FusedBatchNormV3/ReadVariableOp_1(BNOR01/FusedBatchNormV3/ReadVariableOp_12.
BNOR01/ReadVariableOpBNOR01/ReadVariableOp22
BNOR01/ReadVariableOp_1BNOR01/ReadVariableOp_12P
&BNOR02/FusedBatchNormV3/ReadVariableOp&BNOR02/FusedBatchNormV3/ReadVariableOp2T
(BNOR02/FusedBatchNormV3/ReadVariableOp_1(BNOR02/FusedBatchNormV3/ReadVariableOp_12.
BNOR02/ReadVariableOpBNOR02/ReadVariableOp22
BNOR02/ReadVariableOp_1BNOR02/ReadVariableOp_12P
&BNOR03/FusedBatchNormV3/ReadVariableOp&BNOR03/FusedBatchNormV3/ReadVariableOp2T
(BNOR03/FusedBatchNormV3/ReadVariableOp_1(BNOR03/FusedBatchNormV3/ReadVariableOp_12.
BNOR03/ReadVariableOpBNOR03/ReadVariableOp22
BNOR03/ReadVariableOp_1BNOR03/ReadVariableOp_12>
CONV01/BiasAdd/ReadVariableOpCONV01/BiasAdd/ReadVariableOp2<
CONV01/Conv2D/ReadVariableOpCONV01/Conv2D/ReadVariableOp2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2>
CONV02/BiasAdd/ReadVariableOpCONV02/BiasAdd/ReadVariableOp2<
CONV02/Conv2D/ReadVariableOpCONV02/Conv2D/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2>
CONV03/BiasAdd/ReadVariableOpCONV03/BiasAdd/ReadVariableOp2<
CONV03/Conv2D/ReadVariableOpCONV03/Conv2D/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2>
DENS01/BiasAdd/ReadVariableOpDENS01/BiasAdd/ReadVariableOp2<
DENS01/MatMul/ReadVariableOpDENS01/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
L
0__inference_random_rotation_layer_call_fn_798049

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_random_rotation_layer_call_and_return_conditional_losses_795058j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
a
B__inference_DROP01_layer_call_and_return_conditional_losses_798581

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������[C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������[*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������[p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������[j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������[Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������[:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�
�
B__inference_BNOR03_layer_call_and_return_conditional_losses_795520

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_797607

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identity��4random_flip/stateful_uniform_full_int/RngReadAndSkip�/random_rotation/stateful_uniform/RngReadAndSkipu
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: n
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	`
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:p
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:�
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::�
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������~
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:����������
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������w
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������y
random_rotation/ShapeShape4random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:m
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������q
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: x
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������q
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:i
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�i
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠>p
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: i
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:~
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
 random_rotation/stateful_uniformAddV2(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������j
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ~
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������~
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������n
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������p
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������y
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:}
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskp
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������m
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
random_rotation/transform/ShapeShape4random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:w
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:i
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV34random_flip/stateless_random_flip_left_right/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	NEAREST*
interpolation
BILINEAR�
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip0^random_rotation/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
C
'__inference_RELU03_layer_call_fn_798538

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU03_layer_call_and_return_conditional_losses_795670h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
^
B__inference_SOFT01_layer_call_and_return_conditional_losses_798610

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_random_rotation_layer_call_fn_798056

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_random_rotation_layer_call_and_return_conditional_losses_795190y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
a
B__inference_DROP01_layer_call_and_return_conditional_losses_795826

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������[C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������[*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������[p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������[j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������[Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������[:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�
�
B__inference_BNOR03_layer_call_and_return_conditional_losses_798515

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
�
B__inference_BNOR02_layer_call_and_return_conditional_losses_798408

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
ҕ
�
A__inference_model_layer_call_and_return_conditional_losses_797080

inputsL
2sequential_1_conv01_conv2d_readvariableop_resource:A
3sequential_1_conv01_biasadd_readvariableop_resource:9
+sequential_1_bnor01_readvariableop_resource:;
-sequential_1_bnor01_readvariableop_1_resource:J
<sequential_1_bnor01_fusedbatchnormv3_readvariableop_resource:L
>sequential_1_bnor01_fusedbatchnormv3_readvariableop_1_resource:L
2sequential_1_conv02_conv2d_readvariableop_resource:A
3sequential_1_conv02_biasadd_readvariableop_resource:9
+sequential_1_bnor02_readvariableop_resource:;
-sequential_1_bnor02_readvariableop_1_resource:J
<sequential_1_bnor02_fusedbatchnormv3_readvariableop_resource:L
>sequential_1_bnor02_fusedbatchnormv3_readvariableop_1_resource:L
2sequential_1_conv03_conv2d_readvariableop_resource:<A
3sequential_1_conv03_biasadd_readvariableop_resource:<9
+sequential_1_bnor03_readvariableop_resource:<;
-sequential_1_bnor03_readvariableop_1_resource:<J
<sequential_1_bnor03_fusedbatchnormv3_readvariableop_resource:<L
>sequential_1_bnor03_fusedbatchnormv3_readvariableop_1_resource:<E
2sequential_1_dens01_matmul_readvariableop_resource:	�[A
3sequential_1_dens01_biasadd_readvariableop_resource:
identity��-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�3sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp�5sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1�"sequential_1/BNOR01/ReadVariableOp�$sequential_1/BNOR01/ReadVariableOp_1�3sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp�5sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1�"sequential_1/BNOR02/ReadVariableOp�$sequential_1/BNOR02/ReadVariableOp_1�3sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp�5sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1�"sequential_1/BNOR03/ReadVariableOp�$sequential_1/BNOR03/ReadVariableOp_1�*sequential_1/CONV01/BiasAdd/ReadVariableOp�)sequential_1/CONV01/Conv2D/ReadVariableOp�*sequential_1/CONV02/BiasAdd/ReadVariableOp�)sequential_1/CONV02/Conv2D/ReadVariableOp�*sequential_1/CONV03/BiasAdd/ReadVariableOp�)sequential_1/CONV03/Conv2D/ReadVariableOp�*sequential_1/DENS01/BiasAdd/ReadVariableOp�)sequential_1/DENS01/MatMul/ReadVariableOp�
)sequential_1/CONV01/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_1/CONV01/Conv2DConv2Dinputs1sequential_1/CONV01/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
*sequential_1/CONV01/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/CONV01/BiasAddBiasAdd#sequential_1/CONV01/Conv2D:output:02sequential_1/CONV01/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
"sequential_1/BNOR01/ReadVariableOpReadVariableOp+sequential_1_bnor01_readvariableop_resource*
_output_shapes
:*
dtype0�
$sequential_1/BNOR01/ReadVariableOp_1ReadVariableOp-sequential_1_bnor01_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOpReadVariableOp<sequential_1_bnor01_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>sequential_1_bnor01_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
$sequential_1/BNOR01/FusedBatchNormV3FusedBatchNormV3$sequential_1/CONV01/BiasAdd:output:0*sequential_1/BNOR01/ReadVariableOp:value:0,sequential_1/BNOR01/ReadVariableOp_1:value:0;sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp:value:0=sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
sequential_1/RELU01/ReluRelu(sequential_1/BNOR01/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
sequential_1/MP0102/MaxPoolMaxPool&sequential_1/RELU01/Relu:activations:0*/
_output_shapes
:���������88*
ksize
*
paddingVALID*
strides
�
)sequential_1/CONV02/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_1/CONV02/Conv2DConv2D$sequential_1/MP0102/MaxPool:output:01sequential_1/CONV02/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88*
paddingSAME*
strides
�
*sequential_1/CONV02/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/CONV02/BiasAddBiasAdd#sequential_1/CONV02/Conv2D:output:02sequential_1/CONV02/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88�
"sequential_1/BNOR02/ReadVariableOpReadVariableOp+sequential_1_bnor02_readvariableop_resource*
_output_shapes
:*
dtype0�
$sequential_1/BNOR02/ReadVariableOp_1ReadVariableOp-sequential_1_bnor02_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOpReadVariableOp<sequential_1_bnor02_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>sequential_1_bnor02_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
$sequential_1/BNOR02/FusedBatchNormV3FusedBatchNormV3$sequential_1/CONV02/BiasAdd:output:0*sequential_1/BNOR02/ReadVariableOp:value:0,sequential_1/BNOR02/ReadVariableOp_1:value:0;sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp:value:0=sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������88:::::*
epsilon%o�:*
is_training( �
sequential_1/RELU02/ReluRelu(sequential_1/BNOR02/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������88�
sequential_1/MP0203/MaxPoolMaxPool&sequential_1/RELU02/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
)sequential_1/CONV03/Conv2D/ReadVariableOpReadVariableOp2sequential_1_conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
sequential_1/CONV03/Conv2DConv2D$sequential_1/MP0203/MaxPool:output:01sequential_1/CONV03/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
*sequential_1/CONV03/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
sequential_1/CONV03/BiasAddBiasAdd#sequential_1/CONV03/Conv2D:output:02sequential_1/CONV03/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
"sequential_1/BNOR03/ReadVariableOpReadVariableOp+sequential_1_bnor03_readvariableop_resource*
_output_shapes
:<*
dtype0�
$sequential_1/BNOR03/ReadVariableOp_1ReadVariableOp-sequential_1_bnor03_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
3sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOpReadVariableOp<sequential_1_bnor03_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
5sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>sequential_1_bnor03_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
$sequential_1/BNOR03/FusedBatchNormV3FusedBatchNormV3$sequential_1/CONV03/BiasAdd:output:0*sequential_1/BNOR03/ReadVariableOp:value:0,sequential_1/BNOR03/ReadVariableOp_1:value:0;sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp:value:0=sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
is_training( �
sequential_1/RELU03/ReluRelu(sequential_1/BNOR03/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<j
sequential_1/FLAT01/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����-  �
sequential_1/FLAT01/ReshapeReshape&sequential_1/RELU03/Relu:activations:0"sequential_1/FLAT01/Const:output:0*
T0*(
_output_shapes
:����������[�
sequential_1/DROP01/IdentityIdentity$sequential_1/FLAT01/Reshape:output:0*
T0*(
_output_shapes
:����������[�
)sequential_1/DENS01/MatMul/ReadVariableOpReadVariableOp2sequential_1_dens01_matmul_readvariableop_resource*
_output_shapes
:	�[*
dtype0�
sequential_1/DENS01/MatMulMatMul%sequential_1/DROP01/Identity:output:01sequential_1/DENS01/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*sequential_1/DENS01/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_dens01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/DENS01/BiasAddBiasAdd$sequential_1/DENS01/MatMul:product:02sequential_1/DENS01/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
sequential_1/SOFT01/SoftmaxSoftmax$sequential_1/DENS01/BiasAdd:output:0*
T0*'
_output_shapes
:����������
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2sequential_1_conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOp3sequential_1_conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2sequential_1_conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOp3sequential_1_conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2sequential_1_conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOp3sequential_1_conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentity%sequential_1/SOFT01/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp4^sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp6^sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1#^sequential_1/BNOR01/ReadVariableOp%^sequential_1/BNOR01/ReadVariableOp_14^sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp6^sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1#^sequential_1/BNOR02/ReadVariableOp%^sequential_1/BNOR02/ReadVariableOp_14^sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp6^sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1#^sequential_1/BNOR03/ReadVariableOp%^sequential_1/BNOR03/ReadVariableOp_1+^sequential_1/CONV01/BiasAdd/ReadVariableOp*^sequential_1/CONV01/Conv2D/ReadVariableOp+^sequential_1/CONV02/BiasAdd/ReadVariableOp*^sequential_1/CONV02/Conv2D/ReadVariableOp+^sequential_1/CONV03/BiasAdd/ReadVariableOp*^sequential_1/CONV03/Conv2D/ReadVariableOp+^sequential_1/DENS01/BiasAdd/ReadVariableOp*^sequential_1/DENS01/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2j
3sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp3sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp2n
5sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_15sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_12H
"sequential_1/BNOR01/ReadVariableOp"sequential_1/BNOR01/ReadVariableOp2L
$sequential_1/BNOR01/ReadVariableOp_1$sequential_1/BNOR01/ReadVariableOp_12j
3sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp3sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp2n
5sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_15sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_12H
"sequential_1/BNOR02/ReadVariableOp"sequential_1/BNOR02/ReadVariableOp2L
$sequential_1/BNOR02/ReadVariableOp_1$sequential_1/BNOR02/ReadVariableOp_12j
3sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp3sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp2n
5sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_15sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_12H
"sequential_1/BNOR03/ReadVariableOp"sequential_1/BNOR03/ReadVariableOp2L
$sequential_1/BNOR03/ReadVariableOp_1$sequential_1/BNOR03/ReadVariableOp_12X
*sequential_1/CONV01/BiasAdd/ReadVariableOp*sequential_1/CONV01/BiasAdd/ReadVariableOp2V
)sequential_1/CONV01/Conv2D/ReadVariableOp)sequential_1/CONV01/Conv2D/ReadVariableOp2X
*sequential_1/CONV02/BiasAdd/ReadVariableOp*sequential_1/CONV02/BiasAdd/ReadVariableOp2V
)sequential_1/CONV02/Conv2D/ReadVariableOp)sequential_1/CONV02/Conv2D/ReadVariableOp2X
*sequential_1/CONV03/BiasAdd/ReadVariableOp*sequential_1/CONV03/BiasAdd/ReadVariableOp2V
)sequential_1/CONV03/Conv2D/ReadVariableOp)sequential_1/CONV03/Conv2D/ReadVariableOp2X
*sequential_1/DENS01/BiasAdd/ReadVariableOp*sequential_1/DENS01/BiasAdd/ReadVariableOp2V
)sequential_1/DENS01/MatMul/ReadVariableOp)sequential_1/DENS01/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_CONV02_layer_call_and_return_conditional_losses_795605

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88�
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������88�
NoOpNoOp^BiasAdd/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������88
 
_user_specified_nameinputs
�
�
B__inference_CONV03_layer_call_and_return_conditional_losses_795650

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp^BiasAdd/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�n
�
!__inference__wrapped_model_795041
input_2R
8model_sequential_1_conv01_conv2d_readvariableop_resource:G
9model_sequential_1_conv01_biasadd_readvariableop_resource:?
1model_sequential_1_bnor01_readvariableop_resource:A
3model_sequential_1_bnor01_readvariableop_1_resource:P
Bmodel_sequential_1_bnor01_fusedbatchnormv3_readvariableop_resource:R
Dmodel_sequential_1_bnor01_fusedbatchnormv3_readvariableop_1_resource:R
8model_sequential_1_conv02_conv2d_readvariableop_resource:G
9model_sequential_1_conv02_biasadd_readvariableop_resource:?
1model_sequential_1_bnor02_readvariableop_resource:A
3model_sequential_1_bnor02_readvariableop_1_resource:P
Bmodel_sequential_1_bnor02_fusedbatchnormv3_readvariableop_resource:R
Dmodel_sequential_1_bnor02_fusedbatchnormv3_readvariableop_1_resource:R
8model_sequential_1_conv03_conv2d_readvariableop_resource:<G
9model_sequential_1_conv03_biasadd_readvariableop_resource:<?
1model_sequential_1_bnor03_readvariableop_resource:<A
3model_sequential_1_bnor03_readvariableop_1_resource:<P
Bmodel_sequential_1_bnor03_fusedbatchnormv3_readvariableop_resource:<R
Dmodel_sequential_1_bnor03_fusedbatchnormv3_readvariableop_1_resource:<K
8model_sequential_1_dens01_matmul_readvariableop_resource:	�[G
9model_sequential_1_dens01_biasadd_readvariableop_resource:
identity��9model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp�;model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1�(model/sequential_1/BNOR01/ReadVariableOp�*model/sequential_1/BNOR01/ReadVariableOp_1�9model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp�;model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1�(model/sequential_1/BNOR02/ReadVariableOp�*model/sequential_1/BNOR02/ReadVariableOp_1�9model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp�;model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1�(model/sequential_1/BNOR03/ReadVariableOp�*model/sequential_1/BNOR03/ReadVariableOp_1�0model/sequential_1/CONV01/BiasAdd/ReadVariableOp�/model/sequential_1/CONV01/Conv2D/ReadVariableOp�0model/sequential_1/CONV02/BiasAdd/ReadVariableOp�/model/sequential_1/CONV02/Conv2D/ReadVariableOp�0model/sequential_1/CONV03/BiasAdd/ReadVariableOp�/model/sequential_1/CONV03/Conv2D/ReadVariableOp�0model/sequential_1/DENS01/BiasAdd/ReadVariableOp�/model/sequential_1/DENS01/MatMul/ReadVariableOp�
/model/sequential_1/CONV01/Conv2D/ReadVariableOpReadVariableOp8model_sequential_1_conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 model/sequential_1/CONV01/Conv2DConv2Dinput_27model/sequential_1/CONV01/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
0model/sequential_1/CONV01/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_1_conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!model/sequential_1/CONV01/BiasAddBiasAdd)model/sequential_1/CONV01/Conv2D:output:08model/sequential_1/CONV01/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
(model/sequential_1/BNOR01/ReadVariableOpReadVariableOp1model_sequential_1_bnor01_readvariableop_resource*
_output_shapes
:*
dtype0�
*model/sequential_1/BNOR01/ReadVariableOp_1ReadVariableOp3model_sequential_1_bnor01_readvariableop_1_resource*
_output_shapes
:*
dtype0�
9model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_sequential_1_bnor01_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
;model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_sequential_1_bnor01_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
*model/sequential_1/BNOR01/FusedBatchNormV3FusedBatchNormV3*model/sequential_1/CONV01/BiasAdd:output:00model/sequential_1/BNOR01/ReadVariableOp:value:02model/sequential_1/BNOR01/ReadVariableOp_1:value:0Amodel/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
model/sequential_1/RELU01/ReluRelu.model/sequential_1/BNOR01/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
!model/sequential_1/MP0102/MaxPoolMaxPool,model/sequential_1/RELU01/Relu:activations:0*/
_output_shapes
:���������88*
ksize
*
paddingVALID*
strides
�
/model/sequential_1/CONV02/Conv2D/ReadVariableOpReadVariableOp8model_sequential_1_conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 model/sequential_1/CONV02/Conv2DConv2D*model/sequential_1/MP0102/MaxPool:output:07model/sequential_1/CONV02/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88*
paddingSAME*
strides
�
0model/sequential_1/CONV02/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_1_conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!model/sequential_1/CONV02/BiasAddBiasAdd)model/sequential_1/CONV02/Conv2D:output:08model/sequential_1/CONV02/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88�
(model/sequential_1/BNOR02/ReadVariableOpReadVariableOp1model_sequential_1_bnor02_readvariableop_resource*
_output_shapes
:*
dtype0�
*model/sequential_1/BNOR02/ReadVariableOp_1ReadVariableOp3model_sequential_1_bnor02_readvariableop_1_resource*
_output_shapes
:*
dtype0�
9model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_sequential_1_bnor02_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
;model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_sequential_1_bnor02_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
*model/sequential_1/BNOR02/FusedBatchNormV3FusedBatchNormV3*model/sequential_1/CONV02/BiasAdd:output:00model/sequential_1/BNOR02/ReadVariableOp:value:02model/sequential_1/BNOR02/ReadVariableOp_1:value:0Amodel/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������88:::::*
epsilon%o�:*
is_training( �
model/sequential_1/RELU02/ReluRelu.model/sequential_1/BNOR02/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������88�
!model/sequential_1/MP0203/MaxPoolMaxPool,model/sequential_1/RELU02/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
/model/sequential_1/CONV03/Conv2D/ReadVariableOpReadVariableOp8model_sequential_1_conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
 model/sequential_1/CONV03/Conv2DConv2D*model/sequential_1/MP0203/MaxPool:output:07model/sequential_1/CONV03/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
0model/sequential_1/CONV03/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_1_conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
!model/sequential_1/CONV03/BiasAddBiasAdd)model/sequential_1/CONV03/Conv2D:output:08model/sequential_1/CONV03/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
(model/sequential_1/BNOR03/ReadVariableOpReadVariableOp1model_sequential_1_bnor03_readvariableop_resource*
_output_shapes
:<*
dtype0�
*model/sequential_1/BNOR03/ReadVariableOp_1ReadVariableOp3model_sequential_1_bnor03_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
9model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_sequential_1_bnor03_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
;model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_sequential_1_bnor03_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
*model/sequential_1/BNOR03/FusedBatchNormV3FusedBatchNormV3*model/sequential_1/CONV03/BiasAdd:output:00model/sequential_1/BNOR03/ReadVariableOp:value:02model/sequential_1/BNOR03/ReadVariableOp_1:value:0Amodel/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
is_training( �
model/sequential_1/RELU03/ReluRelu.model/sequential_1/BNOR03/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<p
model/sequential_1/FLAT01/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����-  �
!model/sequential_1/FLAT01/ReshapeReshape,model/sequential_1/RELU03/Relu:activations:0(model/sequential_1/FLAT01/Const:output:0*
T0*(
_output_shapes
:����������[�
"model/sequential_1/DROP01/IdentityIdentity*model/sequential_1/FLAT01/Reshape:output:0*
T0*(
_output_shapes
:����������[�
/model/sequential_1/DENS01/MatMul/ReadVariableOpReadVariableOp8model_sequential_1_dens01_matmul_readvariableop_resource*
_output_shapes
:	�[*
dtype0�
 model/sequential_1/DENS01/MatMulMatMul+model/sequential_1/DROP01/Identity:output:07model/sequential_1/DENS01/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0model/sequential_1/DENS01/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_1_dens01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!model/sequential_1/DENS01/BiasAddBiasAdd*model/sequential_1/DENS01/MatMul:product:08model/sequential_1/DENS01/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!model/sequential_1/SOFT01/SoftmaxSoftmax*model/sequential_1/DENS01/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+model/sequential_1/SOFT01/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp<^model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1)^model/sequential_1/BNOR01/ReadVariableOp+^model/sequential_1/BNOR01/ReadVariableOp_1:^model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp<^model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1)^model/sequential_1/BNOR02/ReadVariableOp+^model/sequential_1/BNOR02/ReadVariableOp_1:^model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp<^model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1)^model/sequential_1/BNOR03/ReadVariableOp+^model/sequential_1/BNOR03/ReadVariableOp_11^model/sequential_1/CONV01/BiasAdd/ReadVariableOp0^model/sequential_1/CONV01/Conv2D/ReadVariableOp1^model/sequential_1/CONV02/BiasAdd/ReadVariableOp0^model/sequential_1/CONV02/Conv2D/ReadVariableOp1^model/sequential_1/CONV03/BiasAdd/ReadVariableOp0^model/sequential_1/CONV03/Conv2D/ReadVariableOp1^model/sequential_1/DENS01/BiasAdd/ReadVariableOp0^model/sequential_1/DENS01/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2v
9model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp9model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp2z
;model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_1;model/sequential_1/BNOR01/FusedBatchNormV3/ReadVariableOp_12T
(model/sequential_1/BNOR01/ReadVariableOp(model/sequential_1/BNOR01/ReadVariableOp2X
*model/sequential_1/BNOR01/ReadVariableOp_1*model/sequential_1/BNOR01/ReadVariableOp_12v
9model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp9model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp2z
;model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_1;model/sequential_1/BNOR02/FusedBatchNormV3/ReadVariableOp_12T
(model/sequential_1/BNOR02/ReadVariableOp(model/sequential_1/BNOR02/ReadVariableOp2X
*model/sequential_1/BNOR02/ReadVariableOp_1*model/sequential_1/BNOR02/ReadVariableOp_12v
9model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp9model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp2z
;model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_1;model/sequential_1/BNOR03/FusedBatchNormV3/ReadVariableOp_12T
(model/sequential_1/BNOR03/ReadVariableOp(model/sequential_1/BNOR03/ReadVariableOp2X
*model/sequential_1/BNOR03/ReadVariableOp_1*model/sequential_1/BNOR03/ReadVariableOp_12d
0model/sequential_1/CONV01/BiasAdd/ReadVariableOp0model/sequential_1/CONV01/BiasAdd/ReadVariableOp2b
/model/sequential_1/CONV01/Conv2D/ReadVariableOp/model/sequential_1/CONV01/Conv2D/ReadVariableOp2d
0model/sequential_1/CONV02/BiasAdd/ReadVariableOp0model/sequential_1/CONV02/BiasAdd/ReadVariableOp2b
/model/sequential_1/CONV02/Conv2D/ReadVariableOp/model/sequential_1/CONV02/Conv2D/ReadVariableOp2d
0model/sequential_1/CONV03/BiasAdd/ReadVariableOp0model/sequential_1/CONV03/BiasAdd/ReadVariableOp2b
/model/sequential_1/CONV03/Conv2D/ReadVariableOp/model/sequential_1/CONV03/Conv2D/ReadVariableOp2d
0model/sequential_1/DENS01/BiasAdd/ReadVariableOp0model/sequential_1/DENS01/BiasAdd/ReadVariableOp2b
/model/sequential_1/DENS01/MatMul/ReadVariableOp/model/sequential_1/DENS01/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
�
-__inference_sequential_1_layer_call_fn_796113
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:	�[

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_796025o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�B
�	
A__inference_model_layer_call_and_return_conditional_losses_796389

inputs-
sequential_1_796311:!
sequential_1_796313:!
sequential_1_796315:!
sequential_1_796317:!
sequential_1_796319:!
sequential_1_796321:-
sequential_1_796323:!
sequential_1_796325:!
sequential_1_796327:!
sequential_1_796329:!
sequential_1_796331:!
sequential_1_796333:-
sequential_1_796335:<!
sequential_1_796337:<!
sequential_1_796339:<!
sequential_1_796341:<!
sequential_1_796343:<!
sequential_1_796345:<&
sequential_1_796347:	�[!
sequential_1_796349:
identity��-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�$sequential_1/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_795061�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_796311sequential_1_796313sequential_1_796315sequential_1_796317sequential_1_796319sequential_1_796321sequential_1_796323sequential_1_796325sequential_1_796327sequential_1_796329sequential_1_796331sequential_1_796333sequential_1_796335sequential_1_796337sequential_1_796339sequential_1_796341sequential_1_796343sequential_1_796345sequential_1_796347sequential_1_796349* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_795747�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796311*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796313*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796323*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796325*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796335*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796337*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_CONV03_layer_call_fn_798449

inputs!
unknown:<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV03_layer_call_and_return_conditional_losses_795650w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�B
�	
A__inference_model_layer_call_and_return_conditional_losses_796743
input_2-
sequential_1_796665:!
sequential_1_796667:!
sequential_1_796669:!
sequential_1_796671:!
sequential_1_796673:!
sequential_1_796675:-
sequential_1_796677:!
sequential_1_796679:!
sequential_1_796681:!
sequential_1_796683:!
sequential_1_796685:!
sequential_1_796687:-
sequential_1_796689:<!
sequential_1_796691:<!
sequential_1_796693:<!
sequential_1_796695:<!
sequential_1_796697:<!
sequential_1_796699:<&
sequential_1_796701:	�[!
sequential_1_796703:
identity��-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�$sequential_1/StatefulPartitionedCall�
sequential/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_795061�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_796665sequential_1_796667sequential_1_796669sequential_1_796671sequential_1_796673sequential_1_796675sequential_1_796677sequential_1_796679sequential_1_796681sequential_1_796683sequential_1_796685sequential_1_796687sequential_1_796689sequential_1_796691sequential_1_796693sequential_1_796695sequential_1_796697sequential_1_796699sequential_1_796701sequential_1_796703* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_795747�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796665*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796667*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796677*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796679*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796689*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796691*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�D
�	
A__inference_model_layer_call_and_return_conditional_losses_796829
input_2
sequential_796746:	
sequential_796748:	-
sequential_1_796751:!
sequential_1_796753:!
sequential_1_796755:!
sequential_1_796757:!
sequential_1_796759:!
sequential_1_796761:-
sequential_1_796763:!
sequential_1_796765:!
sequential_1_796767:!
sequential_1_796769:!
sequential_1_796771:!
sequential_1_796773:-
sequential_1_796775:<!
sequential_1_796777:<!
sequential_1_796779:<!
sequential_1_796781:<!
sequential_1_796783:<!
sequential_1_796785:<&
sequential_1_796787:	�[!
sequential_1_796789:
identity��-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�"sequential/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_796746sequential_796748*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_795283�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_796751sequential_1_796753sequential_1_796755sequential_1_796757sequential_1_796759sequential_1_796761sequential_1_796763sequential_1_796765sequential_1_796767sequential_1_796769sequential_1_796771sequential_1_796773sequential_1_796775sequential_1_796777sequential_1_796779sequential_1_796781sequential_1_796783sequential_1_796785sequential_1_796787sequential_1_796789* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_796025�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796751*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796753*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796763*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796765*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796775*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796777*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
�
B__inference_BNOR01_layer_call_and_return_conditional_losses_798265

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
B__inference_CONV03_layer_call_and_return_conditional_losses_798471

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp^BiasAdd/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'__inference_BNOR01_layer_call_fn_798247

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR01_layer_call_and_return_conditional_losses_795368�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
^
B__inference_MP0203_layer_call_and_return_conditional_losses_795464

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_798621R
8conv01_kernel_regularizer_square_readvariableop_resource:
identity��/CONV01/kernel/Regularizer/Square/ReadVariableOp�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8conv01_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!CONV01/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp
�
`
B__inference_DROP01_layer_call_and_return_conditional_losses_795685

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������[\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������["!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������[:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�
c
G__inference_random_flip_layer_call_and_return_conditional_losses_797986

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_CONV01_layer_call_fn_798199

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV01_layer_call_and_return_conditional_losses_795560y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
^
B__inference_SOFT01_layer_call_and_return_conditional_losses_795708

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'__inference_BNOR01_layer_call_fn_798234

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR01_layer_call_and_return_conditional_losses_795337�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�j
�	
H__inference_sequential_1_layer_call_and_return_conditional_losses_796208
input_1'
conv01_796116:
conv01_796118:
bnor01_796121:
bnor01_796123:
bnor01_796125:
bnor01_796127:'
conv02_796132:
conv02_796134:
bnor02_796137:
bnor02_796139:
bnor02_796141:
bnor02_796143:'
conv03_796148:<
conv03_796150:<
bnor03_796153:<
bnor03_796155:<
bnor03_796157:<
bnor03_796159:< 
dens01_796165:	�[
dens01_796167:
identity��BNOR01/StatefulPartitionedCall�BNOR02/StatefulPartitionedCall�BNOR03/StatefulPartitionedCall�CONV01/StatefulPartitionedCall�-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�CONV02/StatefulPartitionedCall�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�CONV03/StatefulPartitionedCall�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�DENS01/StatefulPartitionedCall�
CONV01/StatefulPartitionedCallStatefulPartitionedCallinput_1conv01_796116conv01_796118*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV01_layer_call_and_return_conditional_losses_795560�
BNOR01/StatefulPartitionedCallStatefulPartitionedCall'CONV01/StatefulPartitionedCall:output:0bnor01_796121bnor01_796123bnor01_796125bnor01_796127*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR01_layer_call_and_return_conditional_losses_795337�
RELU01/PartitionedCallPartitionedCall'BNOR01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU01_layer_call_and_return_conditional_losses_795580�
MP0102/PartitionedCallPartitionedCallRELU01/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0102_layer_call_and_return_conditional_losses_795388�
CONV02/StatefulPartitionedCallStatefulPartitionedCallMP0102/PartitionedCall:output:0conv02_796132conv02_796134*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV02_layer_call_and_return_conditional_losses_795605�
BNOR02/StatefulPartitionedCallStatefulPartitionedCall'CONV02/StatefulPartitionedCall:output:0bnor02_796137bnor02_796139bnor02_796141bnor02_796143*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR02_layer_call_and_return_conditional_losses_795413�
RELU02/PartitionedCallPartitionedCall'BNOR02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU02_layer_call_and_return_conditional_losses_795625�
MP0203/PartitionedCallPartitionedCallRELU02/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0203_layer_call_and_return_conditional_losses_795464�
CONV03/StatefulPartitionedCallStatefulPartitionedCallMP0203/PartitionedCall:output:0conv03_796148conv03_796150*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV03_layer_call_and_return_conditional_losses_795650�
BNOR03/StatefulPartitionedCallStatefulPartitionedCall'CONV03/StatefulPartitionedCall:output:0bnor03_796153bnor03_796155bnor03_796157bnor03_796159*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR03_layer_call_and_return_conditional_losses_795489�
RELU03/PartitionedCallPartitionedCall'BNOR03/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU03_layer_call_and_return_conditional_losses_795670�
FLAT01/PartitionedCallPartitionedCallRELU03/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_FLAT01_layer_call_and_return_conditional_losses_795678�
DROP01/PartitionedCallPartitionedCallFLAT01/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DROP01_layer_call_and_return_conditional_losses_795685�
DENS01/StatefulPartitionedCallStatefulPartitionedCallDROP01/PartitionedCall:output:0dens01_796165dens01_796167*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DENS01_layer_call_and_return_conditional_losses_795697�
SOFT01/PartitionedCallPartitionedCall'DENS01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_SOFT01_layer_call_and_return_conditional_losses_795708�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv01_796116*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv01_796118*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv02_796132*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv02_796134*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv03_796148*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv03_796150*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentitySOFT01/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BNOR01/StatefulPartitionedCall^BNOR02/StatefulPartitionedCall^BNOR03/StatefulPartitionedCall^CONV01/StatefulPartitionedCall.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp^CONV02/StatefulPartitionedCall.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp^CONV03/StatefulPartitionedCall.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp^DENS01/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2@
BNOR01/StatefulPartitionedCallBNOR01/StatefulPartitionedCall2@
BNOR02/StatefulPartitionedCallBNOR02/StatefulPartitionedCall2@
BNOR03/StatefulPartitionedCallBNOR03/StatefulPartitionedCall2@
CONV01/StatefulPartitionedCallCONV01/StatefulPartitionedCall2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2@
CONV02/StatefulPartitionedCallCONV02/StatefulPartitionedCall2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2@
CONV03/StatefulPartitionedCallCONV03/StatefulPartitionedCall2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2@
DENS01/StatefulPartitionedCallDENS01/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
&__inference_model_layer_call_fn_796661
input_2
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:<

unknown_18:<

unknown_19:	�[

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_796565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
^
B__inference_RELU01_layer_call_and_return_conditional_losses_798293

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:�����������d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_BNOR03_layer_call_and_return_conditional_losses_795489

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
c
G__inference_random_flip_layer_call_and_return_conditional_losses_795052

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
C
'__inference_MP0203_layer_call_fn_798423

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0203_layer_call_and_return_conditional_losses_795464�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
K__inference_random_rotation_layer_call_and_return_conditional_losses_795190

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠>`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	NEAREST*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�k
�

H__inference_sequential_1_layer_call_and_return_conditional_losses_796025

inputs'
conv01_795933:
conv01_795935:
bnor01_795938:
bnor01_795940:
bnor01_795942:
bnor01_795944:'
conv02_795949:
conv02_795951:
bnor02_795954:
bnor02_795956:
bnor02_795958:
bnor02_795960:'
conv03_795965:<
conv03_795967:<
bnor03_795970:<
bnor03_795972:<
bnor03_795974:<
bnor03_795976:< 
dens01_795982:	�[
dens01_795984:
identity��BNOR01/StatefulPartitionedCall�BNOR02/StatefulPartitionedCall�BNOR03/StatefulPartitionedCall�CONV01/StatefulPartitionedCall�-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�CONV02/StatefulPartitionedCall�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�CONV03/StatefulPartitionedCall�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�DENS01/StatefulPartitionedCall�DROP01/StatefulPartitionedCall�
CONV01/StatefulPartitionedCallStatefulPartitionedCallinputsconv01_795933conv01_795935*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV01_layer_call_and_return_conditional_losses_795560�
BNOR01/StatefulPartitionedCallStatefulPartitionedCall'CONV01/StatefulPartitionedCall:output:0bnor01_795938bnor01_795940bnor01_795942bnor01_795944*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR01_layer_call_and_return_conditional_losses_795368�
RELU01/PartitionedCallPartitionedCall'BNOR01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU01_layer_call_and_return_conditional_losses_795580�
MP0102/PartitionedCallPartitionedCallRELU01/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0102_layer_call_and_return_conditional_losses_795388�
CONV02/StatefulPartitionedCallStatefulPartitionedCallMP0102/PartitionedCall:output:0conv02_795949conv02_795951*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV02_layer_call_and_return_conditional_losses_795605�
BNOR02/StatefulPartitionedCallStatefulPartitionedCall'CONV02/StatefulPartitionedCall:output:0bnor02_795954bnor02_795956bnor02_795958bnor02_795960*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR02_layer_call_and_return_conditional_losses_795444�
RELU02/PartitionedCallPartitionedCall'BNOR02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU02_layer_call_and_return_conditional_losses_795625�
MP0203/PartitionedCallPartitionedCallRELU02/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0203_layer_call_and_return_conditional_losses_795464�
CONV03/StatefulPartitionedCallStatefulPartitionedCallMP0203/PartitionedCall:output:0conv03_795965conv03_795967*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV03_layer_call_and_return_conditional_losses_795650�
BNOR03/StatefulPartitionedCallStatefulPartitionedCall'CONV03/StatefulPartitionedCall:output:0bnor03_795970bnor03_795972bnor03_795974bnor03_795976*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR03_layer_call_and_return_conditional_losses_795520�
RELU03/PartitionedCallPartitionedCall'BNOR03/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU03_layer_call_and_return_conditional_losses_795670�
FLAT01/PartitionedCallPartitionedCallRELU03/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_FLAT01_layer_call_and_return_conditional_losses_795678�
DROP01/StatefulPartitionedCallStatefulPartitionedCallFLAT01/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DROP01_layer_call_and_return_conditional_losses_795826�
DENS01/StatefulPartitionedCallStatefulPartitionedCall'DROP01/StatefulPartitionedCall:output:0dens01_795982dens01_795984*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DENS01_layer_call_and_return_conditional_losses_795697�
SOFT01/PartitionedCallPartitionedCall'DENS01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_SOFT01_layer_call_and_return_conditional_losses_795708�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv01_795933*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv01_795935*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv02_795949*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv02_795951*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv03_795965*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv03_795967*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentitySOFT01/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BNOR01/StatefulPartitionedCall^BNOR02/StatefulPartitionedCall^BNOR03/StatefulPartitionedCall^CONV01/StatefulPartitionedCall.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp^CONV02/StatefulPartitionedCall.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp^CONV03/StatefulPartitionedCall.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp^DENS01/StatefulPartitionedCall^DROP01/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2@
BNOR01/StatefulPartitionedCallBNOR01/StatefulPartitionedCall2@
BNOR02/StatefulPartitionedCallBNOR02/StatefulPartitionedCall2@
BNOR03/StatefulPartitionedCallBNOR03/StatefulPartitionedCall2@
CONV01/StatefulPartitionedCallCONV01/StatefulPartitionedCall2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2@
CONV02/StatefulPartitionedCallCONV02/StatefulPartitionedCall2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2@
CONV03/StatefulPartitionedCallCONV03/StatefulPartitionedCall2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2@
DENS01/StatefulPartitionedCallDENS01/StatefulPartitionedCall2@
DROP01/StatefulPartitionedCallDROP01/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
C
'__inference_RELU02_layer_call_fn_798413

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU02_layer_call_and_return_conditional_losses_795625h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������88"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������88:W S
/
_output_shapes
:���������88
 
_user_specified_nameinputs
�
|
,__inference_random_flip_layer_call_fn_797982

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_795261y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_CONV01_layer_call_and_return_conditional_losses_798221

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^BiasAdd/ReadVariableOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
g
K__inference_random_rotation_layer_call_and_return_conditional_losses_795058

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
C
'__inference_DROP01_layer_call_fn_798559

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DROP01_layer_call_and_return_conditional_losses_795685a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������[:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�
^
B__inference_FLAT01_layer_call_and_return_conditional_losses_798554

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����-  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������[Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
B__inference_BNOR01_layer_call_and_return_conditional_losses_795368

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
^
B__inference_FLAT01_layer_call_and_return_conditional_losses_795678

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����-  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������[Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�k
�

H__inference_sequential_1_layer_call_and_return_conditional_losses_796303
input_1'
conv01_796211:
conv01_796213:
bnor01_796216:
bnor01_796218:
bnor01_796220:
bnor01_796222:'
conv02_796227:
conv02_796229:
bnor02_796232:
bnor02_796234:
bnor02_796236:
bnor02_796238:'
conv03_796243:<
conv03_796245:<
bnor03_796248:<
bnor03_796250:<
bnor03_796252:<
bnor03_796254:< 
dens01_796260:	�[
dens01_796262:
identity��BNOR01/StatefulPartitionedCall�BNOR02/StatefulPartitionedCall�BNOR03/StatefulPartitionedCall�CONV01/StatefulPartitionedCall�-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�CONV02/StatefulPartitionedCall�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�CONV03/StatefulPartitionedCall�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�DENS01/StatefulPartitionedCall�DROP01/StatefulPartitionedCall�
CONV01/StatefulPartitionedCallStatefulPartitionedCallinput_1conv01_796211conv01_796213*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV01_layer_call_and_return_conditional_losses_795560�
BNOR01/StatefulPartitionedCallStatefulPartitionedCall'CONV01/StatefulPartitionedCall:output:0bnor01_796216bnor01_796218bnor01_796220bnor01_796222*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR01_layer_call_and_return_conditional_losses_795368�
RELU01/PartitionedCallPartitionedCall'BNOR01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU01_layer_call_and_return_conditional_losses_795580�
MP0102/PartitionedCallPartitionedCallRELU01/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0102_layer_call_and_return_conditional_losses_795388�
CONV02/StatefulPartitionedCallStatefulPartitionedCallMP0102/PartitionedCall:output:0conv02_796227conv02_796229*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV02_layer_call_and_return_conditional_losses_795605�
BNOR02/StatefulPartitionedCallStatefulPartitionedCall'CONV02/StatefulPartitionedCall:output:0bnor02_796232bnor02_796234bnor02_796236bnor02_796238*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR02_layer_call_and_return_conditional_losses_795444�
RELU02/PartitionedCallPartitionedCall'BNOR02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU02_layer_call_and_return_conditional_losses_795625�
MP0203/PartitionedCallPartitionedCallRELU02/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0203_layer_call_and_return_conditional_losses_795464�
CONV03/StatefulPartitionedCallStatefulPartitionedCallMP0203/PartitionedCall:output:0conv03_796243conv03_796245*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV03_layer_call_and_return_conditional_losses_795650�
BNOR03/StatefulPartitionedCallStatefulPartitionedCall'CONV03/StatefulPartitionedCall:output:0bnor03_796248bnor03_796250bnor03_796252bnor03_796254*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR03_layer_call_and_return_conditional_losses_795520�
RELU03/PartitionedCallPartitionedCall'BNOR03/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU03_layer_call_and_return_conditional_losses_795670�
FLAT01/PartitionedCallPartitionedCallRELU03/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_FLAT01_layer_call_and_return_conditional_losses_795678�
DROP01/StatefulPartitionedCallStatefulPartitionedCallFLAT01/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DROP01_layer_call_and_return_conditional_losses_795826�
DENS01/StatefulPartitionedCallStatefulPartitionedCall'DROP01/StatefulPartitionedCall:output:0dens01_796260dens01_796262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DENS01_layer_call_and_return_conditional_losses_795697�
SOFT01/PartitionedCallPartitionedCall'DENS01/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_SOFT01_layer_call_and_return_conditional_losses_795708�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv01_796211*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv01_796213*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv02_796227*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv02_796229*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv03_796243*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv03_796245*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: n
IdentityIdentitySOFT01/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BNOR01/StatefulPartitionedCall^BNOR02/StatefulPartitionedCall^BNOR03/StatefulPartitionedCall^CONV01/StatefulPartitionedCall.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp^CONV02/StatefulPartitionedCall.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp^CONV03/StatefulPartitionedCall.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp^DENS01/StatefulPartitionedCall^DROP01/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2@
BNOR01/StatefulPartitionedCallBNOR01/StatefulPartitionedCall2@
BNOR02/StatefulPartitionedCallBNOR02/StatefulPartitionedCall2@
BNOR03/StatefulPartitionedCallBNOR03/StatefulPartitionedCall2@
CONV01/StatefulPartitionedCallCONV01/StatefulPartitionedCall2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2@
CONV02/StatefulPartitionedCallCONV02/StatefulPartitionedCall2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2@
CONV03/StatefulPartitionedCallCONV03/StatefulPartitionedCall2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2@
DENS01/StatefulPartitionedCallDENS01/StatefulPartitionedCall2@
DROP01/StatefulPartitionedCallDROP01/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
'__inference_BNOR02_layer_call_fn_798372

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR02_layer_call_and_return_conditional_losses_795444�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
B__inference_BNOR02_layer_call_and_return_conditional_losses_795413

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
'__inference_CONV02_layer_call_fn_798324

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������88*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_CONV02_layer_call_and_return_conditional_losses_795605w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������88: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������88
 
_user_specified_nameinputs
�
�
'__inference_DENS01_layer_call_fn_798590

inputs
unknown:	�[
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_DENS01_layer_call_and_return_conditional_losses_795697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������[: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�
�
B__inference_BNOR01_layer_call_and_return_conditional_losses_795337

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
g
K__inference_random_rotation_layer_call_and_return_conditional_losses_798060

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_795315
random_flip_input 
random_flip_795308:	$
random_rotation_795311:	
identity��#random_flip/StatefulPartitionedCall�'random_rotation/StatefulPartitionedCall�
#random_flip/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputrandom_flip_795308*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_795261�
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_795311*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_random_rotation_layer_call_and_return_conditional_losses_795190�
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�
�
'__inference_BNOR03_layer_call_fn_798497

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR03_layer_call_and_return_conditional_losses_795520�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
�
__inference_loss_fn_4_798665R
8conv03_kernel_regularizer_square_readvariableop_resource:<
identity��/CONV03/kernel/Regularizer/Square/ReadVariableOp�
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8conv03_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!CONV03/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp
�
�
B__inference_BNOR02_layer_call_and_return_conditional_losses_798390

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
b
F__inference_sequential_layer_call_and_return_conditional_losses_795061

inputs
identity�
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_795052�
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_random_rotation_layer_call_and_return_conditional_losses_795058z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�D
�	
A__inference_model_layer_call_and_return_conditional_losses_796565

inputs
sequential_796482:	
sequential_796484:	-
sequential_1_796487:!
sequential_1_796489:!
sequential_1_796491:!
sequential_1_796493:!
sequential_1_796495:!
sequential_1_796497:-
sequential_1_796499:!
sequential_1_796501:!
sequential_1_796503:!
sequential_1_796505:!
sequential_1_796507:!
sequential_1_796509:-
sequential_1_796511:<!
sequential_1_796513:<!
sequential_1_796515:<!
sequential_1_796517:<!
sequential_1_796519:<!
sequential_1_796521:<&
sequential_1_796523:	�[!
sequential_1_796525:
identity��-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�"sequential/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_796482sequential_796484*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_795283�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_796487sequential_1_796489sequential_1_796491sequential_1_796493sequential_1_796495sequential_1_796497sequential_1_796499sequential_1_796501sequential_1_796503sequential_1_796505sequential_1_796507sequential_1_796509sequential_1_796511sequential_1_796513sequential_1_796515sequential_1_796517sequential_1_796519sequential_1_796521sequential_1_796523sequential_1_796525* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_796025�
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796487*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796489*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796499*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796501*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796511*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOpsequential_1_796513*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_CONV01_layer_call_and_return_conditional_losses_795560

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^BiasAdd/ReadVariableOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_796965

inputs
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:<

unknown_18:<

unknown_19:	�[

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_796565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_796916

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:	�[

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_796389o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
C
'__inference_FLAT01_layer_call_fn_798548

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������[* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_FLAT01_layer_call_and_return_conditional_losses_795678a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
B__inference_BNOR03_layer_call_and_return_conditional_losses_798533

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_798643R
8conv02_kernel_regularizer_square_readvariableop_resource:
identity��/CONV02/kernel/Regularizer/Square/ReadVariableOp�
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8conv02_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!CONV02/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp
�
�
H__inference_sequential_1_layer_call_and_return_conditional_losses_797970

inputs?
%conv01_conv2d_readvariableop_resource:4
&conv01_biasadd_readvariableop_resource:,
bnor01_readvariableop_resource:.
 bnor01_readvariableop_1_resource:=
/bnor01_fusedbatchnormv3_readvariableop_resource:?
1bnor01_fusedbatchnormv3_readvariableop_1_resource:?
%conv02_conv2d_readvariableop_resource:4
&conv02_biasadd_readvariableop_resource:,
bnor02_readvariableop_resource:.
 bnor02_readvariableop_1_resource:=
/bnor02_fusedbatchnormv3_readvariableop_resource:?
1bnor02_fusedbatchnormv3_readvariableop_1_resource:?
%conv03_conv2d_readvariableop_resource:<4
&conv03_biasadd_readvariableop_resource:<,
bnor03_readvariableop_resource:<.
 bnor03_readvariableop_1_resource:<=
/bnor03_fusedbatchnormv3_readvariableop_resource:<?
1bnor03_fusedbatchnormv3_readvariableop_1_resource:<8
%dens01_matmul_readvariableop_resource:	�[4
&dens01_biasadd_readvariableop_resource:
identity��BNOR01/AssignNewValue�BNOR01/AssignNewValue_1�&BNOR01/FusedBatchNormV3/ReadVariableOp�(BNOR01/FusedBatchNormV3/ReadVariableOp_1�BNOR01/ReadVariableOp�BNOR01/ReadVariableOp_1�BNOR02/AssignNewValue�BNOR02/AssignNewValue_1�&BNOR02/FusedBatchNormV3/ReadVariableOp�(BNOR02/FusedBatchNormV3/ReadVariableOp_1�BNOR02/ReadVariableOp�BNOR02/ReadVariableOp_1�BNOR03/AssignNewValue�BNOR03/AssignNewValue_1�&BNOR03/FusedBatchNormV3/ReadVariableOp�(BNOR03/FusedBatchNormV3/ReadVariableOp_1�BNOR03/ReadVariableOp�BNOR03/ReadVariableOp_1�CONV01/BiasAdd/ReadVariableOp�CONV01/Conv2D/ReadVariableOp�-CONV01/bias/Regularizer/Square/ReadVariableOp�/CONV01/kernel/Regularizer/Square/ReadVariableOp�CONV02/BiasAdd/ReadVariableOp�CONV02/Conv2D/ReadVariableOp�-CONV02/bias/Regularizer/Square/ReadVariableOp�/CONV02/kernel/Regularizer/Square/ReadVariableOp�CONV03/BiasAdd/ReadVariableOp�CONV03/Conv2D/ReadVariableOp�-CONV03/bias/Regularizer/Square/ReadVariableOp�/CONV03/kernel/Regularizer/Square/ReadVariableOp�DENS01/BiasAdd/ReadVariableOp�DENS01/MatMul/ReadVariableOp�
CONV01/Conv2D/ReadVariableOpReadVariableOp%conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
CONV01/Conv2DConv2Dinputs$CONV01/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
CONV01/BiasAdd/ReadVariableOpReadVariableOp&conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/BiasAddBiasAddCONV01/Conv2D:output:0%CONV01/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������p
BNOR01/ReadVariableOpReadVariableOpbnor01_readvariableop_resource*
_output_shapes
:*
dtype0t
BNOR01/ReadVariableOp_1ReadVariableOp bnor01_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&BNOR01/FusedBatchNormV3/ReadVariableOpReadVariableOp/bnor01_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
(BNOR01/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp1bnor01_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
BNOR01/FusedBatchNormV3FusedBatchNormV3CONV01/BiasAdd:output:0BNOR01/ReadVariableOp:value:0BNOR01/ReadVariableOp_1:value:0.BNOR01/FusedBatchNormV3/ReadVariableOp:value:00BNOR01/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
BNOR01/AssignNewValueAssignVariableOp/bnor01_fusedbatchnormv3_readvariableop_resource$BNOR01/FusedBatchNormV3:batch_mean:0'^BNOR01/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
BNOR01/AssignNewValue_1AssignVariableOp1bnor01_fusedbatchnormv3_readvariableop_1_resource(BNOR01/FusedBatchNormV3:batch_variance:0)^BNOR01/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
RELU01/ReluReluBNOR01/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
MP0102/MaxPoolMaxPoolRELU01/Relu:activations:0*/
_output_shapes
:���������88*
ksize
*
paddingVALID*
strides
�
CONV02/Conv2D/ReadVariableOpReadVariableOp%conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
CONV02/Conv2DConv2DMP0102/MaxPool:output:0$CONV02/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88*
paddingSAME*
strides
�
CONV02/BiasAdd/ReadVariableOpReadVariableOp&conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/BiasAddBiasAddCONV02/Conv2D:output:0%CONV02/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������88p
BNOR02/ReadVariableOpReadVariableOpbnor02_readvariableop_resource*
_output_shapes
:*
dtype0t
BNOR02/ReadVariableOp_1ReadVariableOp bnor02_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&BNOR02/FusedBatchNormV3/ReadVariableOpReadVariableOp/bnor02_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
(BNOR02/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp1bnor02_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
BNOR02/FusedBatchNormV3FusedBatchNormV3CONV02/BiasAdd:output:0BNOR02/ReadVariableOp:value:0BNOR02/ReadVariableOp_1:value:0.BNOR02/FusedBatchNormV3/ReadVariableOp:value:00BNOR02/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������88:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
BNOR02/AssignNewValueAssignVariableOp/bnor02_fusedbatchnormv3_readvariableop_resource$BNOR02/FusedBatchNormV3:batch_mean:0'^BNOR02/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
BNOR02/AssignNewValue_1AssignVariableOp1bnor02_fusedbatchnormv3_readvariableop_1_resource(BNOR02/FusedBatchNormV3:batch_variance:0)^BNOR02/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0j
RELU02/ReluReluBNOR02/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������88�
MP0203/MaxPoolMaxPoolRELU02/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
CONV03/Conv2D/ReadVariableOpReadVariableOp%conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
CONV03/Conv2DConv2DMP0203/MaxPool:output:0$CONV03/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
CONV03/BiasAdd/ReadVariableOpReadVariableOp&conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/BiasAddBiasAddCONV03/Conv2D:output:0%CONV03/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<p
BNOR03/ReadVariableOpReadVariableOpbnor03_readvariableop_resource*
_output_shapes
:<*
dtype0t
BNOR03/ReadVariableOp_1ReadVariableOp bnor03_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
&BNOR03/FusedBatchNormV3/ReadVariableOpReadVariableOp/bnor03_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
(BNOR03/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp1bnor03_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
BNOR03/FusedBatchNormV3FusedBatchNormV3CONV03/BiasAdd:output:0BNOR03/ReadVariableOp:value:0BNOR03/ReadVariableOp_1:value:0.BNOR03/FusedBatchNormV3/ReadVariableOp:value:00BNOR03/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
BNOR03/AssignNewValueAssignVariableOp/bnor03_fusedbatchnormv3_readvariableop_resource$BNOR03/FusedBatchNormV3:batch_mean:0'^BNOR03/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
BNOR03/AssignNewValue_1AssignVariableOp1bnor03_fusedbatchnormv3_readvariableop_1_resource(BNOR03/FusedBatchNormV3:batch_variance:0)^BNOR03/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0j
RELU03/ReluReluBNOR03/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<]
FLAT01/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����-  ~
FLAT01/ReshapeReshapeRELU03/Relu:activations:0FLAT01/Const:output:0*
T0*(
_output_shapes
:����������[Y
DROP01/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
DROP01/dropout/MulMulFLAT01/Reshape:output:0DROP01/dropout/Const:output:0*
T0*(
_output_shapes
:����������[[
DROP01/dropout/ShapeShapeFLAT01/Reshape:output:0*
T0*
_output_shapes
:�
+DROP01/dropout/random_uniform/RandomUniformRandomUniformDROP01/dropout/Shape:output:0*
T0*(
_output_shapes
:����������[*
dtype0b
DROP01/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
DROP01/dropout/GreaterEqualGreaterEqual4DROP01/dropout/random_uniform/RandomUniform:output:0&DROP01/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������[~
DROP01/dropout/CastCastDROP01/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������[
DROP01/dropout/Mul_1MulDROP01/dropout/Mul:z:0DROP01/dropout/Cast:y:0*
T0*(
_output_shapes
:����������[�
DENS01/MatMul/ReadVariableOpReadVariableOp%dens01_matmul_readvariableop_resource*
_output_shapes
:	�[*
dtype0�
DENS01/MatMulMatMulDROP01/dropout/Mul_1:z:0$DENS01/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
DENS01/BiasAdd/ReadVariableOpReadVariableOp&dens01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
DENS01/BiasAddBiasAddDENS01/MatMul:product:0%DENS01/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
SOFT01/SoftmaxSoftmaxDENS01/BiasAdd:output:0*
T0*'
_output_shapes
:����������
/CONV01/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv01_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV01/kernel/Regularizer/SquareSquare7CONV01/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV01/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV01/kernel/Regularizer/SumSum$CONV01/kernel/Regularizer/Square:y:0(CONV01/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV01/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/kernel/Regularizer/mulMul(CONV01/kernel/Regularizer/mul/x:output:0&CONV01/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOp&conv01_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV02/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv02_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
 CONV02/kernel/Regularizer/SquareSquare7CONV02/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
CONV02/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV02/kernel/Regularizer/SumSum$CONV02/kernel/Regularizer/Square:y:0(CONV02/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV02/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/kernel/Regularizer/mulMul(CONV02/kernel/Regularizer/mul/x:output:0&CONV02/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV02/bias/Regularizer/Square/ReadVariableOpReadVariableOp&conv02_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV02/bias/Regularizer/SquareSquare5CONV02/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV02/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV02/bias/Regularizer/SumSum"CONV02/bias/Regularizer/Square:y:0&CONV02/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV02/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV02/bias/Regularizer/mulMul&CONV02/bias/Regularizer/mul/x:output:0$CONV02/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
/CONV03/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv03_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
 CONV03/kernel/Regularizer/SquareSquare7CONV03/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<x
CONV03/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
CONV03/kernel/Regularizer/SumSum$CONV03/kernel/Regularizer/Square:y:0(CONV03/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
CONV03/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/kernel/Regularizer/mulMul(CONV03/kernel/Regularizer/mul/x:output:0&CONV03/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-CONV03/bias/Regularizer/Square/ReadVariableOpReadVariableOp&conv03_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
CONV03/bias/Regularizer/SquareSquare5CONV03/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:<g
CONV03/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV03/bias/Regularizer/SumSum"CONV03/bias/Regularizer/Square:y:0&CONV03/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV03/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV03/bias/Regularizer/mulMul&CONV03/bias/Regularizer/mul/x:output:0$CONV03/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentitySOFT01/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp^BNOR01/AssignNewValue^BNOR01/AssignNewValue_1'^BNOR01/FusedBatchNormV3/ReadVariableOp)^BNOR01/FusedBatchNormV3/ReadVariableOp_1^BNOR01/ReadVariableOp^BNOR01/ReadVariableOp_1^BNOR02/AssignNewValue^BNOR02/AssignNewValue_1'^BNOR02/FusedBatchNormV3/ReadVariableOp)^BNOR02/FusedBatchNormV3/ReadVariableOp_1^BNOR02/ReadVariableOp^BNOR02/ReadVariableOp_1^BNOR03/AssignNewValue^BNOR03/AssignNewValue_1'^BNOR03/FusedBatchNormV3/ReadVariableOp)^BNOR03/FusedBatchNormV3/ReadVariableOp_1^BNOR03/ReadVariableOp^BNOR03/ReadVariableOp_1^CONV01/BiasAdd/ReadVariableOp^CONV01/Conv2D/ReadVariableOp.^CONV01/bias/Regularizer/Square/ReadVariableOp0^CONV01/kernel/Regularizer/Square/ReadVariableOp^CONV02/BiasAdd/ReadVariableOp^CONV02/Conv2D/ReadVariableOp.^CONV02/bias/Regularizer/Square/ReadVariableOp0^CONV02/kernel/Regularizer/Square/ReadVariableOp^CONV03/BiasAdd/ReadVariableOp^CONV03/Conv2D/ReadVariableOp.^CONV03/bias/Regularizer/Square/ReadVariableOp0^CONV03/kernel/Regularizer/Square/ReadVariableOp^DENS01/BiasAdd/ReadVariableOp^DENS01/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 2.
BNOR01/AssignNewValueBNOR01/AssignNewValue22
BNOR01/AssignNewValue_1BNOR01/AssignNewValue_12P
&BNOR01/FusedBatchNormV3/ReadVariableOp&BNOR01/FusedBatchNormV3/ReadVariableOp2T
(BNOR01/FusedBatchNormV3/ReadVariableOp_1(BNOR01/FusedBatchNormV3/ReadVariableOp_12.
BNOR01/ReadVariableOpBNOR01/ReadVariableOp22
BNOR01/ReadVariableOp_1BNOR01/ReadVariableOp_12.
BNOR02/AssignNewValueBNOR02/AssignNewValue22
BNOR02/AssignNewValue_1BNOR02/AssignNewValue_12P
&BNOR02/FusedBatchNormV3/ReadVariableOp&BNOR02/FusedBatchNormV3/ReadVariableOp2T
(BNOR02/FusedBatchNormV3/ReadVariableOp_1(BNOR02/FusedBatchNormV3/ReadVariableOp_12.
BNOR02/ReadVariableOpBNOR02/ReadVariableOp22
BNOR02/ReadVariableOp_1BNOR02/ReadVariableOp_12.
BNOR03/AssignNewValueBNOR03/AssignNewValue22
BNOR03/AssignNewValue_1BNOR03/AssignNewValue_12P
&BNOR03/FusedBatchNormV3/ReadVariableOp&BNOR03/FusedBatchNormV3/ReadVariableOp2T
(BNOR03/FusedBatchNormV3/ReadVariableOp_1(BNOR03/FusedBatchNormV3/ReadVariableOp_12.
BNOR03/ReadVariableOpBNOR03/ReadVariableOp22
BNOR03/ReadVariableOp_1BNOR03/ReadVariableOp_12>
CONV01/BiasAdd/ReadVariableOpCONV01/BiasAdd/ReadVariableOp2<
CONV01/Conv2D/ReadVariableOpCONV01/Conv2D/ReadVariableOp2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp2b
/CONV01/kernel/Regularizer/Square/ReadVariableOp/CONV01/kernel/Regularizer/Square/ReadVariableOp2>
CONV02/BiasAdd/ReadVariableOpCONV02/BiasAdd/ReadVariableOp2<
CONV02/Conv2D/ReadVariableOpCONV02/Conv2D/ReadVariableOp2^
-CONV02/bias/Regularizer/Square/ReadVariableOp-CONV02/bias/Regularizer/Square/ReadVariableOp2b
/CONV02/kernel/Regularizer/Square/ReadVariableOp/CONV02/kernel/Regularizer/Square/ReadVariableOp2>
CONV03/BiasAdd/ReadVariableOpCONV03/BiasAdd/ReadVariableOp2<
CONV03/Conv2D/ReadVariableOpCONV03/Conv2D/ReadVariableOp2^
-CONV03/bias/Regularizer/Square/ReadVariableOp-CONV03/bias/Regularizer/Square/ReadVariableOp2b
/CONV03/kernel/Regularizer/Square/ReadVariableOp/CONV03/kernel/Regularizer/Square/ReadVariableOp2>
DENS01/BiasAdd/ReadVariableOpDENS01/BiasAdd/ReadVariableOp2<
DENS01/MatMul/ReadVariableOpDENS01/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
^
B__inference_RELU03_layer_call_and_return_conditional_losses_795670

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������<b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
^
B__inference_RELU03_layer_call_and_return_conditional_losses_798543

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������<b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_796432
input_2!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:	�[

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_796389o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
^
B__inference_RELU02_layer_call_and_return_conditional_losses_795625

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������88b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������88"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������88:W S
/
_output_shapes
:���������88
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_795299
random_flip_input
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_795283y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�
^
B__inference_MP0102_layer_call_and_return_conditional_losses_795388

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
B__inference_DENS01_layer_call_and_return_conditional_losses_798600

inputs1
matmul_readvariableop_resource:	�[-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�[*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������[: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�
H
,__inference_random_flip_layer_call_fn_797975

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_random_flip_layer_call_and_return_conditional_losses_795052j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_BNOR01_layer_call_and_return_conditional_losses_798283

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
C
'__inference_MP0102_layer_call_fn_798298

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_MP0102_layer_call_and_return_conditional_losses_795388�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�k
�
__inference__traced_save_798886
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop,
(savev2_conv01_kernel_read_readvariableop*
&savev2_conv01_bias_read_readvariableop+
'savev2_bnor01_gamma_read_readvariableop*
&savev2_bnor01_beta_read_readvariableop1
-savev2_bnor01_moving_mean_read_readvariableop5
1savev2_bnor01_moving_variance_read_readvariableop,
(savev2_conv02_kernel_read_readvariableop*
&savev2_conv02_bias_read_readvariableop+
'savev2_bnor02_gamma_read_readvariableop*
&savev2_bnor02_beta_read_readvariableop1
-savev2_bnor02_moving_mean_read_readvariableop5
1savev2_bnor02_moving_variance_read_readvariableop,
(savev2_conv03_kernel_read_readvariableop*
&savev2_conv03_bias_read_readvariableop+
'savev2_bnor03_gamma_read_readvariableop*
&savev2_bnor03_beta_read_readvariableop1
-savev2_bnor03_moving_mean_read_readvariableop5
1savev2_bnor03_moving_variance_read_readvariableop,
(savev2_dens01_kernel_read_readvariableop*
&savev2_dens01_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_random_flip_statevar_read_readvariableop	7
3savev2_random_rotation_statevar_read_readvariableop	3
/savev2_adam_conv01_kernel_m_read_readvariableop1
-savev2_adam_conv01_bias_m_read_readvariableop2
.savev2_adam_bnor01_gamma_m_read_readvariableop1
-savev2_adam_bnor01_beta_m_read_readvariableop3
/savev2_adam_conv02_kernel_m_read_readvariableop1
-savev2_adam_conv02_bias_m_read_readvariableop2
.savev2_adam_bnor02_gamma_m_read_readvariableop1
-savev2_adam_bnor02_beta_m_read_readvariableop3
/savev2_adam_conv03_kernel_m_read_readvariableop1
-savev2_adam_conv03_bias_m_read_readvariableop2
.savev2_adam_bnor03_gamma_m_read_readvariableop1
-savev2_adam_bnor03_beta_m_read_readvariableop3
/savev2_adam_dens01_kernel_m_read_readvariableop1
-savev2_adam_dens01_bias_m_read_readvariableop3
/savev2_adam_conv01_kernel_v_read_readvariableop1
-savev2_adam_conv01_bias_v_read_readvariableop2
.savev2_adam_bnor01_gamma_v_read_readvariableop1
-savev2_adam_bnor01_beta_v_read_readvariableop3
/savev2_adam_conv02_kernel_v_read_readvariableop1
-savev2_adam_conv02_bias_v_read_readvariableop2
.savev2_adam_bnor02_gamma_v_read_readvariableop1
-savev2_adam_bnor02_beta_v_read_readvariableop3
/savev2_adam_conv03_kernel_v_read_readvariableop1
-savev2_adam_conv03_bias_v_read_readvariableop2
.savev2_adam_bnor03_gamma_v_read_readvariableop1
-savev2_adam_bnor03_beta_v_read_readvariableop3
/savev2_adam_dens01_kernel_v_read_readvariableop1
-savev2_adam_dens01_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop(savev2_conv01_kernel_read_readvariableop&savev2_conv01_bias_read_readvariableop'savev2_bnor01_gamma_read_readvariableop&savev2_bnor01_beta_read_readvariableop-savev2_bnor01_moving_mean_read_readvariableop1savev2_bnor01_moving_variance_read_readvariableop(savev2_conv02_kernel_read_readvariableop&savev2_conv02_bias_read_readvariableop'savev2_bnor02_gamma_read_readvariableop&savev2_bnor02_beta_read_readvariableop-savev2_bnor02_moving_mean_read_readvariableop1savev2_bnor02_moving_variance_read_readvariableop(savev2_conv03_kernel_read_readvariableop&savev2_conv03_bias_read_readvariableop'savev2_bnor03_gamma_read_readvariableop&savev2_bnor03_beta_read_readvariableop-savev2_bnor03_moving_mean_read_readvariableop1savev2_bnor03_moving_variance_read_readvariableop(savev2_dens01_kernel_read_readvariableop&savev2_dens01_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_random_flip_statevar_read_readvariableop3savev2_random_rotation_statevar_read_readvariableop/savev2_adam_conv01_kernel_m_read_readvariableop-savev2_adam_conv01_bias_m_read_readvariableop.savev2_adam_bnor01_gamma_m_read_readvariableop-savev2_adam_bnor01_beta_m_read_readvariableop/savev2_adam_conv02_kernel_m_read_readvariableop-savev2_adam_conv02_bias_m_read_readvariableop.savev2_adam_bnor02_gamma_m_read_readvariableop-savev2_adam_bnor02_beta_m_read_readvariableop/savev2_adam_conv03_kernel_m_read_readvariableop-savev2_adam_conv03_bias_m_read_readvariableop.savev2_adam_bnor03_gamma_m_read_readvariableop-savev2_adam_bnor03_beta_m_read_readvariableop/savev2_adam_dens01_kernel_m_read_readvariableop-savev2_adam_dens01_bias_m_read_readvariableop/savev2_adam_conv01_kernel_v_read_readvariableop-savev2_adam_conv01_bias_v_read_readvariableop.savev2_adam_bnor01_gamma_v_read_readvariableop-savev2_adam_bnor01_beta_v_read_readvariableop/savev2_adam_conv02_kernel_v_read_readvariableop-savev2_adam_conv02_bias_v_read_readvariableop.savev2_adam_bnor02_gamma_v_read_readvariableop-savev2_adam_bnor02_beta_v_read_readvariableop/savev2_adam_conv03_kernel_v_read_readvariableop-savev2_adam_conv03_bias_v_read_readvariableop.savev2_adam_bnor03_gamma_v_read_readvariableop-savev2_adam_bnor03_beta_v_read_readvariableop/savev2_adam_dens01_kernel_v_read_readvariableop-savev2_adam_dens01_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<			�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : : :::::::::::::<:<:<:<:<:<:	�[:: : : : :::::::::::<:<:<:<:	�[::::::::::<:<:<:<:	�[:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:<: 

_output_shapes
:<: 

_output_shapes
:<: 

_output_shapes
:<: 

_output_shapes
:<: 

_output_shapes
:<:%!

_output_shapes
:	�[: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
:: "

_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
:: &

_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
:<: )

_output_shapes
:<: *

_output_shapes
:<: +

_output_shapes
:<:%,!

_output_shapes
:	�[: -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:<: 7

_output_shapes
:<: 8

_output_shapes
:<: 9

_output_shapes
:<:%:!

_output_shapes
:	�[: ;

_output_shapes
::<

_output_shapes
: 
�	
�
B__inference_DENS01_layer_call_and_return_conditional_losses_795697

inputs1
matmul_readvariableop_resource:	�[-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�[*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������[: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������[
 
_user_specified_nameinputs
�

�
__inference_loss_fn_1_798632D
6conv01_bias_regularizer_square_readvariableop_resource:
identity��-CONV01/bias/Regularizer/Square/ReadVariableOp�
-CONV01/bias/Regularizer/Square/ReadVariableOpReadVariableOp6conv01_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype0�
CONV01/bias/Regularizer/SquareSquare5CONV01/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
CONV01/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
CONV01/bias/Regularizer/SumSum"CONV01/bias/Regularizer/Square:y:0&CONV01/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
CONV01/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
CONV01/bias/Regularizer/mulMul&CONV01/bias/Regularizer/mul/x:output:0$CONV01/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentityCONV01/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^CONV01/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-CONV01/bias/Regularizer/Square/ReadVariableOp-CONV01/bias/Regularizer/Square/ReadVariableOp
�
�
'__inference_BNOR03_layer_call_fn_798484

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_BNOR03_layer_call_and_return_conditional_losses_795489�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_797431

inputs
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_795283y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
C
'__inference_RELU01_layer_call_fn_798288

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_RELU01_layer_call_and_return_conditional_losses_795580j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�M
�
G__inference_random_flip_layer_call_and_return_conditional_losses_795261

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:������������
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:�����������q
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_1_layer_call_fn_797688

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<

unknown_17:	�[

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_795747o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:�����������: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
^
B__inference_RELU01_layer_call_and_return_conditional_losses_795580

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:�����������d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
R
+__inference_sequential_layer_call_fn_795064
random_flip_input
identity�
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_795061j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�
^
B__inference_MP0102_layer_call_and_return_conditional_losses_798303

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
C
'__inference_SOFT01_layer_call_fn_798605

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_SOFT01_layer_call_and_return_conditional_losses_795708`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_2:
serving_default_input_2:0�����������@
sequential_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
layer_with_weights-4
layer-8
layer_with_weights-5
layer-9
layer-10
 layer-11
!layer-12
"layer_with_weights-6
"layer-13
#layer-14
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
*iter

+beta_1

,beta_2
	-decay
.learning_rate/m�0m�1m�2m�5m�6m�7m�8m�;m�<m�=m�>m�Am�Bm�/v�0v�1v�2v�5v�6v�7v�8v�;v�<v�=v�>v�Av�Bv�"
	optimizer
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19"
trackable_list_wrapper
�
/0
01
12
23
54
65
76
87
;8
<9
=10
>11
A12
B13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�2�
&__inference_model_layer_call_fn_796432
&__inference_model_layer_call_fn_796916
&__inference_model_layer_call_fn_796965
&__inference_model_layer_call_fn_796661�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_model_layer_call_and_return_conditional_losses_797080
A__inference_model_layer_call_and_return_conditional_losses_797370
A__inference_model_layer_call_and_return_conditional_losses_796743
A__inference_model_layer_call_and_return_conditional_losses_796829�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_795041input_2"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
Hserving_default"
signature_map
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M_random_generator
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T_random_generator
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_sequential_layer_call_fn_795064
+__inference_sequential_layer_call_fn_797422
+__inference_sequential_layer_call_fn_797431
+__inference_sequential_layer_call_fn_795299�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_sequential_layer_call_and_return_conditional_losses_797435
F__inference_sequential_layer_call_and_return_conditional_losses_797607
F__inference_sequential_layer_call_and_return_conditional_losses_795305
F__inference_sequential_layer_call_and_return_conditional_losses_795315�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�

/kernel
0bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
�
baxis
	1gamma
2beta
3moving_mean
4moving_variance
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
�

5kernel
6bias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
{axis
	7gamma
8beta
9moving_mean
:moving_variance
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

;kernel
<bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	=gamma
>beta
?moving_mean
@moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�_random_generator
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Akernel
Bbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19"
trackable_list_wrapper
�
/0
01
12
23
54
65
76
87
;8
<9
=10
>11
A12
B13"
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_sequential_1_layer_call_fn_795790
-__inference_sequential_1_layer_call_fn_797688
-__inference_sequential_1_layer_call_fn_797733
-__inference_sequential_1_layer_call_fn_796113�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_1_layer_call_and_return_conditional_losses_797848
H__inference_sequential_1_layer_call_and_return_conditional_losses_797970
H__inference_sequential_1_layer_call_and_return_conditional_losses_796208
H__inference_sequential_1_layer_call_and_return_conditional_losses_796303�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
':%2CONV01/kernel
:2CONV01/bias
:2BNOR01/gamma
:2BNOR01/beta
":  (2BNOR01/moving_mean
&:$ (2BNOR01/moving_variance
':%2CONV02/kernel
:2CONV02/bias
:2BNOR02/gamma
:2BNOR02/beta
":  (2BNOR02/moving_mean
&:$ (2BNOR02/moving_variance
':%<2CONV03/kernel
:<2CONV03/bias
:<2BNOR03/gamma
:<2BNOR03/beta
": < (2BNOR03/moving_mean
&:$< (2BNOR03/moving_variance
 :	�[2DENS01/kernel
:2DENS01/bias
J
30
41
92
:3
?4
@5"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_signature_wrapper_797417input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
/
�
_generator"
_generic_user_object
�2�
,__inference_random_flip_layer_call_fn_797975
,__inference_random_flip_layer_call_fn_797982�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_random_flip_layer_call_and_return_conditional_losses_797986
G__inference_random_flip_layer_call_and_return_conditional_losses_798044�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
/
�
_generator"
_generic_user_object
�2�
0__inference_random_rotation_layer_call_fn_798049
0__inference_random_rotation_layer_call_fn_798056�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
K__inference_random_rotation_layer_call_and_return_conditional_losses_798060
K__inference_random_rotation_layer_call_and_return_conditional_losses_798178�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_CONV01_layer_call_fn_798199�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_CONV01_layer_call_and_return_conditional_losses_798221�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
<
10
21
32
43"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_BNOR01_layer_call_fn_798234
'__inference_BNOR01_layer_call_fn_798247�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_BNOR01_layer_call_and_return_conditional_losses_798265
B__inference_BNOR01_layer_call_and_return_conditional_losses_798283�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_RELU01_layer_call_fn_798288�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_RELU01_layer_call_and_return_conditional_losses_798293�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_MP0102_layer_call_fn_798298�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_MP0102_layer_call_and_return_conditional_losses_798303�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_CONV02_layer_call_fn_798324�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_CONV02_layer_call_and_return_conditional_losses_798346�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
<
70
81
92
:3"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_BNOR02_layer_call_fn_798359
'__inference_BNOR02_layer_call_fn_798372�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_BNOR02_layer_call_and_return_conditional_losses_798390
B__inference_BNOR02_layer_call_and_return_conditional_losses_798408�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_RELU02_layer_call_fn_798413�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_RELU02_layer_call_and_return_conditional_losses_798418�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_MP0203_layer_call_fn_798423�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_MP0203_layer_call_and_return_conditional_losses_798428�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_CONV03_layer_call_fn_798449�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_CONV03_layer_call_and_return_conditional_losses_798471�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
<
=0
>1
?2
@3"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_BNOR03_layer_call_fn_798484
'__inference_BNOR03_layer_call_fn_798497�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_BNOR03_layer_call_and_return_conditional_losses_798515
B__inference_BNOR03_layer_call_and_return_conditional_losses_798533�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_RELU03_layer_call_fn_798538�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_RELU03_layer_call_and_return_conditional_losses_798543�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_FLAT01_layer_call_fn_798548�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_FLAT01_layer_call_and_return_conditional_losses_798554�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
'__inference_DROP01_layer_call_fn_798559
'__inference_DROP01_layer_call_fn_798564�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_DROP01_layer_call_and_return_conditional_losses_798569
B__inference_DROP01_layer_call_and_return_conditional_losses_798581�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_DENS01_layer_call_fn_798590�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_DENS01_layer_call_and_return_conditional_losses_798600�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_SOFT01_layer_call_fn_798605�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_SOFT01_layer_call_and_return_conditional_losses_798610�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_0_798621�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_798632�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_2_798643�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_3_798654�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_4_798665�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_5_798676�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
J
30
41
92
:3
?4
@5"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
#14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
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
/
�
_state_var"
_generic_user_object
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
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
30
41"
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
90
:1"
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
?0
@1"
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 :	2random_flip/StateVar
$:"	2random_rotation/StateVar
,:*2Adam/CONV01/kernel/m
:2Adam/CONV01/bias/m
:2Adam/BNOR01/gamma/m
:2Adam/BNOR01/beta/m
,:*2Adam/CONV02/kernel/m
:2Adam/CONV02/bias/m
:2Adam/BNOR02/gamma/m
:2Adam/BNOR02/beta/m
,:*<2Adam/CONV03/kernel/m
:<2Adam/CONV03/bias/m
:<2Adam/BNOR03/gamma/m
:<2Adam/BNOR03/beta/m
%:#	�[2Adam/DENS01/kernel/m
:2Adam/DENS01/bias/m
,:*2Adam/CONV01/kernel/v
:2Adam/CONV01/bias/v
:2Adam/BNOR01/gamma/v
:2Adam/BNOR01/beta/v
,:*2Adam/CONV02/kernel/v
:2Adam/CONV02/bias/v
:2Adam/BNOR02/gamma/v
:2Adam/BNOR02/beta/v
,:*<2Adam/CONV03/kernel/v
:<2Adam/CONV03/bias/v
:<2Adam/BNOR03/gamma/v
:<2Adam/BNOR03/beta/v
%:#	�[2Adam/DENS01/kernel/v
:2Adam/DENS01/bias/v�
B__inference_BNOR01_layer_call_and_return_conditional_losses_798265�1234M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
B__inference_BNOR01_layer_call_and_return_conditional_losses_798283�1234M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
'__inference_BNOR01_layer_call_fn_798234�1234M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
'__inference_BNOR01_layer_call_fn_798247�1234M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
B__inference_BNOR02_layer_call_and_return_conditional_losses_798390�789:M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
B__inference_BNOR02_layer_call_and_return_conditional_losses_798408�789:M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
'__inference_BNOR02_layer_call_fn_798359�789:M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
'__inference_BNOR02_layer_call_fn_798372�789:M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
B__inference_BNOR03_layer_call_and_return_conditional_losses_798515�=>?@M�J
C�@
:�7
inputs+���������������������������<
p 
� "?�<
5�2
0+���������������������������<
� �
B__inference_BNOR03_layer_call_and_return_conditional_losses_798533�=>?@M�J
C�@
:�7
inputs+���������������������������<
p
� "?�<
5�2
0+���������������������������<
� �
'__inference_BNOR03_layer_call_fn_798484�=>?@M�J
C�@
:�7
inputs+���������������������������<
p 
� "2�/+���������������������������<�
'__inference_BNOR03_layer_call_fn_798497�=>?@M�J
C�@
:�7
inputs+���������������������������<
p
� "2�/+���������������������������<�
B__inference_CONV01_layer_call_and_return_conditional_losses_798221p/09�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
'__inference_CONV01_layer_call_fn_798199c/09�6
/�,
*�'
inputs�����������
� ""�������������
B__inference_CONV02_layer_call_and_return_conditional_losses_798346l567�4
-�*
(�%
inputs���������88
� "-�*
#� 
0���������88
� �
'__inference_CONV02_layer_call_fn_798324_567�4
-�*
(�%
inputs���������88
� " ����������88�
B__inference_CONV03_layer_call_and_return_conditional_losses_798471l;<7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������<
� �
'__inference_CONV03_layer_call_fn_798449_;<7�4
-�*
(�%
inputs���������
� " ����������<�
B__inference_DENS01_layer_call_and_return_conditional_losses_798600]AB0�-
&�#
!�
inputs����������[
� "%�"
�
0���������
� {
'__inference_DENS01_layer_call_fn_798590PAB0�-
&�#
!�
inputs����������[
� "�����������
B__inference_DROP01_layer_call_and_return_conditional_losses_798569^4�1
*�'
!�
inputs����������[
p 
� "&�#
�
0����������[
� �
B__inference_DROP01_layer_call_and_return_conditional_losses_798581^4�1
*�'
!�
inputs����������[
p
� "&�#
�
0����������[
� |
'__inference_DROP01_layer_call_fn_798559Q4�1
*�'
!�
inputs����������[
p 
� "�����������[|
'__inference_DROP01_layer_call_fn_798564Q4�1
*�'
!�
inputs����������[
p
� "�����������[�
B__inference_FLAT01_layer_call_and_return_conditional_losses_798554a7�4
-�*
(�%
inputs���������<
� "&�#
�
0����������[
� 
'__inference_FLAT01_layer_call_fn_798548T7�4
-�*
(�%
inputs���������<
� "�����������[�
B__inference_MP0102_layer_call_and_return_conditional_losses_798303�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
'__inference_MP0102_layer_call_fn_798298�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
B__inference_MP0203_layer_call_and_return_conditional_losses_798428�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
'__inference_MP0203_layer_call_fn_798423�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
B__inference_RELU01_layer_call_and_return_conditional_losses_798293l9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
'__inference_RELU01_layer_call_fn_798288_9�6
/�,
*�'
inputs�����������
� ""�������������
B__inference_RELU02_layer_call_and_return_conditional_losses_798418h7�4
-�*
(�%
inputs���������88
� "-�*
#� 
0���������88
� �
'__inference_RELU02_layer_call_fn_798413[7�4
-�*
(�%
inputs���������88
� " ����������88�
B__inference_RELU03_layer_call_and_return_conditional_losses_798543h7�4
-�*
(�%
inputs���������<
� "-�*
#� 
0���������<
� �
'__inference_RELU03_layer_call_fn_798538[7�4
-�*
(�%
inputs���������<
� " ����������<�
B__inference_SOFT01_layer_call_and_return_conditional_losses_798610X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� v
'__inference_SOFT01_layer_call_fn_798605K/�,
%�"
 �
inputs���������
� "�����������
!__inference__wrapped_model_795041�/0123456789:;<=>?@AB:�7
0�-
+�(
input_2�����������
� ";�8
6
sequential_1&�#
sequential_1���������;
__inference_loss_fn_0_798621/�

� 
� "� ;
__inference_loss_fn_1_7986320�

� 
� "� ;
__inference_loss_fn_2_7986435�

� 
� "� ;
__inference_loss_fn_3_7986546�

� 
� "� ;
__inference_loss_fn_4_798665;�

� 
� "� ;
__inference_loss_fn_5_798676<�

� 
� "� �
A__inference_model_layer_call_and_return_conditional_losses_796743�/0123456789:;<=>?@ABB�?
8�5
+�(
input_2�����������
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_796829���/0123456789:;<=>?@ABB�?
8�5
+�(
input_2�����������
p

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_797080�/0123456789:;<=>?@ABA�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_797370���/0123456789:;<=>?@ABA�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������
� �
&__inference_model_layer_call_fn_796432t/0123456789:;<=>?@ABB�?
8�5
+�(
input_2�����������
p 

 
� "�����������
&__inference_model_layer_call_fn_796661x��/0123456789:;<=>?@ABB�?
8�5
+�(
input_2�����������
p

 
� "�����������
&__inference_model_layer_call_fn_796916s/0123456789:;<=>?@ABA�>
7�4
*�'
inputs�����������
p 

 
� "�����������
&__inference_model_layer_call_fn_796965w��/0123456789:;<=>?@ABA�>
7�4
*�'
inputs�����������
p

 
� "�����������
G__inference_random_flip_layer_call_and_return_conditional_losses_797986p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
G__inference_random_flip_layer_call_and_return_conditional_losses_798044t�=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
,__inference_random_flip_layer_call_fn_797975c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
,__inference_random_flip_layer_call_fn_797982g�=�:
3�0
*�'
inputs�����������
p
� ""�������������
K__inference_random_rotation_layer_call_and_return_conditional_losses_798060p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
K__inference_random_rotation_layer_call_and_return_conditional_losses_798178t�=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
0__inference_random_rotation_layer_call_fn_798049c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
0__inference_random_rotation_layer_call_fn_798056g�=�:
3�0
*�'
inputs�����������
p
� ""�������������
H__inference_sequential_1_layer_call_and_return_conditional_losses_796208�/0123456789:;<=>?@ABB�?
8�5
+�(
input_1�����������
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_1_layer_call_and_return_conditional_losses_796303�/0123456789:;<=>?@ABB�?
8�5
+�(
input_1�����������
p

 
� "%�"
�
0���������
� �
H__inference_sequential_1_layer_call_and_return_conditional_losses_797848�/0123456789:;<=>?@ABA�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_1_layer_call_and_return_conditional_losses_797970�/0123456789:;<=>?@ABA�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������
� �
-__inference_sequential_1_layer_call_fn_795790t/0123456789:;<=>?@ABB�?
8�5
+�(
input_1�����������
p 

 
� "�����������
-__inference_sequential_1_layer_call_fn_796113t/0123456789:;<=>?@ABB�?
8�5
+�(
input_1�����������
p

 
� "�����������
-__inference_sequential_1_layer_call_fn_797688s/0123456789:;<=>?@ABA�>
7�4
*�'
inputs�����������
p 

 
� "�����������
-__inference_sequential_1_layer_call_fn_797733s/0123456789:;<=>?@ABA�>
7�4
*�'
inputs�����������
p

 
� "�����������
F__inference_sequential_layer_call_and_return_conditional_losses_795305L�I
B�?
5�2
random_flip_input�����������
p 

 
� "/�,
%�"
0�����������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_795315���L�I
B�?
5�2
random_flip_input�����������
p

 
� "/�,
%�"
0�����������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_797435tA�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_797607z��A�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
+__inference_sequential_layer_call_fn_795064rL�I
B�?
5�2
random_flip_input�����������
p 

 
� ""�������������
+__inference_sequential_layer_call_fn_795299x��L�I
B�?
5�2
random_flip_input�����������
p

 
� ""�������������
+__inference_sequential_layer_call_fn_797422gA�>
7�4
*�'
inputs�����������
p 

 
� ""�������������
+__inference_sequential_layer_call_fn_797431m��A�>
7�4
*�'
inputs�����������
p

 
� ""�������������
$__inference_signature_wrapper_797417�/0123456789:;<=>?@ABE�B
� 
;�8
6
input_2+�(
input_2�����������";�8
6
sequential_1&�#
sequential_1���������