��2
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
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
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��+
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_2/kernel/v
�
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	�
*
dtype0
�
!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_5/beta/v
�
5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_5/gamma/v
�
6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes	
:�*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�b�*&
shared_nameAdam/dense_1/kernel/v
�
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v* 
_output_shapes
:
�b�*
dtype0
�
!Adam/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_4/beta/v
�
5Adam/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_4/gamma/v
�
6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_11/bias/v
{
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_11/kernel/v
�
+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_10/bias/v
{
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_10/kernel/v
�
+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
:@ *
dtype0
�
Adam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_9/bias/v
y
(Adam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/conv2d_9/kernel/v
�
*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*'
_output_shapes
:�@*
dtype0
�
!Adam/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_3/beta/v
�
5Adam/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/v*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_3/gamma/v
�
6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_8/bias/v
z
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/conv2d_8/kernel/v
�
*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/v
y
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/conv2d_7/kernel/v
�
*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*'
_output_shapes
:�@*
dtype0
�
Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_6/bias/v
z
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: �*'
shared_nameAdam/conv2d_6/kernel/v
�
*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*'
_output_shapes
: �*
dtype0
�
!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_2/beta/v
�
5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes
: *
dtype0
�
"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_2/gamma/v
�
6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes
: *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	� *
dtype0
�
!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_1/beta/v
�
5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_1/gamma/v
�
6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_5/bias/v
z
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/conv2d_5/kernel/v
�
*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/conv2d_4/kernel/v
�
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*'
_output_shapes
:�@*
dtype0
�
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_3/bias/v
z
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/conv2d_3/kernel/v
�
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*'
_output_shapes
:@�*
dtype0
�
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/batch_normalization/beta/v
�
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:@*
dtype0
�
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/batch_normalization/gamma/v
�
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/v
�
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_1/kernel/v
�
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:@ *
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/v
�
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_2/kernel/m
�
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	�
*
dtype0
�
!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_5/beta/m
�
5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_5/gamma/m
�
6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes	
:�*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�b�*&
shared_nameAdam/dense_1/kernel/m
�
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m* 
_output_shapes
:
�b�*
dtype0
�
!Adam/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_4/beta/m
�
5Adam/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_4/gamma/m
�
6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_11/bias/m
{
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_11/kernel/m
�
+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_10/bias/m
{
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_10/kernel/m
�
+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
:@ *
dtype0
�
Adam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_9/bias/m
y
(Adam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/conv2d_9/kernel/m
�
*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*'
_output_shapes
:�@*
dtype0
�
!Adam/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_3/beta/m
�
5Adam/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/m*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_3/gamma/m
�
6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_8/bias/m
z
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/conv2d_8/kernel/m
�
*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/m
y
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/conv2d_7/kernel/m
�
*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*'
_output_shapes
:�@*
dtype0
�
Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_6/bias/m
z
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: �*'
shared_nameAdam/conv2d_6/kernel/m
�
*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*'
_output_shapes
: �*
dtype0
�
!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_2/beta/m
�
5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes
: *
dtype0
�
"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_2/gamma/m
�
6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes
: *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	� *
dtype0
�
!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_1/beta/m
�
5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_1/gamma/m
�
6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_5/bias/m
z
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/conv2d_5/kernel/m
�
*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@*'
shared_nameAdam/conv2d_4/kernel/m
�
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*'
_output_shapes
:�@*
dtype0
�
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_3/bias/m
z
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/conv2d_3/kernel/m
�
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*'
_output_shapes
:@�*
dtype0
�
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/batch_normalization/beta/m
�
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:@*
dtype0
�
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/batch_normalization/gamma/m
�
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/m
�
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/conv2d_1/kernel/m
�
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:@ *
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/m
�
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:@*
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
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�
*
dtype0
�
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_5/moving_variance
�
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_5/moving_mean
�
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_5/beta
�
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_5/gamma
�
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:�*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�b�*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
�b�*
dtype0
�
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_4/moving_variance
�
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:@*
dtype0
�
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_4/moving_mean
�
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_4/beta
�
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_4/gamma
�
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:@*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:@*
dtype0
�
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
: *
dtype0
�
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:@ *
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:@*
dtype0
�
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@* 
shared_nameconv2d_9/kernel
|
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*'
_output_shapes
:�@*
dtype0
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:�*
dtype0
s
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_8/bias
l
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:�*
dtype0
�
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�* 
shared_nameconv2d_8/kernel
|
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@�*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@* 
shared_nameconv2d_7/kernel
|
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*'
_output_shapes
:�@*
dtype0
s
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:�*
dtype0
�
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: �* 
shared_nameconv2d_6/kernel
|
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*'
_output_shapes
: �*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
: *
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	� *
dtype0
�
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_1/moving_variance
�
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_1/moving_mean
�
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_1/beta
�
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_1/gamma
�
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes	
:�*
dtype0
s
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_5/bias
l
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes	
:�*
dtype0
�
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�* 
shared_nameconv2d_5/kernel
|
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*'
_output_shapes
:@�*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�@* 
shared_nameconv2d_4/kernel
|
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*'
_output_shapes
:�@*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:@�*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:@*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:@*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@ *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B۠
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer_with_weights-8
layer-11
layer_with_weights-9
layer-12
layer_with_weights-10
layer-13
layer_with_weights-11
layer-14
layer_with_weights-12
layer-15
layer_with_weights-13
layer-16
layer_with_weights-14
layer-17
layer_with_weights-15
layer-18
layer_with_weights-16
layer-19
layer_with_weights-17
layer-20
layer-21
layer-22
layer_with_weights-18
layer-23
layer_with_weights-19
layer-24
layer_with_weights-20
layer-25
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"	optimizer
#
signatures*
* 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op*
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance*
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias
 X_jit_compiled_convolution_op*
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias
 a_jit_compiled_convolution_op*
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias
 j_jit_compiled_convolution_op*
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	rgamma
sbeta
tmoving_mean
umoving_variance*
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses* 
�
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
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
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
00
11
92
:3
B4
C5
L6
M7
N8
O9
V10
W11
_12
`13
h14
i15
r16
s17
t18
u19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53*
�
00
11
92
:3
B4
C5
L6
M7
V8
W9
_10
`11
h12
i13
r14
s15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate0m�1m�9m�:m�Bm�Cm�Lm�Mm�Vm�Wm�_m�`m�hm�im�rm�sm�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�0v�1v�9v�:v�Bv�Cv�Lv�Mv�Vv�Wv�_v�`v�hv�iv�rv�sv�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�*

�serving_default* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

90
:1*

90
:1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

B0
C1*

B0
C1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
L0
M1
N2
O3*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

V0
W1*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

_0
`1*

_0
`1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

h0
i1*

h0
i1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
r0
s1
t2
u3*

r0
s1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
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

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
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

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_6/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_6/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
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

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_7/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_7/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_8/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_8/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_3/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_3/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_3/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_3/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_9/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_9/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_10/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_10/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_11/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_11/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_4/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_4/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_4/moving_mean<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_4/moving_variance@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_1/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_5/gamma6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_5/beta5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE!batch_normalization_5/moving_mean<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE%batch_normalization_5/moving_variance@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_2/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
b
N0
O1
t2
u3
�4
�5
�6
�7
�8
�9
�10
�11*
�
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
12
13
14
15
16
17
18
19
20
21
22
23
24
25*

�0
�1*
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

N0
O1*
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

t0
u1*
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

�0
�1*
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

�0
�1*
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

�0
�1*
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
* 
* 

�0
�1*
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
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_1/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_6/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_6/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_7/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_7/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_8/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_8/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_3/gamma/mRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_3/beta/mQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_9/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_9/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_10/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_10/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_11/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_11/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_4/gamma/mRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_4/beta/mQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mRlayer_with_weights-19/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_5/beta/mQlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_2/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_2/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_1/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_6/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_6/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_7/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_7/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_8/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_8/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_3/gamma/vRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_3/beta/vQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_9/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_9/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_10/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_10/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/conv2d_11/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/conv2d_11/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_4/gamma/vRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_4/beta/vQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vRlayer_with_weights-19/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_5/beta/vQlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_2/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_2/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense/kernel
dense/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense_1/kerneldense_1/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betadense_2/kerneldense_2/bias*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*X
_read_only_resource_inputs:
86	
 !"#$%&'()*+,-./0123456*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_789049
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�6
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_3/beta/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp(Adam/conv2d_9/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_4/beta/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_5/beta/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_3/beta/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp(Adam/conv2d_9/bias/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_4/beta/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_5/beta/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*�
Tin�
�2�	*
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
__inference__traced_save_792531
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense/kernel
dense/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense_1/kerneldense_1/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/dense/kernel/mAdam/dense/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/conv2d_8/kernel/mAdam/conv2d_8/bias/m"Adam/batch_normalization_3/gamma/m!Adam/batch_normalization_3/beta/mAdam/conv2d_9/kernel/mAdam/conv2d_9/bias/mAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/m"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/mAdam/dense_1/kernel/mAdam/dense_1/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/dense/kernel/vAdam/dense/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/v"Adam/batch_normalization_3/gamma/v!Adam/batch_normalization_3/beta/vAdam/conv2d_9/kernel/vAdam/conv2d_9/bias/vAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/v"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/vAdam/dense_1/kernel/vAdam/dense_1/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*�
Tin�
�2�*
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
"__inference__traced_restore_792982�&
�
z
#__inference_internal_grad_fn_791483
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� ]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
D__inference_conv2d_9_layer_call_and_return_conditional_losses_787753

inputs9
conv2d_readvariableop_resource:�@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787745*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_790148

inputs9
conv2d_readvariableop_resource:�@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790140*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_787875

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792131
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�!
�
A__inference_dense_layer_call_and_return_conditional_losses_790294

inputs4
!tensordot_readvariableop_resource:	� -
biasadd_readvariableop_resource: 

identity_1��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	� *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:~
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:�����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:��������� �
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790286*J
_output_shapes8
6:��������� :��������� k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:��������� z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
��
�-
C__inference_Model_B_layer_call_and_return_conditional_losses_789596

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@ 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@9
+batch_normalization_readvariableop_resource:@;
-batch_normalization_readvariableop_1_resource:@J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:@L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@�7
(conv2d_3_biasadd_readvariableop_resource:	�B
'conv2d_4_conv2d_readvariableop_resource:�@6
(conv2d_4_biasadd_readvariableop_resource:@B
'conv2d_5_conv2d_readvariableop_resource:@�7
(conv2d_5_biasadd_readvariableop_resource:	�<
-batch_normalization_1_readvariableop_resource:	�>
/batch_normalization_1_readvariableop_1_resource:	�M
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�O
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�:
'dense_tensordot_readvariableop_resource:	� 3
%dense_biasadd_readvariableop_resource: ;
-batch_normalization_2_readvariableop_resource: =
/batch_normalization_2_readvariableop_1_resource: L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: B
'conv2d_6_conv2d_readvariableop_resource: �7
(conv2d_6_biasadd_readvariableop_resource:	�B
'conv2d_7_conv2d_readvariableop_resource:�@6
(conv2d_7_biasadd_readvariableop_resource:@B
'conv2d_8_conv2d_readvariableop_resource:@�7
(conv2d_8_biasadd_readvariableop_resource:	�<
-batch_normalization_3_readvariableop_resource:	�>
/batch_normalization_3_readvariableop_1_resource:	�M
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	�O
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	�B
'conv2d_9_conv2d_readvariableop_resource:�@6
(conv2d_9_biasadd_readvariableop_resource:@B
(conv2d_10_conv2d_readvariableop_resource:@ 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@;
-batch_normalization_4_readvariableop_resource:@=
/batch_normalization_4_readvariableop_1_resource:@L
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:@:
&dense_1_matmul_readvariableop_resource:
�b�6
'dense_1_biasadd_readvariableop_resource:	�F
7batch_normalization_5_batchnorm_readvariableop_resource:	�J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	�H
9batch_normalization_5_batchnorm_readvariableop_1_resource:	�H
9batch_normalization_5_batchnorm_readvariableop_2_resource:	�9
&dense_2_matmul_readvariableop_resource:	�
5
'dense_2_biasadd_readvariableop_resource:

identity��3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1�5batch_normalization_1/FusedBatchNormV3/ReadVariableOp�7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_1/ReadVariableOp�&batch_normalization_1/ReadVariableOp_1�5batch_normalization_2/FusedBatchNormV3/ReadVariableOp�7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_2/ReadVariableOp�&batch_normalization_2/ReadVariableOp_1�5batch_normalization_3/FusedBatchNormV3/ReadVariableOp�7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_3/ReadVariableOp�&batch_normalization_3/ReadVariableOp_1�5batch_normalization_4/FusedBatchNormV3/ReadVariableOp�7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_4/ReadVariableOp�&batch_normalization_4/ReadVariableOp_1�.batch_normalization_5/batchnorm/ReadVariableOp�0batch_normalization_5/batchnorm/ReadVariableOp_1�0batch_normalization_5/batchnorm/ReadVariableOp_2�2batch_normalization_5/batchnorm/mul/ReadVariableOp�conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�conv2d_9/BiasAdd/ReadVariableOp�conv2d_9/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpU
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    q
rescaling/mulMulinputsrescaling/Cast/x:output:0*
T0*/
_output_shapes
:����������
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*/
_output_shapes
:����������
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@P
conv2d/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?z

conv2d/mulMulconv2d/beta:output:0conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@c
conv2d/SigmoidSigmoidconv2d/mul:z:0*
T0*/
_output_shapes
:���������@z
conv2d/mul_1Mulconv2d/BiasAdd:output:0conv2d/Sigmoid:y:0*
T0*/
_output_shapes
:���������@g
conv2d/IdentityIdentityconv2d/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d/IdentityN	IdentityNconv2d/mul_1:z:0conv2d/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789289*J
_output_shapes8
6:���������@:���������@�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_1/Conv2DConv2Dconv2d/IdentityN:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� R
conv2d_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_1/mulMulconv2d_1/beta:output:0conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� g
conv2d_1/SigmoidSigmoidconv2d_1/mul:z:0*
T0*/
_output_shapes
:��������� �
conv2d_1/mul_1Mulconv2d_1/BiasAdd:output:0conv2d_1/Sigmoid:y:0*
T0*/
_output_shapes
:��������� k
conv2d_1/IdentityIdentityconv2d_1/mul_1:z:0*
T0*/
_output_shapes
:��������� �
conv2d_1/IdentityN	IdentityNconv2d_1/mul_1:z:0conv2d_1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789303*J
_output_shapes8
6:��������� :��������� �
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_2/Conv2DConv2Dconv2d_1/IdentityN:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@R
conv2d_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_2/mulMulconv2d_2/beta:output:0conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@g
conv2d_2/SigmoidSigmoidconv2d_2/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_2/mul_1Mulconv2d_2/BiasAdd:output:0conv2d_2/Sigmoid:y:0*
T0*/
_output_shapes
:���������@k
conv2d_2/IdentityIdentityconv2d_2/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_2/IdentityN	IdentityNconv2d_2/mul_1:z:0conv2d_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789317*J
_output_shapes8
6:���������@:���������@�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype0�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_2/IdentityN:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_3/Conv2DConv2D(batch_normalization/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������R
conv2d_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_3/mulMulconv2d_3/beta:output:0conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
conv2d_3/SigmoidSigmoidconv2d_3/mul:z:0*
T0*0
_output_shapes
:�����������
conv2d_3/mul_1Mulconv2d_3/BiasAdd:output:0conv2d_3/Sigmoid:y:0*
T0*0
_output_shapes
:����������l
conv2d_3/IdentityIdentityconv2d_3/mul_1:z:0*
T0*0
_output_shapes
:�����������
conv2d_3/IdentityN	IdentityNconv2d_3/mul_1:z:0conv2d_3/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789345*L
_output_shapes:
8:����������:�����������
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_4/Conv2DConv2Dconv2d_3/IdentityN:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@R
conv2d_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_4/mulMulconv2d_4/beta:output:0conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������@g
conv2d_4/SigmoidSigmoidconv2d_4/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_4/mul_1Mulconv2d_4/BiasAdd:output:0conv2d_4/Sigmoid:y:0*
T0*/
_output_shapes
:���������@k
conv2d_4/IdentityIdentityconv2d_4/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_4/IdentityN	IdentityNconv2d_4/mul_1:z:0conv2d_4/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789359*J
_output_shapes8
6:���������@:���������@�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_5/Conv2DConv2Dconv2d_4/IdentityN:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������R
conv2d_5/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_5/mulMulconv2d_5/beta:output:0conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
conv2d_5/SigmoidSigmoidconv2d_5/mul:z:0*
T0*0
_output_shapes
:�����������
conv2d_5/mul_1Mulconv2d_5/BiasAdd:output:0conv2d_5/Sigmoid:y:0*
T0*0
_output_shapes
:����������l
conv2d_5/IdentityIdentityconv2d_5/mul_1:z:0*
T0*0
_output_shapes
:�����������
conv2d_5/IdentityN	IdentityNconv2d_5/mul_1:z:0conv2d_5/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789373*L
_output_shapes:
8:����������:�����������
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_5/IdentityN:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
max_pooling2d/MaxPoolMaxPool*batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	� *
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          c
dense/Tensordot/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposemax_pooling2d/MaxPool:output:0dense/Tensordot/concat:output:0*
T0*0
_output_shapes
:�����������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: _
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:��������� ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� O

dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	dense/mulMuldense/beta:output:0dense/BiasAdd:output:0*
T0*/
_output_shapes
:��������� a
dense/SigmoidSigmoiddense/mul:z:0*
T0*/
_output_shapes
:��������� w
dense/mul_1Muldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*/
_output_shapes
:��������� e
dense/IdentityIdentitydense/mul_1:z:0*
T0*/
_output_shapes
:��������� �
dense/IdentityN	IdentityNdense/mul_1:z:0dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789422*J
_output_shapes8
6:��������� :��������� �
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype0�
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype0�
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3dense/IdentityN:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( �
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
: �*
dtype0�
conv2d_6/Conv2DConv2D*batch_normalization_2/FusedBatchNormV3:y:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������R
conv2d_6/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_6/mulMulconv2d_6/beta:output:0conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
conv2d_6/SigmoidSigmoidconv2d_6/mul:z:0*
T0*0
_output_shapes
:�����������
conv2d_6/mul_1Mulconv2d_6/BiasAdd:output:0conv2d_6/Sigmoid:y:0*
T0*0
_output_shapes
:����������l
conv2d_6/IdentityIdentityconv2d_6/mul_1:z:0*
T0*0
_output_shapes
:�����������
conv2d_6/IdentityN	IdentityNconv2d_6/mul_1:z:0conv2d_6/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789450*L
_output_shapes:
8:����������:�����������
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_7/Conv2DConv2Dconv2d_6/IdentityN:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@R
conv2d_7/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_7/mulMulconv2d_7/beta:output:0conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������@g
conv2d_7/SigmoidSigmoidconv2d_7/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_7/mul_1Mulconv2d_7/BiasAdd:output:0conv2d_7/Sigmoid:y:0*
T0*/
_output_shapes
:���������@k
conv2d_7/IdentityIdentityconv2d_7/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_7/IdentityN	IdentityNconv2d_7/mul_1:z:0conv2d_7/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789464*J
_output_shapes8
6:���������@:���������@�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_8/Conv2DConv2Dconv2d_7/IdentityN:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������R
conv2d_8/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_8/mulMulconv2d_8/beta:output:0conv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
conv2d_8/SigmoidSigmoidconv2d_8/mul:z:0*
T0*0
_output_shapes
:�����������
conv2d_8/mul_1Mulconv2d_8/BiasAdd:output:0conv2d_8/Sigmoid:y:0*
T0*0
_output_shapes
:����������l
conv2d_8/IdentityIdentityconv2d_8/mul_1:z:0*
T0*0
_output_shapes
:�����������
conv2d_8/IdentityN	IdentityNconv2d_8/mul_1:z:0conv2d_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789478*L
_output_shapes:
8:����������:�����������
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_8/IdentityN:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_9/Conv2DConv2D*batch_normalization_3/FusedBatchNormV3:y:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@R
conv2d_9/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_9/mulMulconv2d_9/beta:output:0conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:���������@g
conv2d_9/SigmoidSigmoidconv2d_9/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_9/mul_1Mulconv2d_9/BiasAdd:output:0conv2d_9/Sigmoid:y:0*
T0*/
_output_shapes
:���������@k
conv2d_9/IdentityIdentityconv2d_9/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_9/IdentityN	IdentityNconv2d_9/mul_1:z:0conv2d_9/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789506*J
_output_shapes8
6:���������@:���������@�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_10/Conv2DConv2Dconv2d_9/IdentityN:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� S
conv2d_10/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_10/mulMulconv2d_10/beta:output:0conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:��������� i
conv2d_10/SigmoidSigmoidconv2d_10/mul:z:0*
T0*/
_output_shapes
:��������� �
conv2d_10/mul_1Mulconv2d_10/BiasAdd:output:0conv2d_10/Sigmoid:y:0*
T0*/
_output_shapes
:��������� m
conv2d_10/IdentityIdentityconv2d_10/mul_1:z:0*
T0*/
_output_shapes
:��������� �
conv2d_10/IdentityN	IdentityNconv2d_10/mul_1:z:0conv2d_10/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789520*J
_output_shapes8
6:��������� :��������� �
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_11/Conv2DConv2Dconv2d_10/IdentityN:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@S
conv2d_11/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_11/mulMulconv2d_11/beta:output:0conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������@i
conv2d_11/SigmoidSigmoidconv2d_11/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_11/mul_1Mulconv2d_11/BiasAdd:output:0conv2d_11/Sigmoid:y:0*
T0*/
_output_shapes
:���������@m
conv2d_11/IdentityIdentityconv2d_11/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_11/IdentityN	IdentityNconv2d_11/mul_1:z:0conv2d_11/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789534*J
_output_shapes8
6:���������@:���������@�
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_11/IdentityN:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
dropout/IdentityIdentity*batch_normalization_4/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 1  �
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:����������b�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
�b�*
dtype0�
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
dense_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?v
dense_1/mulMuldense_1/beta:output:0dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������^
dense_1/SigmoidSigmoiddense_1/mul:z:0*
T0*(
_output_shapes
:����������v
dense_1/mul_1Muldense_1/BiasAdd:output:0dense_1/Sigmoid:y:0*
T0*(
_output_shapes
:����������b
dense_1/IdentityIdentitydense_1/mul_1:z:0*
T0*(
_output_shapes
:�����������
dense_1/IdentityN	IdentityNdense_1/mul_1:z:0dense_1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789565*<
_output_shapes*
(:����������:�����������
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_5/batchnorm/mul_1Muldense_1/IdentityN:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_2/MatMulMatMul)batch_normalization_5/batchnorm/add_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
f
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������
h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_787144

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
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
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_787060

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_4_layer_call_fn_790606

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_787328�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�@
__inference__traced_save_792531
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop3
/savev2_adam_conv2d_7_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop3
/savev2_adam_conv2d_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop3
/savev2_adam_conv2d_7_bias_v_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop3
/savev2_adam_conv2d_9_bias_v_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
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
: �S
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�R
value�RB�R�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-19/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-19/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �=
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop<savev2_adam_batch_normalization_3_beta_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop/savev2_adam_conv2d_9_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop<savev2_adam_batch_normalization_4_beta_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop<savev2_adam_batch_normalization_5_beta_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop<savev2_adam_batch_normalization_3_beta_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop/savev2_adam_conv2d_9_bias_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop<savev2_adam_batch_normalization_4_beta_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop<savev2_adam_batch_normalization_5_beta_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *�
dtypes�
�2�	�
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

identity_1Identity_1:output:0*�
_input_shapes�

�
: :@:@:@ : : @:@:@:@:@:@:@�:�:�@:@:@�:�:�:�:�:�:	� : : : : : : �:�:�@:@:@�:�:�:�:�:�:�@:@:@ : : @:@:@:@:@:@:
�b�:�:�:�:�:�:	�
:
: : : : : : : : : :@:@:@ : : @:@:@:@:@�:�:�@:@:@�:�:�:�:	� : : : : �:�:�@:@:@�:�:�:�:�@:@:@ : : @:@:@:@:
�b�:�:�:�:	�
:
:@:@:@ : : @:@:@:@:@�:�:�@:@:@�:�:�:�:	� : : : : �:�:�@:@:@�:�:�:�:�@:@:@ : : @:@:@:@:
�b�:�:�:�:	�
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:-)
'
_output_shapes
:�@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:%!

_output_shapes
:	� : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :-)
'
_output_shapes
: �:!

_output_shapes	
:�:-)
'
_output_shapes
:�@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:! 

_output_shapes	
:�:!!

_output_shapes	
:�:!"

_output_shapes	
:�:!#

_output_shapes	
:�:!$

_output_shapes	
:�:-%)
'
_output_shapes
:�@: &

_output_shapes
:@:,'(
&
_output_shapes
:@ : (

_output_shapes
: :,)(
&
_output_shapes
: @: *

_output_shapes
:@: +

_output_shapes
:@: ,

_output_shapes
:@: -

_output_shapes
:@: .

_output_shapes
:@:&/"
 
_output_shapes
:
�b�:!0

_output_shapes	
:�:!1

_output_shapes	
:�:!2

_output_shapes	
:�:!3

_output_shapes	
:�:!4

_output_shapes	
:�:%5!

_output_shapes
:	�
: 6

_output_shapes
:
:7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :,@(
&
_output_shapes
:@: A

_output_shapes
:@:,B(
&
_output_shapes
:@ : C

_output_shapes
: :,D(
&
_output_shapes
: @: E

_output_shapes
:@: F

_output_shapes
:@: G

_output_shapes
:@:-H)
'
_output_shapes
:@�:!I

_output_shapes	
:�:-J)
'
_output_shapes
:�@: K

_output_shapes
:@:-L)
'
_output_shapes
:@�:!M

_output_shapes	
:�:!N

_output_shapes	
:�:!O

_output_shapes	
:�:%P!

_output_shapes
:	� : Q

_output_shapes
: : R

_output_shapes
: : S

_output_shapes
: :-T)
'
_output_shapes
: �:!U

_output_shapes	
:�:-V)
'
_output_shapes
:�@: W

_output_shapes
:@:-X)
'
_output_shapes
:@�:!Y

_output_shapes	
:�:!Z

_output_shapes	
:�:![

_output_shapes	
:�:-\)
'
_output_shapes
:�@: ]

_output_shapes
:@:,^(
&
_output_shapes
:@ : _

_output_shapes
: :,`(
&
_output_shapes
: @: a

_output_shapes
:@: b

_output_shapes
:@: c

_output_shapes
:@:&d"
 
_output_shapes
:
�b�:!e

_output_shapes	
:�:!f

_output_shapes	
:�:!g

_output_shapes	
:�:%h!

_output_shapes
:	�
: i

_output_shapes
:
:,j(
&
_output_shapes
:@: k

_output_shapes
:@:,l(
&
_output_shapes
:@ : m

_output_shapes
: :,n(
&
_output_shapes
: @: o

_output_shapes
:@: p

_output_shapes
:@: q

_output_shapes
:@:-r)
'
_output_shapes
:@�:!s

_output_shapes	
:�:-t)
'
_output_shapes
:�@: u

_output_shapes
:@:-v)
'
_output_shapes
:@�:!w

_output_shapes	
:�:!x

_output_shapes	
:�:!y

_output_shapes	
:�:%z!

_output_shapes
:	� : {

_output_shapes
: : |

_output_shapes
: : }

_output_shapes
: :-~)
'
_output_shapes
: �:!

_output_shapes	
:�:.�)
'
_output_shapes
:�@:!�

_output_shapes
:@:.�)
'
_output_shapes
:@�:"�

_output_shapes	
:�:"�

_output_shapes	
:�:"�

_output_shapes	
:�:.�)
'
_output_shapes
:�@:!�

_output_shapes
:@:-�(
&
_output_shapes
:@ :!�

_output_shapes
: :-�(
&
_output_shapes
: @:!�

_output_shapes
:@:!�

_output_shapes
:@:!�

_output_shapes
:@:'�"
 
_output_shapes
:
�b�:"�

_output_shapes	
:�:"�

_output_shapes	
:�:"�

_output_shapes	
:�:&�!

_output_shapes
:	�
:!�

_output_shapes
:
:�

_output_shapes
: 
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_790094

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
(__inference_dense_1_layer_call_fn_790689

inputs
unknown:
�b�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_787849p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������b: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������b
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791807
result_grads_0
result_grads_1
mul_conv2d_9_beta
mul_conv2d_9_biasadd
identity~
mulMulmul_conv2d_9_betamul_conv2d_9_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@o
mul_1Mulmul_conv2d_9_betamul_conv2d_9_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
*__inference_conv2d_10_layer_call_fn_790535

inputs!
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_787777w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_787200

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
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
�
�
#__inference_internal_grad_fn_792041
result_grads_0
result_grads_1
mul_conv2d_8_beta
mul_conv2d_8_biasadd
identity
mulMulmul_conv2d_8_betamul_conv2d_8_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������p
mul_1Mulmul_conv2d_8_betamul_conv2d_8_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�	
�
6__inference_batch_normalization_4_layer_call_fn_790593

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_787297�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_790005

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:��������� �
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789997*J
_output_shapes8
6:��������� :��������� k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_792095
result_grads_0
result_grads_1
mul_conv2d_11_beta
mul_conv2d_11_biasadd
identity�
mulMulmul_conv2d_11_betamul_conv2d_11_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@q
mul_1Mulmul_conv2d_11_betamul_conv2d_11_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_787124

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
4__inference_batch_normalization_layer_call_fn_790045

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_787029�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�1
C__inference_Model_B_layer_call_and_return_conditional_losses_789938

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@ 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@9
+batch_normalization_readvariableop_resource:@;
-batch_normalization_readvariableop_1_resource:@J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:@L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@�7
(conv2d_3_biasadd_readvariableop_resource:	�B
'conv2d_4_conv2d_readvariableop_resource:�@6
(conv2d_4_biasadd_readvariableop_resource:@B
'conv2d_5_conv2d_readvariableop_resource:@�7
(conv2d_5_biasadd_readvariableop_resource:	�<
-batch_normalization_1_readvariableop_resource:	�>
/batch_normalization_1_readvariableop_1_resource:	�M
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�O
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�:
'dense_tensordot_readvariableop_resource:	� 3
%dense_biasadd_readvariableop_resource: ;
-batch_normalization_2_readvariableop_resource: =
/batch_normalization_2_readvariableop_1_resource: L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: B
'conv2d_6_conv2d_readvariableop_resource: �7
(conv2d_6_biasadd_readvariableop_resource:	�B
'conv2d_7_conv2d_readvariableop_resource:�@6
(conv2d_7_biasadd_readvariableop_resource:@B
'conv2d_8_conv2d_readvariableop_resource:@�7
(conv2d_8_biasadd_readvariableop_resource:	�<
-batch_normalization_3_readvariableop_resource:	�>
/batch_normalization_3_readvariableop_1_resource:	�M
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	�O
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	�B
'conv2d_9_conv2d_readvariableop_resource:�@6
(conv2d_9_biasadd_readvariableop_resource:@B
(conv2d_10_conv2d_readvariableop_resource:@ 7
)conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource: @7
)conv2d_11_biasadd_readvariableop_resource:@;
-batch_normalization_4_readvariableop_resource:@=
/batch_normalization_4_readvariableop_1_resource:@L
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:@:
&dense_1_matmul_readvariableop_resource:
�b�6
'dense_1_biasadd_readvariableop_resource:	�L
=batch_normalization_5_assignmovingavg_readvariableop_resource:	�N
?batch_normalization_5_assignmovingavg_1_readvariableop_resource:	�J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	�F
7batch_normalization_5_batchnorm_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�
5
'dense_2_biasadd_readvariableop_resource:

identity��"batch_normalization/AssignNewValue�$batch_normalization/AssignNewValue_1�3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1�$batch_normalization_1/AssignNewValue�&batch_normalization_1/AssignNewValue_1�5batch_normalization_1/FusedBatchNormV3/ReadVariableOp�7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_1/ReadVariableOp�&batch_normalization_1/ReadVariableOp_1�$batch_normalization_2/AssignNewValue�&batch_normalization_2/AssignNewValue_1�5batch_normalization_2/FusedBatchNormV3/ReadVariableOp�7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_2/ReadVariableOp�&batch_normalization_2/ReadVariableOp_1�$batch_normalization_3/AssignNewValue�&batch_normalization_3/AssignNewValue_1�5batch_normalization_3/FusedBatchNormV3/ReadVariableOp�7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_3/ReadVariableOp�&batch_normalization_3/ReadVariableOp_1�$batch_normalization_4/AssignNewValue�&batch_normalization_4/AssignNewValue_1�5batch_normalization_4/FusedBatchNormV3/ReadVariableOp�7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_4/ReadVariableOp�&batch_normalization_4/ReadVariableOp_1�%batch_normalization_5/AssignMovingAvg�4batch_normalization_5/AssignMovingAvg/ReadVariableOp�'batch_normalization_5/AssignMovingAvg_1�6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_5/batchnorm/ReadVariableOp�2batch_normalization_5/batchnorm/mul/ReadVariableOp�conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp� conv2d_10/BiasAdd/ReadVariableOp�conv2d_10/Conv2D/ReadVariableOp� conv2d_11/BiasAdd/ReadVariableOp�conv2d_11/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�conv2d_8/BiasAdd/ReadVariableOp�conv2d_8/Conv2D/ReadVariableOp�conv2d_9/BiasAdd/ReadVariableOp�conv2d_9/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpU
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    q
rescaling/mulMulinputsrescaling/Cast/x:output:0*
T0*/
_output_shapes
:����������
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*/
_output_shapes
:����������
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@P
conv2d/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?z

conv2d/mulMulconv2d/beta:output:0conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@c
conv2d/SigmoidSigmoidconv2d/mul:z:0*
T0*/
_output_shapes
:���������@z
conv2d/mul_1Mulconv2d/BiasAdd:output:0conv2d/Sigmoid:y:0*
T0*/
_output_shapes
:���������@g
conv2d/IdentityIdentityconv2d/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d/IdentityN	IdentityNconv2d/mul_1:z:0conv2d/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789610*J
_output_shapes8
6:���������@:���������@�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_1/Conv2DConv2Dconv2d/IdentityN:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� R
conv2d_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_1/mulMulconv2d_1/beta:output:0conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� g
conv2d_1/SigmoidSigmoidconv2d_1/mul:z:0*
T0*/
_output_shapes
:��������� �
conv2d_1/mul_1Mulconv2d_1/BiasAdd:output:0conv2d_1/Sigmoid:y:0*
T0*/
_output_shapes
:��������� k
conv2d_1/IdentityIdentityconv2d_1/mul_1:z:0*
T0*/
_output_shapes
:��������� �
conv2d_1/IdentityN	IdentityNconv2d_1/mul_1:z:0conv2d_1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789624*J
_output_shapes8
6:��������� :��������� �
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_2/Conv2DConv2Dconv2d_1/IdentityN:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@R
conv2d_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_2/mulMulconv2d_2/beta:output:0conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@g
conv2d_2/SigmoidSigmoidconv2d_2/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_2/mul_1Mulconv2d_2/BiasAdd:output:0conv2d_2/Sigmoid:y:0*
T0*/
_output_shapes
:���������@k
conv2d_2/IdentityIdentityconv2d_2/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_2/IdentityN	IdentityNconv2d_2/mul_1:z:0conv2d_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789638*J
_output_shapes8
6:���������@:���������@�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype0�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_2/IdentityN:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_3/Conv2DConv2D(batch_normalization/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������R
conv2d_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_3/mulMulconv2d_3/beta:output:0conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
conv2d_3/SigmoidSigmoidconv2d_3/mul:z:0*
T0*0
_output_shapes
:�����������
conv2d_3/mul_1Mulconv2d_3/BiasAdd:output:0conv2d_3/Sigmoid:y:0*
T0*0
_output_shapes
:����������l
conv2d_3/IdentityIdentityconv2d_3/mul_1:z:0*
T0*0
_output_shapes
:�����������
conv2d_3/IdentityN	IdentityNconv2d_3/mul_1:z:0conv2d_3/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789666*L
_output_shapes:
8:����������:�����������
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_4/Conv2DConv2Dconv2d_3/IdentityN:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@R
conv2d_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_4/mulMulconv2d_4/beta:output:0conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������@g
conv2d_4/SigmoidSigmoidconv2d_4/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_4/mul_1Mulconv2d_4/BiasAdd:output:0conv2d_4/Sigmoid:y:0*
T0*/
_output_shapes
:���������@k
conv2d_4/IdentityIdentityconv2d_4/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_4/IdentityN	IdentityNconv2d_4/mul_1:z:0conv2d_4/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789680*J
_output_shapes8
6:���������@:���������@�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_5/Conv2DConv2Dconv2d_4/IdentityN:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������R
conv2d_5/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_5/mulMulconv2d_5/beta:output:0conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
conv2d_5/SigmoidSigmoidconv2d_5/mul:z:0*
T0*0
_output_shapes
:�����������
conv2d_5/mul_1Mulconv2d_5/BiasAdd:output:0conv2d_5/Sigmoid:y:0*
T0*0
_output_shapes
:����������l
conv2d_5/IdentityIdentityconv2d_5/mul_1:z:0*
T0*0
_output_shapes
:�����������
conv2d_5/IdentityN	IdentityNconv2d_5/mul_1:z:0conv2d_5/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789694*L
_output_shapes:
8:����������:�����������
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_5/IdentityN:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
max_pooling2d/MaxPoolMaxPool*batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	� *
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          c
dense/Tensordot/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposemax_pooling2d/MaxPool:output:0dense/Tensordot/concat:output:0*
T0*0
_output_shapes
:�����������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: _
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:��������� ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� O

dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	dense/mulMuldense/beta:output:0dense/BiasAdd:output:0*
T0*/
_output_shapes
:��������� a
dense/SigmoidSigmoiddense/mul:z:0*
T0*/
_output_shapes
:��������� w
dense/mul_1Muldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*/
_output_shapes
:��������� e
dense/IdentityIdentitydense/mul_1:z:0*
T0*/
_output_shapes
:��������� �
dense/IdentityN	IdentityNdense/mul_1:z:0dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789743*J
_output_shapes8
6:��������� :��������� �
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype0�
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype0�
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3dense/IdentityN:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
: �*
dtype0�
conv2d_6/Conv2DConv2D*batch_normalization_2/FusedBatchNormV3:y:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������R
conv2d_6/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_6/mulMulconv2d_6/beta:output:0conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
conv2d_6/SigmoidSigmoidconv2d_6/mul:z:0*
T0*0
_output_shapes
:�����������
conv2d_6/mul_1Mulconv2d_6/BiasAdd:output:0conv2d_6/Sigmoid:y:0*
T0*0
_output_shapes
:����������l
conv2d_6/IdentityIdentityconv2d_6/mul_1:z:0*
T0*0
_output_shapes
:�����������
conv2d_6/IdentityN	IdentityNconv2d_6/mul_1:z:0conv2d_6/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789771*L
_output_shapes:
8:����������:�����������
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_7/Conv2DConv2Dconv2d_6/IdentityN:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@R
conv2d_7/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_7/mulMulconv2d_7/beta:output:0conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������@g
conv2d_7/SigmoidSigmoidconv2d_7/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_7/mul_1Mulconv2d_7/BiasAdd:output:0conv2d_7/Sigmoid:y:0*
T0*/
_output_shapes
:���������@k
conv2d_7/IdentityIdentityconv2d_7/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_7/IdentityN	IdentityNconv2d_7/mul_1:z:0conv2d_7/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789785*J
_output_shapes8
6:���������@:���������@�
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_8/Conv2DConv2Dconv2d_7/IdentityN:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������R
conv2d_8/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_8/mulMulconv2d_8/beta:output:0conv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:����������h
conv2d_8/SigmoidSigmoidconv2d_8/mul:z:0*
T0*0
_output_shapes
:�����������
conv2d_8/mul_1Mulconv2d_8/BiasAdd:output:0conv2d_8/Sigmoid:y:0*
T0*0
_output_shapes
:����������l
conv2d_8/IdentityIdentityconv2d_8/mul_1:z:0*
T0*0
_output_shapes
:�����������
conv2d_8/IdentityN	IdentityNconv2d_8/mul_1:z:0conv2d_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789799*L
_output_shapes:
8:����������:�����������
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_8/IdentityN:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
conv2d_9/Conv2DConv2D*batch_normalization_3/FusedBatchNormV3:y:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@R
conv2d_9/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_9/mulMulconv2d_9/beta:output:0conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:���������@g
conv2d_9/SigmoidSigmoidconv2d_9/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_9/mul_1Mulconv2d_9/BiasAdd:output:0conv2d_9/Sigmoid:y:0*
T0*/
_output_shapes
:���������@k
conv2d_9/IdentityIdentityconv2d_9/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_9/IdentityN	IdentityNconv2d_9/mul_1:z:0conv2d_9/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789827*J
_output_shapes8
6:���������@:���������@�
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_10/Conv2DConv2Dconv2d_9/IdentityN:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� S
conv2d_10/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_10/mulMulconv2d_10/beta:output:0conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:��������� i
conv2d_10/SigmoidSigmoidconv2d_10/mul:z:0*
T0*/
_output_shapes
:��������� �
conv2d_10/mul_1Mulconv2d_10/BiasAdd:output:0conv2d_10/Sigmoid:y:0*
T0*/
_output_shapes
:��������� m
conv2d_10/IdentityIdentityconv2d_10/mul_1:z:0*
T0*/
_output_shapes
:��������� �
conv2d_10/IdentityN	IdentityNconv2d_10/mul_1:z:0conv2d_10/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789841*J
_output_shapes8
6:��������� :��������� �
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_11/Conv2DConv2Dconv2d_10/IdentityN:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@S
conv2d_11/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
conv2d_11/mulMulconv2d_11/beta:output:0conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������@i
conv2d_11/SigmoidSigmoidconv2d_11/mul:z:0*
T0*/
_output_shapes
:���������@�
conv2d_11/mul_1Mulconv2d_11/BiasAdd:output:0conv2d_11/Sigmoid:y:0*
T0*/
_output_shapes
:���������@m
conv2d_11/IdentityIdentityconv2d_11/mul_1:z:0*
T0*/
_output_shapes
:���������@�
conv2d_11/IdentityN	IdentityNconv2d_11/mul_1:z:0conv2d_11/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789855*J
_output_shapes8
6:���������@:���������@�
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_11/IdentityN:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout/dropout/MulMul*batch_normalization_4/FusedBatchNormV3:y:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������@o
dropout/dropout/ShapeShape*batch_normalization_4/FusedBatchNormV3:y:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������@^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 1  �
flatten/ReshapeReshapedropout/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:����������b�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
�b�*
dtype0�
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
dense_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?v
dense_1/mulMuldense_1/beta:output:0dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������^
dense_1/SigmoidSigmoiddense_1/mul:z:0*
T0*(
_output_shapes
:����������v
dense_1/mul_1Muldense_1/BiasAdd:output:0dense_1/Sigmoid:y:0*
T0*(
_output_shapes
:����������b
dense_1/IdentityIdentitydense_1/mul_1:z:0*
T0*(
_output_shapes
:�����������
dense_1/IdentityN	IdentityNdense_1/mul_1:z:0dense_1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789893*<
_output_shapes*
(:����������:����������~
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_5/moments/meanMeandense_1/IdentityN:output:0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	��
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferencedense_1/IdentityN:output:03batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 p
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_5/batchnorm/mul_1Muldense_1/IdentityN:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_2/MatMulMatMul)batch_normalization_5/batchnorm/add_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
f
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������
h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_787720

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mulMulbeta:output:0BiasAdd:output:0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������f
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_1:z:0*
T0*0
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787712*L
_output_shapes:
8:����������:����������l

Identity_1IdentityIdentityN:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
׃
�
C__inference_Model_B_layer_call_and_return_conditional_losses_788791
input_1'
conv2d_788658:@
conv2d_788660:@)
conv2d_1_788663:@ 
conv2d_1_788665: )
conv2d_2_788668: @
conv2d_2_788670:@(
batch_normalization_788673:@(
batch_normalization_788675:@(
batch_normalization_788677:@(
batch_normalization_788679:@*
conv2d_3_788682:@�
conv2d_3_788684:	�*
conv2d_4_788687:�@
conv2d_4_788689:@*
conv2d_5_788692:@�
conv2d_5_788694:	�+
batch_normalization_1_788697:	�+
batch_normalization_1_788699:	�+
batch_normalization_1_788701:	�+
batch_normalization_1_788703:	�
dense_788707:	� 
dense_788709: *
batch_normalization_2_788712: *
batch_normalization_2_788714: *
batch_normalization_2_788716: *
batch_normalization_2_788718: *
conv2d_6_788721: �
conv2d_6_788723:	�*
conv2d_7_788726:�@
conv2d_7_788728:@*
conv2d_8_788731:@�
conv2d_8_788733:	�+
batch_normalization_3_788736:	�+
batch_normalization_3_788738:	�+
batch_normalization_3_788740:	�+
batch_normalization_3_788742:	�*
conv2d_9_788745:�@
conv2d_9_788747:@*
conv2d_10_788750:@ 
conv2d_10_788752: *
conv2d_11_788755: @
conv2d_11_788757:@*
batch_normalization_4_788760:@*
batch_normalization_4_788762:@*
batch_normalization_4_788764:@*
batch_normalization_4_788766:@"
dense_1_788771:
�b�
dense_1_788773:	�+
batch_normalization_5_788776:	�+
batch_normalization_5_788778:	�+
batch_normalization_5_788780:	�+
batch_normalization_5_788782:	�!
dense_2_788785:	�

dense_2_788787:

identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
rescaling/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_787436�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_788658conv2d_788660*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_787456�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_788663conv2d_1_788665*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_787480�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_788668conv2d_2_788670*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_787504�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_788673batch_normalization_788675batch_normalization_788677batch_normalization_788679*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_787029�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_3_788682conv2d_3_788684*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_787537�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_788687conv2d_4_788689*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_787561�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_788692conv2d_5_788694*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_787585�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_1_788697batch_normalization_1_788699batch_normalization_1_788701batch_normalization_1_788703*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_787093�
max_pooling2d/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_787144�
dense/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0dense_788707dense_788709*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_787639�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_2_788712batch_normalization_2_788714batch_normalization_2_788716batch_normalization_2_788718*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_787169�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_6_788721conv2d_6_788723*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_787672�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_788726conv2d_7_788728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_787696�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_788731conv2d_8_788733*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_787720�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_3_788736batch_normalization_3_788738batch_normalization_3_788740batch_normalization_3_788742*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_787233�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_9_788745conv2d_9_788747*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_787753�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_788750conv2d_10_788752*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_787777�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_788755conv2d_11_788757*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_787801�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_4_788760batch_normalization_4_788762batch_normalization_4_788764batch_normalization_4_788766*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_787297�
dropout/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_787821�
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_787829�
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_788771dense_1_788773*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_787849�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_5_788776batch_normalization_5_788778batch_normalization_5_788780batch_normalization_5_788782*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_787363�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_2_788785dense_2_788787*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_787875w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
C__inference_dense_1_layer_call_and_return_conditional_losses_787849

inputs2
matmul_readvariableop_resource:
�b�.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�b�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
mulMulbeta:output:0BiasAdd:output:0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:����������^
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������R
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787841*<
_output_shapes*
(:����������:����������d

Identity_1IdentityIdentityN:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������b
 
_user_specified_nameinputs
�
�
)__inference_conv2d_7_layer_call_fn_790392

inputs"
unknown:�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_787696w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_790807

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791717
result_grads_0
result_grads_1
mul_conv2d_5_beta
mul_conv2d_5_biasadd
identity
mulMulmul_conv2d_5_betamul_conv2d_5_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������p
mul_1Mulmul_conv2d_5_betamul_conv2d_5_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
C__inference_Model_B_layer_call_and_return_conditional_losses_788430

inputs'
conv2d_788297:@
conv2d_788299:@)
conv2d_1_788302:@ 
conv2d_1_788304: )
conv2d_2_788307: @
conv2d_2_788309:@(
batch_normalization_788312:@(
batch_normalization_788314:@(
batch_normalization_788316:@(
batch_normalization_788318:@*
conv2d_3_788321:@�
conv2d_3_788323:	�*
conv2d_4_788326:�@
conv2d_4_788328:@*
conv2d_5_788331:@�
conv2d_5_788333:	�+
batch_normalization_1_788336:	�+
batch_normalization_1_788338:	�+
batch_normalization_1_788340:	�+
batch_normalization_1_788342:	�
dense_788346:	� 
dense_788348: *
batch_normalization_2_788351: *
batch_normalization_2_788353: *
batch_normalization_2_788355: *
batch_normalization_2_788357: *
conv2d_6_788360: �
conv2d_6_788362:	�*
conv2d_7_788365:�@
conv2d_7_788367:@*
conv2d_8_788370:@�
conv2d_8_788372:	�+
batch_normalization_3_788375:	�+
batch_normalization_3_788377:	�+
batch_normalization_3_788379:	�+
batch_normalization_3_788381:	�*
conv2d_9_788384:�@
conv2d_9_788386:@*
conv2d_10_788389:@ 
conv2d_10_788391: *
conv2d_11_788394: @
conv2d_11_788396:@*
batch_normalization_4_788399:@*
batch_normalization_4_788401:@*
batch_normalization_4_788403:@*
batch_normalization_4_788405:@"
dense_1_788410:
�b�
dense_1_788412:	�+
batch_normalization_5_788415:	�+
batch_normalization_5_788417:	�+
batch_normalization_5_788419:	�+
batch_normalization_5_788421:	�!
dense_2_788424:	�

dense_2_788426:

identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dropout/StatefulPartitionedCall�
rescaling/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_787436�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_788297conv2d_788299*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_787456�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_788302conv2d_1_788304*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_787480�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_788307conv2d_2_788309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_787504�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_788312batch_normalization_788314batch_normalization_788316batch_normalization_788318*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_787060�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_3_788321conv2d_3_788323*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_787537�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_788326conv2d_4_788328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_787561�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_788331conv2d_5_788333*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_787585�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_1_788336batch_normalization_1_788338batch_normalization_1_788340batch_normalization_1_788342*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_787124�
max_pooling2d/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_787144�
dense/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0dense_788346dense_788348*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_787639�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_2_788351batch_normalization_2_788353batch_normalization_2_788355batch_normalization_2_788357*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_787200�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_6_788360conv2d_6_788362*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_787672�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_788365conv2d_7_788367*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_787696�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_788370conv2d_8_788372*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_787720�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_3_788375batch_normalization_3_788377batch_normalization_3_788379batch_normalization_3_788381*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_787264�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_9_788384conv2d_9_788386*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_787753�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_788389conv2d_10_788391*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_787777�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_788394conv2d_11_788396*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_787801�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_4_788399batch_normalization_4_788401batch_normalization_4_788403batch_normalization_4_788405*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_787328�
dropout/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_788039�
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_787829�
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_788410dense_1_788412*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_787849�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_5_788415batch_normalization_5_788417batch_normalization_5_788419batch_normalization_5_788421*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_787410�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_2_788424dense_2_788426*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_787875w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791897
result_grads_0
result_grads_1
mul_conv2d_1_beta
mul_conv2d_1_biasadd
identity~
mulMulmul_conv2d_1_betamul_conv2d_1_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� o
mul_1Mulmul_conv2d_1_betamul_conv2d_1_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
(__inference_Model_B_layer_call_fn_789162

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@�

unknown_10:	�%

unknown_11:�@

unknown_12:@%

unknown_13:@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	� 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: %

unknown_25: �

unknown_26:	�%

unknown_27:�@

unknown_28:@%

unknown_29:@�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�%

unknown_35:�@

unknown_36:@$

unknown_37:@ 

unknown_38: $

unknown_39: @

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:
�b�

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:	�


unknown_52:

identity��StatefulPartitionedCall�
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*X
_read_only_resource_inputs:
86	
 !"#$%&'()*+,-./0123456*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Model_B_layer_call_and_return_conditional_losses_787882o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_791501
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitym
mulMulmul_betamul_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������^
mul_1Mulmul_betamul_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
z
#__inference_internal_grad_fn_792311
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
#__inference_internal_grad_fn_792113
result_grads_0
result_grads_1
mul_dense_1_beta
mul_dense_1_biasadd
identityu
mulMulmul_dense_1_betamul_dense_1_biasadd^result_grads_0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:����������f
mul_1Mulmul_dense_1_betamul_dense_1_biasadd*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������S
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:����������U
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:����������Z
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:����������R
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*Q
_input_shapes@
>:����������:����������: :����������:X T
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:����������
�
_
C__inference_flatten_layer_call_and_return_conditional_losses_787829

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 1  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������bY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_787264

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_789049
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@�

unknown_10:	�%

unknown_11:�@

unknown_12:@%

unknown_13:@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	� 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: %

unknown_25: �

unknown_26:	�%

unknown_27:�@

unknown_28:@%

unknown_29:@�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�%

unknown_35:�@

unknown_36:@$

unknown_37:@ 

unknown_38: $

unknown_39: @

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:
�b�

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:	�


unknown_52:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*X
_read_only_resource_inputs:
86	
 !"#$%&'()*+,-./0123456*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_787007o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
#__inference_internal_grad_fn_791663
result_grads_0
result_grads_1
mul_conv2d_2_beta
mul_conv2d_2_biasadd
identity~
mulMulmul_conv2d_2_betamul_conv2d_2_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@o
mul_1Mulmul_conv2d_2_betamul_conv2d_2_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_790175

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mulMulbeta:output:0BiasAdd:output:0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������f
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_1:z:0*
T0*0
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790167*L
_output_shapes:
8:����������:����������l

Identity_1IdentityIdentityN:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_conv2d_1_layer_call_fn_789987

inputs!
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_787480w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
F
*__inference_rescaling_layer_call_fn_789943

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
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_787436h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_787801

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787793*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_790032

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790024*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_3_layer_call_fn_790450

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_787233�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_790338

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�	
�
4__inference_batch_normalization_layer_call_fn_790058

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_787060�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_1_layer_call_fn_790188

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_787093�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_5_layer_call_fn_790733

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_787410p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791933
result_grads_0
result_grads_1
mul_conv2d_3_beta
mul_conv2d_3_biasadd
identity
mulMulmul_conv2d_3_betamul_conv2d_3_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������p
mul_1Mulmul_conv2d_3_betamul_conv2d_3_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
)__inference_conv2d_6_layer_call_fn_790365

inputs"
unknown: �
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_787672x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791987
result_grads_0
result_grads_1
mul_dense_beta
mul_dense_biasadd
identityx
mulMulmul_dense_betamul_dense_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� i
mul_1Mulmul_dense_betamul_dense_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
z
#__inference_internal_grad_fn_791465
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitym
mulMulmul_betamul_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������^
mul_1Mulmul_betamul_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_792077
result_grads_0
result_grads_1
mul_conv2d_10_beta
mul_conv2d_10_biasadd
identity�
mulMulmul_conv2d_10_betamul_conv2d_10_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� q
mul_1Mulmul_conv2d_10_betamul_conv2d_10_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_790410

inputs9
conv2d_readvariableop_resource:�@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790402*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_2_layer_call_fn_790014

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_787504w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_790553

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:��������� �
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790545*J
_output_shapes8
6:��������� :��������� k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_787297

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792329
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� ]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
*__inference_conv2d_11_layer_call_fn_790562

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_787801w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791159
result_grads_0
result_grads_1
mul_model_b_conv2d_2_beta 
mul_model_b_conv2d_2_biasadd
identity�
mulMulmul_model_b_conv2d_2_betamul_model_b_conv2d_2_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@
mul_1Mulmul_model_b_conv2d_2_betamul_model_b_conv2d_2_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_787672

inputs9
conv2d_readvariableop_resource: �.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: �*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mulMulbeta:output:0BiasAdd:output:0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������f
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_1:z:0*
T0*0
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787664*L
_output_shapes:
8:����������:����������l

Identity_1IdentityIdentityN:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792149
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� ]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
J
.__inference_max_pooling2d_layer_call_fn_790242

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
GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_787144�
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
�
z
#__inference_internal_grad_fn_791573
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� ]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
#__inference_internal_grad_fn_791645
result_grads_0
result_grads_1
mul_conv2d_1_beta
mul_conv2d_1_biasadd
identity~
mulMulmul_conv2d_1_betamul_conv2d_1_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� o
mul_1Mulmul_conv2d_1_betamul_conv2d_1_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
a
E__inference_rescaling_layer_call_and_return_conditional_losses_787436

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ]
mulMulinputsCast/x:output:0*
T0*/
_output_shapes
:���������b
addAddV2mul:z:0Cast_1/x:output:0*
T0*/
_output_shapes
:���������W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_790437

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mulMulbeta:output:0BiasAdd:output:0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������f
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_1:z:0*
T0*0
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790429*L
_output_shapes:
8:����������:����������l

Identity_1IdentityIdentityN:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791951
result_grads_0
result_grads_1
mul_conv2d_4_beta
mul_conv2d_4_biasadd
identity~
mulMulmul_conv2d_4_betamul_conv2d_4_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@o
mul_1Mulmul_conv2d_4_betamul_conv2d_4_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
)__inference_conv2d_3_layer_call_fn_790103

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_787537x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

b
C__inference_dropout_layer_call_and_return_conditional_losses_790669

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_791375
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
��
�a
"__inference__traced_restore_792982
file_prefix8
assignvariableop_conv2d_kernel:@,
assignvariableop_1_conv2d_bias:@<
"assignvariableop_2_conv2d_1_kernel:@ .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel: @.
 assignvariableop_5_conv2d_2_bias:@:
,assignvariableop_6_batch_normalization_gamma:@9
+assignvariableop_7_batch_normalization_beta:@@
2assignvariableop_8_batch_normalization_moving_mean:@D
6assignvariableop_9_batch_normalization_moving_variance:@>
#assignvariableop_10_conv2d_3_kernel:@�0
!assignvariableop_11_conv2d_3_bias:	�>
#assignvariableop_12_conv2d_4_kernel:�@/
!assignvariableop_13_conv2d_4_bias:@>
#assignvariableop_14_conv2d_5_kernel:@�0
!assignvariableop_15_conv2d_5_bias:	�>
/assignvariableop_16_batch_normalization_1_gamma:	�=
.assignvariableop_17_batch_normalization_1_beta:	�D
5assignvariableop_18_batch_normalization_1_moving_mean:	�H
9assignvariableop_19_batch_normalization_1_moving_variance:	�3
 assignvariableop_20_dense_kernel:	� ,
assignvariableop_21_dense_bias: =
/assignvariableop_22_batch_normalization_2_gamma: <
.assignvariableop_23_batch_normalization_2_beta: C
5assignvariableop_24_batch_normalization_2_moving_mean: G
9assignvariableop_25_batch_normalization_2_moving_variance: >
#assignvariableop_26_conv2d_6_kernel: �0
!assignvariableop_27_conv2d_6_bias:	�>
#assignvariableop_28_conv2d_7_kernel:�@/
!assignvariableop_29_conv2d_7_bias:@>
#assignvariableop_30_conv2d_8_kernel:@�0
!assignvariableop_31_conv2d_8_bias:	�>
/assignvariableop_32_batch_normalization_3_gamma:	�=
.assignvariableop_33_batch_normalization_3_beta:	�D
5assignvariableop_34_batch_normalization_3_moving_mean:	�H
9assignvariableop_35_batch_normalization_3_moving_variance:	�>
#assignvariableop_36_conv2d_9_kernel:�@/
!assignvariableop_37_conv2d_9_bias:@>
$assignvariableop_38_conv2d_10_kernel:@ 0
"assignvariableop_39_conv2d_10_bias: >
$assignvariableop_40_conv2d_11_kernel: @0
"assignvariableop_41_conv2d_11_bias:@=
/assignvariableop_42_batch_normalization_4_gamma:@<
.assignvariableop_43_batch_normalization_4_beta:@C
5assignvariableop_44_batch_normalization_4_moving_mean:@G
9assignvariableop_45_batch_normalization_4_moving_variance:@6
"assignvariableop_46_dense_1_kernel:
�b�/
 assignvariableop_47_dense_1_bias:	�>
/assignvariableop_48_batch_normalization_5_gamma:	�=
.assignvariableop_49_batch_normalization_5_beta:	�D
5assignvariableop_50_batch_normalization_5_moving_mean:	�H
9assignvariableop_51_batch_normalization_5_moving_variance:	�5
"assignvariableop_52_dense_2_kernel:	�
.
 assignvariableop_53_dense_2_bias:
'
assignvariableop_54_adam_iter:	 )
assignvariableop_55_adam_beta_1: )
assignvariableop_56_adam_beta_2: (
assignvariableop_57_adam_decay: 0
&assignvariableop_58_adam_learning_rate: %
assignvariableop_59_total_1: %
assignvariableop_60_count_1: #
assignvariableop_61_total: #
assignvariableop_62_count: B
(assignvariableop_63_adam_conv2d_kernel_m:@4
&assignvariableop_64_adam_conv2d_bias_m:@D
*assignvariableop_65_adam_conv2d_1_kernel_m:@ 6
(assignvariableop_66_adam_conv2d_1_bias_m: D
*assignvariableop_67_adam_conv2d_2_kernel_m: @6
(assignvariableop_68_adam_conv2d_2_bias_m:@B
4assignvariableop_69_adam_batch_normalization_gamma_m:@A
3assignvariableop_70_adam_batch_normalization_beta_m:@E
*assignvariableop_71_adam_conv2d_3_kernel_m:@�7
(assignvariableop_72_adam_conv2d_3_bias_m:	�E
*assignvariableop_73_adam_conv2d_4_kernel_m:�@6
(assignvariableop_74_adam_conv2d_4_bias_m:@E
*assignvariableop_75_adam_conv2d_5_kernel_m:@�7
(assignvariableop_76_adam_conv2d_5_bias_m:	�E
6assignvariableop_77_adam_batch_normalization_1_gamma_m:	�D
5assignvariableop_78_adam_batch_normalization_1_beta_m:	�:
'assignvariableop_79_adam_dense_kernel_m:	� 3
%assignvariableop_80_adam_dense_bias_m: D
6assignvariableop_81_adam_batch_normalization_2_gamma_m: C
5assignvariableop_82_adam_batch_normalization_2_beta_m: E
*assignvariableop_83_adam_conv2d_6_kernel_m: �7
(assignvariableop_84_adam_conv2d_6_bias_m:	�E
*assignvariableop_85_adam_conv2d_7_kernel_m:�@6
(assignvariableop_86_adam_conv2d_7_bias_m:@E
*assignvariableop_87_adam_conv2d_8_kernel_m:@�7
(assignvariableop_88_adam_conv2d_8_bias_m:	�E
6assignvariableop_89_adam_batch_normalization_3_gamma_m:	�D
5assignvariableop_90_adam_batch_normalization_3_beta_m:	�E
*assignvariableop_91_adam_conv2d_9_kernel_m:�@6
(assignvariableop_92_adam_conv2d_9_bias_m:@E
+assignvariableop_93_adam_conv2d_10_kernel_m:@ 7
)assignvariableop_94_adam_conv2d_10_bias_m: E
+assignvariableop_95_adam_conv2d_11_kernel_m: @7
)assignvariableop_96_adam_conv2d_11_bias_m:@D
6assignvariableop_97_adam_batch_normalization_4_gamma_m:@C
5assignvariableop_98_adam_batch_normalization_4_beta_m:@=
)assignvariableop_99_adam_dense_1_kernel_m:
�b�7
(assignvariableop_100_adam_dense_1_bias_m:	�F
7assignvariableop_101_adam_batch_normalization_5_gamma_m:	�E
6assignvariableop_102_adam_batch_normalization_5_beta_m:	�=
*assignvariableop_103_adam_dense_2_kernel_m:	�
6
(assignvariableop_104_adam_dense_2_bias_m:
C
)assignvariableop_105_adam_conv2d_kernel_v:@5
'assignvariableop_106_adam_conv2d_bias_v:@E
+assignvariableop_107_adam_conv2d_1_kernel_v:@ 7
)assignvariableop_108_adam_conv2d_1_bias_v: E
+assignvariableop_109_adam_conv2d_2_kernel_v: @7
)assignvariableop_110_adam_conv2d_2_bias_v:@C
5assignvariableop_111_adam_batch_normalization_gamma_v:@B
4assignvariableop_112_adam_batch_normalization_beta_v:@F
+assignvariableop_113_adam_conv2d_3_kernel_v:@�8
)assignvariableop_114_adam_conv2d_3_bias_v:	�F
+assignvariableop_115_adam_conv2d_4_kernel_v:�@7
)assignvariableop_116_adam_conv2d_4_bias_v:@F
+assignvariableop_117_adam_conv2d_5_kernel_v:@�8
)assignvariableop_118_adam_conv2d_5_bias_v:	�F
7assignvariableop_119_adam_batch_normalization_1_gamma_v:	�E
6assignvariableop_120_adam_batch_normalization_1_beta_v:	�;
(assignvariableop_121_adam_dense_kernel_v:	� 4
&assignvariableop_122_adam_dense_bias_v: E
7assignvariableop_123_adam_batch_normalization_2_gamma_v: D
6assignvariableop_124_adam_batch_normalization_2_beta_v: F
+assignvariableop_125_adam_conv2d_6_kernel_v: �8
)assignvariableop_126_adam_conv2d_6_bias_v:	�F
+assignvariableop_127_adam_conv2d_7_kernel_v:�@7
)assignvariableop_128_adam_conv2d_7_bias_v:@F
+assignvariableop_129_adam_conv2d_8_kernel_v:@�8
)assignvariableop_130_adam_conv2d_8_bias_v:	�F
7assignvariableop_131_adam_batch_normalization_3_gamma_v:	�E
6assignvariableop_132_adam_batch_normalization_3_beta_v:	�F
+assignvariableop_133_adam_conv2d_9_kernel_v:�@7
)assignvariableop_134_adam_conv2d_9_bias_v:@F
,assignvariableop_135_adam_conv2d_10_kernel_v:@ 8
*assignvariableop_136_adam_conv2d_10_bias_v: F
,assignvariableop_137_adam_conv2d_11_kernel_v: @8
*assignvariableop_138_adam_conv2d_11_bias_v:@E
7assignvariableop_139_adam_batch_normalization_4_gamma_v:@D
6assignvariableop_140_adam_batch_normalization_4_beta_v:@>
*assignvariableop_141_adam_dense_1_kernel_v:
�b�7
(assignvariableop_142_adam_dense_1_bias_v:	�F
7assignvariableop_143_adam_batch_normalization_5_gamma_v:	�E
6assignvariableop_144_adam_batch_normalization_5_beta_v:	�=
*assignvariableop_145_adam_dense_2_kernel_v:	�
6
(assignvariableop_146_adam_dense_2_bias_v:

identity_148��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_115�AssignVariableOp_116�AssignVariableOp_117�AssignVariableOp_118�AssignVariableOp_119�AssignVariableOp_12�AssignVariableOp_120�AssignVariableOp_121�AssignVariableOp_122�AssignVariableOp_123�AssignVariableOp_124�AssignVariableOp_125�AssignVariableOp_126�AssignVariableOp_127�AssignVariableOp_128�AssignVariableOp_129�AssignVariableOp_13�AssignVariableOp_130�AssignVariableOp_131�AssignVariableOp_132�AssignVariableOp_133�AssignVariableOp_134�AssignVariableOp_135�AssignVariableOp_136�AssignVariableOp_137�AssignVariableOp_138�AssignVariableOp_139�AssignVariableOp_14�AssignVariableOp_140�AssignVariableOp_141�AssignVariableOp_142�AssignVariableOp_143�AssignVariableOp_144�AssignVariableOp_145�AssignVariableOp_146�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�S
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�R
value�RB�R�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-19/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-19/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-19/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypes�
�2�	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp,assignvariableop_6_batch_normalization_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp+assignvariableop_7_batch_normalization_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp2assignvariableop_8_batch_normalization_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp6assignvariableop_9_batch_normalization_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_3_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_4_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_5_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_5_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_1_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp.assignvariableop_17_batch_normalization_1_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp5assignvariableop_18_batch_normalization_1_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp9assignvariableop_19_batch_normalization_1_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_dense_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp/assignvariableop_22_batch_normalization_2_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp.assignvariableop_23_batch_normalization_2_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp5assignvariableop_24_batch_normalization_2_moving_meanIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp9assignvariableop_25_batch_normalization_2_moving_varianceIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp#assignvariableop_26_conv2d_6_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp!assignvariableop_27_conv2d_6_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_7_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_7_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_conv2d_8_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_conv2d_8_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp/assignvariableop_32_batch_normalization_3_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp.assignvariableop_33_batch_normalization_3_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp5assignvariableop_34_batch_normalization_3_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp9assignvariableop_35_batch_normalization_3_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp#assignvariableop_36_conv2d_9_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp!assignvariableop_37_conv2d_9_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp$assignvariableop_38_conv2d_10_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp"assignvariableop_39_conv2d_10_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp$assignvariableop_40_conv2d_11_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp"assignvariableop_41_conv2d_11_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp/assignvariableop_42_batch_normalization_4_gammaIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp.assignvariableop_43_batch_normalization_4_betaIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp5assignvariableop_44_batch_normalization_4_moving_meanIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp9assignvariableop_45_batch_normalization_4_moving_varianceIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp"assignvariableop_46_dense_1_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp assignvariableop_47_dense_1_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp/assignvariableop_48_batch_normalization_5_gammaIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp.assignvariableop_49_batch_normalization_5_betaIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp5assignvariableop_50_batch_normalization_5_moving_meanIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp9assignvariableop_51_batch_normalization_5_moving_varianceIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp"assignvariableop_52_dense_2_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp assignvariableop_53_dense_2_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpassignvariableop_54_adam_iterIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpassignvariableop_55_adam_beta_1Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpassignvariableop_56_adam_beta_2Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpassignvariableop_57_adam_decayIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_learning_rateIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOpassignvariableop_59_total_1Identity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOpassignvariableop_60_count_1Identity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOpassignvariableop_61_totalIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpassignvariableop_62_countIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp(assignvariableop_63_adam_conv2d_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp&assignvariableop_64_adam_conv2d_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_conv2d_1_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_conv2d_1_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_conv2d_2_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_conv2d_2_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp4assignvariableop_69_adam_batch_normalization_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp3assignvariableop_70_adam_batch_normalization_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp*assignvariableop_71_adam_conv2d_3_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp(assignvariableop_72_adam_conv2d_3_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_conv2d_4_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_conv2d_4_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_conv2d_5_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_conv2d_5_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp6assignvariableop_77_adam_batch_normalization_1_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_batch_normalization_1_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp'assignvariableop_79_adam_dense_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp%assignvariableop_80_adam_dense_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp6assignvariableop_81_adam_batch_normalization_2_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp5assignvariableop_82_adam_batch_normalization_2_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_conv2d_6_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_conv2d_6_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp*assignvariableop_85_adam_conv2d_7_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp(assignvariableop_86_adam_conv2d_7_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_conv2d_8_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_conv2d_8_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp6assignvariableop_89_adam_batch_normalization_3_gamma_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp5assignvariableop_90_adam_batch_normalization_3_beta_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp*assignvariableop_91_adam_conv2d_9_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp(assignvariableop_92_adam_conv2d_9_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp+assignvariableop_93_adam_conv2d_10_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp)assignvariableop_94_adam_conv2d_10_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_conv2d_11_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_conv2d_11_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp6assignvariableop_97_adam_batch_normalization_4_gamma_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp5assignvariableop_98_adam_batch_normalization_4_beta_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp)assignvariableop_99_adam_dense_1_kernel_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp(assignvariableop_100_adam_dense_1_bias_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp7assignvariableop_101_adam_batch_normalization_5_gamma_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp6assignvariableop_102_adam_batch_normalization_5_beta_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp*assignvariableop_103_adam_dense_2_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp(assignvariableop_104_adam_dense_2_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp)assignvariableop_105_adam_conv2d_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp'assignvariableop_106_adam_conv2d_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp+assignvariableop_107_adam_conv2d_1_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp)assignvariableop_108_adam_conv2d_1_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp+assignvariableop_109_adam_conv2d_2_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp)assignvariableop_110_adam_conv2d_2_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp5assignvariableop_111_adam_batch_normalization_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp4assignvariableop_112_adam_batch_normalization_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp+assignvariableop_113_adam_conv2d_3_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp)assignvariableop_114_adam_conv2d_3_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_115AssignVariableOp+assignvariableop_115_adam_conv2d_4_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_116AssignVariableOp)assignvariableop_116_adam_conv2d_4_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_117AssignVariableOp+assignvariableop_117_adam_conv2d_5_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_118AssignVariableOp)assignvariableop_118_adam_conv2d_5_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_119AssignVariableOp7assignvariableop_119_adam_batch_normalization_1_gamma_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_120AssignVariableOp6assignvariableop_120_adam_batch_normalization_1_beta_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_121AssignVariableOp(assignvariableop_121_adam_dense_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_122AssignVariableOp&assignvariableop_122_adam_dense_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_123AssignVariableOp7assignvariableop_123_adam_batch_normalization_2_gamma_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_124AssignVariableOp6assignvariableop_124_adam_batch_normalization_2_beta_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_125AssignVariableOp+assignvariableop_125_adam_conv2d_6_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_126AssignVariableOp)assignvariableop_126_adam_conv2d_6_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_127AssignVariableOp+assignvariableop_127_adam_conv2d_7_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_128AssignVariableOp)assignvariableop_128_adam_conv2d_7_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_129AssignVariableOp+assignvariableop_129_adam_conv2d_8_kernel_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_130AssignVariableOp)assignvariableop_130_adam_conv2d_8_bias_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_131AssignVariableOp7assignvariableop_131_adam_batch_normalization_3_gamma_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_132AssignVariableOp6assignvariableop_132_adam_batch_normalization_3_beta_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_133AssignVariableOp+assignvariableop_133_adam_conv2d_9_kernel_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_134AssignVariableOp)assignvariableop_134_adam_conv2d_9_bias_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_135AssignVariableOp,assignvariableop_135_adam_conv2d_10_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_136AssignVariableOp*assignvariableop_136_adam_conv2d_10_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_137AssignVariableOp,assignvariableop_137_adam_conv2d_11_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_138AssignVariableOp*assignvariableop_138_adam_conv2d_11_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_139AssignVariableOp7assignvariableop_139_adam_batch_normalization_4_gamma_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_140AssignVariableOp6assignvariableop_140_adam_batch_normalization_4_beta_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_141AssignVariableOp*assignvariableop_141_adam_dense_1_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_142AssignVariableOp(assignvariableop_142_adam_dense_1_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_143AssignVariableOp7assignvariableop_143_adam_batch_normalization_5_gamma_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_144AssignVariableOp6assignvariableop_144_adam_batch_normalization_5_beta_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_145AssignVariableOp*assignvariableop_145_adam_dense_2_kernel_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_146AssignVariableOp(assignvariableop_146_adam_dense_2_bias_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_147Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_148IdentityIdentity_147:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_148Identity_148:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462*
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
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_790121

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mulMulbeta:output:0BiasAdd:output:0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������f
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_1:z:0*
T0*0
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790113*L
_output_shapes:
8:����������:����������l

Identity_1IdentityIdentityN:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
_
C__inference_flatten_layer_call_and_return_conditional_losses_790680

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 1  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������bY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_5_layer_call_fn_790720

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_787363p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_787561

inputs9
conv2d_readvariableop_resource:�@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787553*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_9_layer_call_fn_790508

inputs"
unknown:�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_787753w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_Model_B_layer_call_fn_787993
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@�

unknown_10:	�%

unknown_11:�@

unknown_12:@%

unknown_13:@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	� 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: %

unknown_25: �

unknown_26:	�%

unknown_27:�@

unknown_28:@%

unknown_29:@�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�%

unknown_35:�@

unknown_36:@$

unknown_37:@ 

unknown_38: $

unknown_39: @

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:
�b�

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:	�


unknown_52:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*X
_read_only_resource_inputs:
86	
 !"#$%&'()*+,-./0123456*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Model_B_layer_call_and_return_conditional_losses_787882o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�

b
C__inference_dropout_layer_call_and_return_conditional_losses_788039

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_787696

inputs9
conv2d_readvariableop_resource:�@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787688*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_787821

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_787328

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_792059
result_grads_0
result_grads_1
mul_conv2d_9_beta
mul_conv2d_9_biasadd
identity~
mulMulmul_conv2d_9_betamul_conv2d_9_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@o
mul_1Mulmul_conv2d_9_betamul_conv2d_9_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
��
�3
!__inference__wrapped_model_787007
input_1G
-model_b_conv2d_conv2d_readvariableop_resource:@<
.model_b_conv2d_biasadd_readvariableop_resource:@I
/model_b_conv2d_1_conv2d_readvariableop_resource:@ >
0model_b_conv2d_1_biasadd_readvariableop_resource: I
/model_b_conv2d_2_conv2d_readvariableop_resource: @>
0model_b_conv2d_2_biasadd_readvariableop_resource:@A
3model_b_batch_normalization_readvariableop_resource:@C
5model_b_batch_normalization_readvariableop_1_resource:@R
Dmodel_b_batch_normalization_fusedbatchnormv3_readvariableop_resource:@T
Fmodel_b_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@J
/model_b_conv2d_3_conv2d_readvariableop_resource:@�?
0model_b_conv2d_3_biasadd_readvariableop_resource:	�J
/model_b_conv2d_4_conv2d_readvariableop_resource:�@>
0model_b_conv2d_4_biasadd_readvariableop_resource:@J
/model_b_conv2d_5_conv2d_readvariableop_resource:@�?
0model_b_conv2d_5_biasadd_readvariableop_resource:	�D
5model_b_batch_normalization_1_readvariableop_resource:	�F
7model_b_batch_normalization_1_readvariableop_1_resource:	�U
Fmodel_b_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�W
Hmodel_b_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�B
/model_b_dense_tensordot_readvariableop_resource:	� ;
-model_b_dense_biasadd_readvariableop_resource: C
5model_b_batch_normalization_2_readvariableop_resource: E
7model_b_batch_normalization_2_readvariableop_1_resource: T
Fmodel_b_batch_normalization_2_fusedbatchnormv3_readvariableop_resource: V
Hmodel_b_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: J
/model_b_conv2d_6_conv2d_readvariableop_resource: �?
0model_b_conv2d_6_biasadd_readvariableop_resource:	�J
/model_b_conv2d_7_conv2d_readvariableop_resource:�@>
0model_b_conv2d_7_biasadd_readvariableop_resource:@J
/model_b_conv2d_8_conv2d_readvariableop_resource:@�?
0model_b_conv2d_8_biasadd_readvariableop_resource:	�D
5model_b_batch_normalization_3_readvariableop_resource:	�F
7model_b_batch_normalization_3_readvariableop_1_resource:	�U
Fmodel_b_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:	�W
Hmodel_b_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:	�J
/model_b_conv2d_9_conv2d_readvariableop_resource:�@>
0model_b_conv2d_9_biasadd_readvariableop_resource:@J
0model_b_conv2d_10_conv2d_readvariableop_resource:@ ?
1model_b_conv2d_10_biasadd_readvariableop_resource: J
0model_b_conv2d_11_conv2d_readvariableop_resource: @?
1model_b_conv2d_11_biasadd_readvariableop_resource:@C
5model_b_batch_normalization_4_readvariableop_resource:@E
7model_b_batch_normalization_4_readvariableop_1_resource:@T
Fmodel_b_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:@V
Hmodel_b_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:@B
.model_b_dense_1_matmul_readvariableop_resource:
�b�>
/model_b_dense_1_biasadd_readvariableop_resource:	�N
?model_b_batch_normalization_5_batchnorm_readvariableop_resource:	�R
Cmodel_b_batch_normalization_5_batchnorm_mul_readvariableop_resource:	�P
Amodel_b_batch_normalization_5_batchnorm_readvariableop_1_resource:	�P
Amodel_b_batch_normalization_5_batchnorm_readvariableop_2_resource:	�A
.model_b_dense_2_matmul_readvariableop_resource:	�
=
/model_b_dense_2_biasadd_readvariableop_resource:

identity��;Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp�=Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�*Model_B/batch_normalization/ReadVariableOp�,Model_B/batch_normalization/ReadVariableOp_1�=Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�?Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�,Model_B/batch_normalization_1/ReadVariableOp�.Model_B/batch_normalization_1/ReadVariableOp_1�=Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�?Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�,Model_B/batch_normalization_2/ReadVariableOp�.Model_B/batch_normalization_2/ReadVariableOp_1�=Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp�?Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�,Model_B/batch_normalization_3/ReadVariableOp�.Model_B/batch_normalization_3/ReadVariableOp_1�=Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp�?Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1�,Model_B/batch_normalization_4/ReadVariableOp�.Model_B/batch_normalization_4/ReadVariableOp_1�6Model_B/batch_normalization_5/batchnorm/ReadVariableOp�8Model_B/batch_normalization_5/batchnorm/ReadVariableOp_1�8Model_B/batch_normalization_5/batchnorm/ReadVariableOp_2�:Model_B/batch_normalization_5/batchnorm/mul/ReadVariableOp�%Model_B/conv2d/BiasAdd/ReadVariableOp�$Model_B/conv2d/Conv2D/ReadVariableOp�'Model_B/conv2d_1/BiasAdd/ReadVariableOp�&Model_B/conv2d_1/Conv2D/ReadVariableOp�(Model_B/conv2d_10/BiasAdd/ReadVariableOp�'Model_B/conv2d_10/Conv2D/ReadVariableOp�(Model_B/conv2d_11/BiasAdd/ReadVariableOp�'Model_B/conv2d_11/Conv2D/ReadVariableOp�'Model_B/conv2d_2/BiasAdd/ReadVariableOp�&Model_B/conv2d_2/Conv2D/ReadVariableOp�'Model_B/conv2d_3/BiasAdd/ReadVariableOp�&Model_B/conv2d_3/Conv2D/ReadVariableOp�'Model_B/conv2d_4/BiasAdd/ReadVariableOp�&Model_B/conv2d_4/Conv2D/ReadVariableOp�'Model_B/conv2d_5/BiasAdd/ReadVariableOp�&Model_B/conv2d_5/Conv2D/ReadVariableOp�'Model_B/conv2d_6/BiasAdd/ReadVariableOp�&Model_B/conv2d_6/Conv2D/ReadVariableOp�'Model_B/conv2d_7/BiasAdd/ReadVariableOp�&Model_B/conv2d_7/Conv2D/ReadVariableOp�'Model_B/conv2d_8/BiasAdd/ReadVariableOp�&Model_B/conv2d_8/Conv2D/ReadVariableOp�'Model_B/conv2d_9/BiasAdd/ReadVariableOp�&Model_B/conv2d_9/Conv2D/ReadVariableOp�$Model_B/dense/BiasAdd/ReadVariableOp�&Model_B/dense/Tensordot/ReadVariableOp�&Model_B/dense_1/BiasAdd/ReadVariableOp�%Model_B/dense_1/MatMul/ReadVariableOp�&Model_B/dense_2/BiasAdd/ReadVariableOp�%Model_B/dense_2/MatMul/ReadVariableOp]
Model_B/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;_
Model_B/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Model_B/rescaling/mulMulinput_1!Model_B/rescaling/Cast/x:output:0*
T0*/
_output_shapes
:����������
Model_B/rescaling/addAddV2Model_B/rescaling/mul:z:0#Model_B/rescaling/Cast_1/x:output:0*
T0*/
_output_shapes
:����������
$Model_B/conv2d/Conv2D/ReadVariableOpReadVariableOp-model_b_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Model_B/conv2d/Conv2DConv2DModel_B/rescaling/add:z:0,Model_B/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
%Model_B/conv2d/BiasAdd/ReadVariableOpReadVariableOp.model_b_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Model_B/conv2d/BiasAddBiasAddModel_B/conv2d/Conv2D:output:0-Model_B/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
Model_B/conv2d/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d/mulMulModel_B/conv2d/beta:output:0Model_B/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������@s
Model_B/conv2d/SigmoidSigmoidModel_B/conv2d/mul:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d/mul_1MulModel_B/conv2d/BiasAdd:output:0Model_B/conv2d/Sigmoid:y:0*
T0*/
_output_shapes
:���������@w
Model_B/conv2d/IdentityIdentityModel_B/conv2d/mul_1:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d/IdentityN	IdentityNModel_B/conv2d/mul_1:z:0Model_B/conv2d/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786700*J
_output_shapes8
6:���������@:���������@�
&Model_B/conv2d_1/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Model_B/conv2d_1/Conv2DConv2D!Model_B/conv2d/IdentityN:output:0.Model_B/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
'Model_B/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Model_B/conv2d_1/BiasAddBiasAdd Model_B/conv2d_1/Conv2D:output:0/Model_B/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� Z
Model_B/conv2d_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_1/mulMulModel_B/conv2d_1/beta:output:0!Model_B/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� w
Model_B/conv2d_1/SigmoidSigmoidModel_B/conv2d_1/mul:z:0*
T0*/
_output_shapes
:��������� �
Model_B/conv2d_1/mul_1Mul!Model_B/conv2d_1/BiasAdd:output:0Model_B/conv2d_1/Sigmoid:y:0*
T0*/
_output_shapes
:��������� {
Model_B/conv2d_1/IdentityIdentityModel_B/conv2d_1/mul_1:z:0*
T0*/
_output_shapes
:��������� �
Model_B/conv2d_1/IdentityN	IdentityNModel_B/conv2d_1/mul_1:z:0!Model_B/conv2d_1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786714*J
_output_shapes8
6:��������� :��������� �
&Model_B/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Model_B/conv2d_2/Conv2DConv2D#Model_B/conv2d_1/IdentityN:output:0.Model_B/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
'Model_B/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Model_B/conv2d_2/BiasAddBiasAdd Model_B/conv2d_2/Conv2D:output:0/Model_B/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@Z
Model_B/conv2d_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_2/mulMulModel_B/conv2d_2/beta:output:0!Model_B/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������@w
Model_B/conv2d_2/SigmoidSigmoidModel_B/conv2d_2/mul:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_2/mul_1Mul!Model_B/conv2d_2/BiasAdd:output:0Model_B/conv2d_2/Sigmoid:y:0*
T0*/
_output_shapes
:���������@{
Model_B/conv2d_2/IdentityIdentityModel_B/conv2d_2/mul_1:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_2/IdentityN	IdentityNModel_B/conv2d_2/mul_1:z:0!Model_B/conv2d_2/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786728*J
_output_shapes8
6:���������@:���������@�
*Model_B/batch_normalization/ReadVariableOpReadVariableOp3model_b_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype0�
,Model_B/batch_normalization/ReadVariableOp_1ReadVariableOp5model_b_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
;Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_b_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
=Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_b_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
,Model_B/batch_normalization/FusedBatchNormV3FusedBatchNormV3#Model_B/conv2d_2/IdentityN:output:02Model_B/batch_normalization/ReadVariableOp:value:04Model_B/batch_normalization/ReadVariableOp_1:value:0CModel_B/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0EModel_B/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
&Model_B/conv2d_3/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Model_B/conv2d_3/Conv2DConv2D0Model_B/batch_normalization/FusedBatchNormV3:y:0.Model_B/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
'Model_B/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Model_B/conv2d_3/BiasAddBiasAdd Model_B/conv2d_3/Conv2D:output:0/Model_B/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Z
Model_B/conv2d_3/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_3/mulMulModel_B/conv2d_3/beta:output:0!Model_B/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������x
Model_B/conv2d_3/SigmoidSigmoidModel_B/conv2d_3/mul:z:0*
T0*0
_output_shapes
:�����������
Model_B/conv2d_3/mul_1Mul!Model_B/conv2d_3/BiasAdd:output:0Model_B/conv2d_3/Sigmoid:y:0*
T0*0
_output_shapes
:����������|
Model_B/conv2d_3/IdentityIdentityModel_B/conv2d_3/mul_1:z:0*
T0*0
_output_shapes
:�����������
Model_B/conv2d_3/IdentityN	IdentityNModel_B/conv2d_3/mul_1:z:0!Model_B/conv2d_3/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786756*L
_output_shapes:
8:����������:�����������
&Model_B/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_4_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Model_B/conv2d_4/Conv2DConv2D#Model_B/conv2d_3/IdentityN:output:0.Model_B/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
'Model_B/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Model_B/conv2d_4/BiasAddBiasAdd Model_B/conv2d_4/Conv2D:output:0/Model_B/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@Z
Model_B/conv2d_4/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_4/mulMulModel_B/conv2d_4/beta:output:0!Model_B/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������@w
Model_B/conv2d_4/SigmoidSigmoidModel_B/conv2d_4/mul:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_4/mul_1Mul!Model_B/conv2d_4/BiasAdd:output:0Model_B/conv2d_4/Sigmoid:y:0*
T0*/
_output_shapes
:���������@{
Model_B/conv2d_4/IdentityIdentityModel_B/conv2d_4/mul_1:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_4/IdentityN	IdentityNModel_B/conv2d_4/mul_1:z:0!Model_B/conv2d_4/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786770*J
_output_shapes8
6:���������@:���������@�
&Model_B/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Model_B/conv2d_5/Conv2DConv2D#Model_B/conv2d_4/IdentityN:output:0.Model_B/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
'Model_B/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Model_B/conv2d_5/BiasAddBiasAdd Model_B/conv2d_5/Conv2D:output:0/Model_B/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Z
Model_B/conv2d_5/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_5/mulMulModel_B/conv2d_5/beta:output:0!Model_B/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:����������x
Model_B/conv2d_5/SigmoidSigmoidModel_B/conv2d_5/mul:z:0*
T0*0
_output_shapes
:�����������
Model_B/conv2d_5/mul_1Mul!Model_B/conv2d_5/BiasAdd:output:0Model_B/conv2d_5/Sigmoid:y:0*
T0*0
_output_shapes
:����������|
Model_B/conv2d_5/IdentityIdentityModel_B/conv2d_5/mul_1:z:0*
T0*0
_output_shapes
:�����������
Model_B/conv2d_5/IdentityN	IdentityNModel_B/conv2d_5/mul_1:z:0!Model_B/conv2d_5/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786784*L
_output_shapes:
8:����������:�����������
,Model_B/batch_normalization_1/ReadVariableOpReadVariableOp5model_b_batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.Model_B/batch_normalization_1/ReadVariableOp_1ReadVariableOp7model_b_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
=Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_b_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
?Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_b_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
.Model_B/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3#Model_B/conv2d_5/IdentityN:output:04Model_B/batch_normalization_1/ReadVariableOp:value:06Model_B/batch_normalization_1/ReadVariableOp_1:value:0EModel_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0GModel_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
Model_B/max_pooling2d/MaxPoolMaxPool2Model_B/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
&Model_B/dense/Tensordot/ReadVariableOpReadVariableOp/model_b_dense_tensordot_readvariableop_resource*
_output_shapes
:	� *
dtype0f
Model_B/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
Model_B/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          s
Model_B/dense/Tensordot/ShapeShape&Model_B/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:g
%Model_B/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 Model_B/dense/Tensordot/GatherV2GatherV2&Model_B/dense/Tensordot/Shape:output:0%Model_B/dense/Tensordot/free:output:0.Model_B/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'Model_B/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"Model_B/dense/Tensordot/GatherV2_1GatherV2&Model_B/dense/Tensordot/Shape:output:0%Model_B/dense/Tensordot/axes:output:00Model_B/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
Model_B/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Model_B/dense/Tensordot/ProdProd)Model_B/dense/Tensordot/GatherV2:output:0&Model_B/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: i
Model_B/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Model_B/dense/Tensordot/Prod_1Prod+Model_B/dense/Tensordot/GatherV2_1:output:0(Model_B/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#Model_B/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Model_B/dense/Tensordot/concatConcatV2%Model_B/dense/Tensordot/free:output:0%Model_B/dense/Tensordot/axes:output:0,Model_B/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Model_B/dense/Tensordot/stackPack%Model_B/dense/Tensordot/Prod:output:0'Model_B/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
!Model_B/dense/Tensordot/transpose	Transpose&Model_B/max_pooling2d/MaxPool:output:0'Model_B/dense/Tensordot/concat:output:0*
T0*0
_output_shapes
:�����������
Model_B/dense/Tensordot/ReshapeReshape%Model_B/dense/Tensordot/transpose:y:0&Model_B/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Model_B/dense/Tensordot/MatMulMatMul(Model_B/dense/Tensordot/Reshape:output:0.Model_B/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� i
Model_B/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: g
%Model_B/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 Model_B/dense/Tensordot/concat_1ConcatV2)Model_B/dense/Tensordot/GatherV2:output:0(Model_B/dense/Tensordot/Const_2:output:0.Model_B/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Model_B/dense/TensordotReshape(Model_B/dense/Tensordot/MatMul:product:0)Model_B/dense/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:��������� �
$Model_B/dense/BiasAdd/ReadVariableOpReadVariableOp-model_b_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Model_B/dense/BiasAddBiasAdd Model_B/dense/Tensordot:output:0,Model_B/dense/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W
Model_B/dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/dense/mulMulModel_B/dense/beta:output:0Model_B/dense/BiasAdd:output:0*
T0*/
_output_shapes
:��������� q
Model_B/dense/SigmoidSigmoidModel_B/dense/mul:z:0*
T0*/
_output_shapes
:��������� �
Model_B/dense/mul_1MulModel_B/dense/BiasAdd:output:0Model_B/dense/Sigmoid:y:0*
T0*/
_output_shapes
:��������� u
Model_B/dense/IdentityIdentityModel_B/dense/mul_1:z:0*
T0*/
_output_shapes
:��������� �
Model_B/dense/IdentityN	IdentityNModel_B/dense/mul_1:z:0Model_B/dense/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786833*J
_output_shapes8
6:��������� :��������� �
,Model_B/batch_normalization_2/ReadVariableOpReadVariableOp5model_b_batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype0�
.Model_B/batch_normalization_2/ReadVariableOp_1ReadVariableOp7model_b_batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype0�
=Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_b_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
?Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_b_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
.Model_B/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3 Model_B/dense/IdentityN:output:04Model_B/batch_normalization_2/ReadVariableOp:value:06Model_B/batch_normalization_2/ReadVariableOp_1:value:0EModel_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0GModel_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( �
&Model_B/conv2d_6/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
: �*
dtype0�
Model_B/conv2d_6/Conv2DConv2D2Model_B/batch_normalization_2/FusedBatchNormV3:y:0.Model_B/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
'Model_B/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Model_B/conv2d_6/BiasAddBiasAdd Model_B/conv2d_6/Conv2D:output:0/Model_B/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Z
Model_B/conv2d_6/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_6/mulMulModel_B/conv2d_6/beta:output:0!Model_B/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:����������x
Model_B/conv2d_6/SigmoidSigmoidModel_B/conv2d_6/mul:z:0*
T0*0
_output_shapes
:�����������
Model_B/conv2d_6/mul_1Mul!Model_B/conv2d_6/BiasAdd:output:0Model_B/conv2d_6/Sigmoid:y:0*
T0*0
_output_shapes
:����������|
Model_B/conv2d_6/IdentityIdentityModel_B/conv2d_6/mul_1:z:0*
T0*0
_output_shapes
:�����������
Model_B/conv2d_6/IdentityN	IdentityNModel_B/conv2d_6/mul_1:z:0!Model_B/conv2d_6/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786861*L
_output_shapes:
8:����������:�����������
&Model_B/conv2d_7/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Model_B/conv2d_7/Conv2DConv2D#Model_B/conv2d_6/IdentityN:output:0.Model_B/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
'Model_B/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Model_B/conv2d_7/BiasAddBiasAdd Model_B/conv2d_7/Conv2D:output:0/Model_B/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@Z
Model_B/conv2d_7/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_7/mulMulModel_B/conv2d_7/beta:output:0!Model_B/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:���������@w
Model_B/conv2d_7/SigmoidSigmoidModel_B/conv2d_7/mul:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_7/mul_1Mul!Model_B/conv2d_7/BiasAdd:output:0Model_B/conv2d_7/Sigmoid:y:0*
T0*/
_output_shapes
:���������@{
Model_B/conv2d_7/IdentityIdentityModel_B/conv2d_7/mul_1:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_7/IdentityN	IdentityNModel_B/conv2d_7/mul_1:z:0!Model_B/conv2d_7/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786875*J
_output_shapes8
6:���������@:���������@�
&Model_B/conv2d_8/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Model_B/conv2d_8/Conv2DConv2D#Model_B/conv2d_7/IdentityN:output:0.Model_B/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
'Model_B/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Model_B/conv2d_8/BiasAddBiasAdd Model_B/conv2d_8/Conv2D:output:0/Model_B/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Z
Model_B/conv2d_8/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_8/mulMulModel_B/conv2d_8/beta:output:0!Model_B/conv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:����������x
Model_B/conv2d_8/SigmoidSigmoidModel_B/conv2d_8/mul:z:0*
T0*0
_output_shapes
:�����������
Model_B/conv2d_8/mul_1Mul!Model_B/conv2d_8/BiasAdd:output:0Model_B/conv2d_8/Sigmoid:y:0*
T0*0
_output_shapes
:����������|
Model_B/conv2d_8/IdentityIdentityModel_B/conv2d_8/mul_1:z:0*
T0*0
_output_shapes
:�����������
Model_B/conv2d_8/IdentityN	IdentityNModel_B/conv2d_8/mul_1:z:0!Model_B/conv2d_8/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786889*L
_output_shapes:
8:����������:�����������
,Model_B/batch_normalization_3/ReadVariableOpReadVariableOp5model_b_batch_normalization_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.Model_B/batch_normalization_3/ReadVariableOp_1ReadVariableOp7model_b_batch_normalization_3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
=Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_b_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
?Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_b_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
.Model_B/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3#Model_B/conv2d_8/IdentityN:output:04Model_B/batch_normalization_3/ReadVariableOp:value:06Model_B/batch_normalization_3/ReadVariableOp_1:value:0EModel_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0GModel_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
&Model_B/conv2d_9/Conv2D/ReadVariableOpReadVariableOp/model_b_conv2d_9_conv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Model_B/conv2d_9/Conv2DConv2D2Model_B/batch_normalization_3/FusedBatchNormV3:y:0.Model_B/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
'Model_B/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp0model_b_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Model_B/conv2d_9/BiasAddBiasAdd Model_B/conv2d_9/Conv2D:output:0/Model_B/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@Z
Model_B/conv2d_9/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_9/mulMulModel_B/conv2d_9/beta:output:0!Model_B/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:���������@w
Model_B/conv2d_9/SigmoidSigmoidModel_B/conv2d_9/mul:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_9/mul_1Mul!Model_B/conv2d_9/BiasAdd:output:0Model_B/conv2d_9/Sigmoid:y:0*
T0*/
_output_shapes
:���������@{
Model_B/conv2d_9/IdentityIdentityModel_B/conv2d_9/mul_1:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_9/IdentityN	IdentityNModel_B/conv2d_9/mul_1:z:0!Model_B/conv2d_9/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786917*J
_output_shapes8
6:���������@:���������@�
'Model_B/conv2d_10/Conv2D/ReadVariableOpReadVariableOp0model_b_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Model_B/conv2d_10/Conv2DConv2D#Model_B/conv2d_9/IdentityN:output:0/Model_B/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
(Model_B/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp1model_b_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Model_B/conv2d_10/BiasAddBiasAdd!Model_B/conv2d_10/Conv2D:output:00Model_B/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� [
Model_B/conv2d_10/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_10/mulMulModel_B/conv2d_10/beta:output:0"Model_B/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:��������� y
Model_B/conv2d_10/SigmoidSigmoidModel_B/conv2d_10/mul:z:0*
T0*/
_output_shapes
:��������� �
Model_B/conv2d_10/mul_1Mul"Model_B/conv2d_10/BiasAdd:output:0Model_B/conv2d_10/Sigmoid:y:0*
T0*/
_output_shapes
:��������� }
Model_B/conv2d_10/IdentityIdentityModel_B/conv2d_10/mul_1:z:0*
T0*/
_output_shapes
:��������� �
Model_B/conv2d_10/IdentityN	IdentityNModel_B/conv2d_10/mul_1:z:0"Model_B/conv2d_10/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786931*J
_output_shapes8
6:��������� :��������� �
'Model_B/conv2d_11/Conv2D/ReadVariableOpReadVariableOp0model_b_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Model_B/conv2d_11/Conv2DConv2D$Model_B/conv2d_10/IdentityN:output:0/Model_B/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
(Model_B/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp1model_b_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Model_B/conv2d_11/BiasAddBiasAdd!Model_B/conv2d_11/Conv2D:output:00Model_B/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@[
Model_B/conv2d_11/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/conv2d_11/mulMulModel_B/conv2d_11/beta:output:0"Model_B/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:���������@y
Model_B/conv2d_11/SigmoidSigmoidModel_B/conv2d_11/mul:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_11/mul_1Mul"Model_B/conv2d_11/BiasAdd:output:0Model_B/conv2d_11/Sigmoid:y:0*
T0*/
_output_shapes
:���������@}
Model_B/conv2d_11/IdentityIdentityModel_B/conv2d_11/mul_1:z:0*
T0*/
_output_shapes
:���������@�
Model_B/conv2d_11/IdentityN	IdentityNModel_B/conv2d_11/mul_1:z:0"Model_B/conv2d_11/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786945*J
_output_shapes8
6:���������@:���������@�
,Model_B/batch_normalization_4/ReadVariableOpReadVariableOp5model_b_batch_normalization_4_readvariableop_resource*
_output_shapes
:@*
dtype0�
.Model_B/batch_normalization_4/ReadVariableOp_1ReadVariableOp7model_b_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
=Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_b_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
?Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_b_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
.Model_B/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3$Model_B/conv2d_11/IdentityN:output:04Model_B/batch_normalization_4/ReadVariableOp:value:06Model_B/batch_normalization_4/ReadVariableOp_1:value:0EModel_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0GModel_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
Model_B/dropout/IdentityIdentity2Model_B/batch_normalization_4/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@f
Model_B/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 1  �
Model_B/flatten/ReshapeReshape!Model_B/dropout/Identity:output:0Model_B/flatten/Const:output:0*
T0*(
_output_shapes
:����������b�
%Model_B/dense_1/MatMul/ReadVariableOpReadVariableOp.model_b_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
�b�*
dtype0�
Model_B/dense_1/MatMulMatMul Model_B/flatten/Reshape:output:0-Model_B/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&Model_B/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_b_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Model_B/dense_1/BiasAddBiasAdd Model_B/dense_1/MatMul:product:0.Model_B/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
Model_B/dense_1/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Model_B/dense_1/mulMulModel_B/dense_1/beta:output:0 Model_B/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������n
Model_B/dense_1/SigmoidSigmoidModel_B/dense_1/mul:z:0*
T0*(
_output_shapes
:�����������
Model_B/dense_1/mul_1Mul Model_B/dense_1/BiasAdd:output:0Model_B/dense_1/Sigmoid:y:0*
T0*(
_output_shapes
:����������r
Model_B/dense_1/IdentityIdentityModel_B/dense_1/mul_1:z:0*
T0*(
_output_shapes
:�����������
Model_B/dense_1/IdentityN	IdentityNModel_B/dense_1/mul_1:z:0 Model_B/dense_1/BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-786976*<
_output_shapes*
(:����������:�����������
6Model_B/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp?model_b_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0r
-Model_B/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+Model_B/batch_normalization_5/batchnorm/addAddV2>Model_B/batch_normalization_5/batchnorm/ReadVariableOp:value:06Model_B/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
-Model_B/batch_normalization_5/batchnorm/RsqrtRsqrt/Model_B/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:��
:Model_B/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_b_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+Model_B/batch_normalization_5/batchnorm/mulMul1Model_B/batch_normalization_5/batchnorm/Rsqrt:y:0BModel_B/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
-Model_B/batch_normalization_5/batchnorm/mul_1Mul"Model_B/dense_1/IdentityN:output:0/Model_B/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
8Model_B/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_b_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
-Model_B/batch_normalization_5/batchnorm/mul_2Mul@Model_B/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0/Model_B/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
8Model_B/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_b_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
+Model_B/batch_normalization_5/batchnorm/subSub@Model_B/batch_normalization_5/batchnorm/ReadVariableOp_2:value:01Model_B/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
-Model_B/batch_normalization_5/batchnorm/add_1AddV21Model_B/batch_normalization_5/batchnorm/mul_1:z:0/Model_B/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
%Model_B/dense_2/MatMul/ReadVariableOpReadVariableOp.model_b_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
Model_B/dense_2/MatMulMatMul1Model_B/batch_normalization_5/batchnorm/add_1:z:0-Model_B/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
&Model_B/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_b_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
Model_B/dense_2/BiasAddBiasAdd Model_B/dense_2/MatMul:product:0.Model_B/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
v
Model_B/dense_2/SoftmaxSoftmax Model_B/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������
p
IdentityIdentity!Model_B/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp<^Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp>^Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp_1+^Model_B/batch_normalization/ReadVariableOp-^Model_B/batch_normalization/ReadVariableOp_1>^Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@^Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1-^Model_B/batch_normalization_1/ReadVariableOp/^Model_B/batch_normalization_1/ReadVariableOp_1>^Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp@^Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1-^Model_B/batch_normalization_2/ReadVariableOp/^Model_B/batch_normalization_2/ReadVariableOp_1>^Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp@^Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1-^Model_B/batch_normalization_3/ReadVariableOp/^Model_B/batch_normalization_3/ReadVariableOp_1>^Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp@^Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1-^Model_B/batch_normalization_4/ReadVariableOp/^Model_B/batch_normalization_4/ReadVariableOp_17^Model_B/batch_normalization_5/batchnorm/ReadVariableOp9^Model_B/batch_normalization_5/batchnorm/ReadVariableOp_19^Model_B/batch_normalization_5/batchnorm/ReadVariableOp_2;^Model_B/batch_normalization_5/batchnorm/mul/ReadVariableOp&^Model_B/conv2d/BiasAdd/ReadVariableOp%^Model_B/conv2d/Conv2D/ReadVariableOp(^Model_B/conv2d_1/BiasAdd/ReadVariableOp'^Model_B/conv2d_1/Conv2D/ReadVariableOp)^Model_B/conv2d_10/BiasAdd/ReadVariableOp(^Model_B/conv2d_10/Conv2D/ReadVariableOp)^Model_B/conv2d_11/BiasAdd/ReadVariableOp(^Model_B/conv2d_11/Conv2D/ReadVariableOp(^Model_B/conv2d_2/BiasAdd/ReadVariableOp'^Model_B/conv2d_2/Conv2D/ReadVariableOp(^Model_B/conv2d_3/BiasAdd/ReadVariableOp'^Model_B/conv2d_3/Conv2D/ReadVariableOp(^Model_B/conv2d_4/BiasAdd/ReadVariableOp'^Model_B/conv2d_4/Conv2D/ReadVariableOp(^Model_B/conv2d_5/BiasAdd/ReadVariableOp'^Model_B/conv2d_5/Conv2D/ReadVariableOp(^Model_B/conv2d_6/BiasAdd/ReadVariableOp'^Model_B/conv2d_6/Conv2D/ReadVariableOp(^Model_B/conv2d_7/BiasAdd/ReadVariableOp'^Model_B/conv2d_7/Conv2D/ReadVariableOp(^Model_B/conv2d_8/BiasAdd/ReadVariableOp'^Model_B/conv2d_8/Conv2D/ReadVariableOp(^Model_B/conv2d_9/BiasAdd/ReadVariableOp'^Model_B/conv2d_9/Conv2D/ReadVariableOp%^Model_B/dense/BiasAdd/ReadVariableOp'^Model_B/dense/Tensordot/ReadVariableOp'^Model_B/dense_1/BiasAdd/ReadVariableOp&^Model_B/dense_1/MatMul/ReadVariableOp'^Model_B/dense_2/BiasAdd/ReadVariableOp&^Model_B/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2z
;Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp;Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp2~
=Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp_1=Model_B/batch_normalization/FusedBatchNormV3/ReadVariableOp_12X
*Model_B/batch_normalization/ReadVariableOp*Model_B/batch_normalization/ReadVariableOp2\
,Model_B/batch_normalization/ReadVariableOp_1,Model_B/batch_normalization/ReadVariableOp_12~
=Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp=Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
?Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?Model_B/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12\
,Model_B/batch_normalization_1/ReadVariableOp,Model_B/batch_normalization_1/ReadVariableOp2`
.Model_B/batch_normalization_1/ReadVariableOp_1.Model_B/batch_normalization_1/ReadVariableOp_12~
=Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp=Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
?Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?Model_B/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12\
,Model_B/batch_normalization_2/ReadVariableOp,Model_B/batch_normalization_2/ReadVariableOp2`
.Model_B/batch_normalization_2/ReadVariableOp_1.Model_B/batch_normalization_2/ReadVariableOp_12~
=Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp=Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2�
?Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?Model_B/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12\
,Model_B/batch_normalization_3/ReadVariableOp,Model_B/batch_normalization_3/ReadVariableOp2`
.Model_B/batch_normalization_3/ReadVariableOp_1.Model_B/batch_normalization_3/ReadVariableOp_12~
=Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp=Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2�
?Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?Model_B/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12\
,Model_B/batch_normalization_4/ReadVariableOp,Model_B/batch_normalization_4/ReadVariableOp2`
.Model_B/batch_normalization_4/ReadVariableOp_1.Model_B/batch_normalization_4/ReadVariableOp_12p
6Model_B/batch_normalization_5/batchnorm/ReadVariableOp6Model_B/batch_normalization_5/batchnorm/ReadVariableOp2t
8Model_B/batch_normalization_5/batchnorm/ReadVariableOp_18Model_B/batch_normalization_5/batchnorm/ReadVariableOp_12t
8Model_B/batch_normalization_5/batchnorm/ReadVariableOp_28Model_B/batch_normalization_5/batchnorm/ReadVariableOp_22x
:Model_B/batch_normalization_5/batchnorm/mul/ReadVariableOp:Model_B/batch_normalization_5/batchnorm/mul/ReadVariableOp2N
%Model_B/conv2d/BiasAdd/ReadVariableOp%Model_B/conv2d/BiasAdd/ReadVariableOp2L
$Model_B/conv2d/Conv2D/ReadVariableOp$Model_B/conv2d/Conv2D/ReadVariableOp2R
'Model_B/conv2d_1/BiasAdd/ReadVariableOp'Model_B/conv2d_1/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_1/Conv2D/ReadVariableOp&Model_B/conv2d_1/Conv2D/ReadVariableOp2T
(Model_B/conv2d_10/BiasAdd/ReadVariableOp(Model_B/conv2d_10/BiasAdd/ReadVariableOp2R
'Model_B/conv2d_10/Conv2D/ReadVariableOp'Model_B/conv2d_10/Conv2D/ReadVariableOp2T
(Model_B/conv2d_11/BiasAdd/ReadVariableOp(Model_B/conv2d_11/BiasAdd/ReadVariableOp2R
'Model_B/conv2d_11/Conv2D/ReadVariableOp'Model_B/conv2d_11/Conv2D/ReadVariableOp2R
'Model_B/conv2d_2/BiasAdd/ReadVariableOp'Model_B/conv2d_2/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_2/Conv2D/ReadVariableOp&Model_B/conv2d_2/Conv2D/ReadVariableOp2R
'Model_B/conv2d_3/BiasAdd/ReadVariableOp'Model_B/conv2d_3/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_3/Conv2D/ReadVariableOp&Model_B/conv2d_3/Conv2D/ReadVariableOp2R
'Model_B/conv2d_4/BiasAdd/ReadVariableOp'Model_B/conv2d_4/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_4/Conv2D/ReadVariableOp&Model_B/conv2d_4/Conv2D/ReadVariableOp2R
'Model_B/conv2d_5/BiasAdd/ReadVariableOp'Model_B/conv2d_5/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_5/Conv2D/ReadVariableOp&Model_B/conv2d_5/Conv2D/ReadVariableOp2R
'Model_B/conv2d_6/BiasAdd/ReadVariableOp'Model_B/conv2d_6/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_6/Conv2D/ReadVariableOp&Model_B/conv2d_6/Conv2D/ReadVariableOp2R
'Model_B/conv2d_7/BiasAdd/ReadVariableOp'Model_B/conv2d_7/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_7/Conv2D/ReadVariableOp&Model_B/conv2d_7/Conv2D/ReadVariableOp2R
'Model_B/conv2d_8/BiasAdd/ReadVariableOp'Model_B/conv2d_8/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_8/Conv2D/ReadVariableOp&Model_B/conv2d_8/Conv2D/ReadVariableOp2R
'Model_B/conv2d_9/BiasAdd/ReadVariableOp'Model_B/conv2d_9/BiasAdd/ReadVariableOp2P
&Model_B/conv2d_9/Conv2D/ReadVariableOp&Model_B/conv2d_9/Conv2D/ReadVariableOp2L
$Model_B/dense/BiasAdd/ReadVariableOp$Model_B/dense/BiasAdd/ReadVariableOp2P
&Model_B/dense/Tensordot/ReadVariableOp&Model_B/dense/Tensordot/ReadVariableOp2P
&Model_B/dense_1/BiasAdd/ReadVariableOp&Model_B/dense_1/BiasAdd/ReadVariableOp2N
%Model_B/dense_1/MatMul/ReadVariableOp%Model_B/dense_1/MatMul/ReadVariableOp2P
&Model_B/dense_2/BiasAdd/ReadVariableOp&Model_B/dense_2/BiasAdd/ReadVariableOp2N
%Model_B/dense_2/MatMul/ReadVariableOp%Model_B/dense_2/MatMul/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
z
#__inference_internal_grad_fn_791591
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_790580

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790572*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_791411
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
z
#__inference_internal_grad_fn_791447
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_787029

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_787233

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792239
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� ]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_787777

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:��������� �
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787769*J
_output_shapes8
6:��������� :��������� k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792257
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitym
mulMulmul_betamul_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������^
mul_1Mulmul_betamul_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791627
result_grads_0
result_grads_1
mul_conv2d_beta
mul_conv2d_biasadd
identityz
mulMulmul_conv2d_betamul_conv2d_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@k
mul_1Mulmul_conv2d_betamul_conv2d_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
#__inference_internal_grad_fn_791231
result_grads_0
result_grads_1
mul_model_b_dense_beta
mul_model_b_dense_biasadd
identity�
mulMulmul_model_b_dense_betamul_model_b_dense_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� y
mul_1Mulmul_model_b_dense_betamul_model_b_dense_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_787093

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792203
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
z
#__inference_internal_grad_fn_791519
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
B__inference_conv2d_layer_call_and_return_conditional_losses_789978

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-789970*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_792005
result_grads_0
result_grads_1
mul_conv2d_6_beta
mul_conv2d_6_biasadd
identity
mulMulmul_conv2d_6_betamul_conv2d_6_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������p
mul_1Mulmul_conv2d_6_betamul_conv2d_6_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791735
result_grads_0
result_grads_1
mul_dense_beta
mul_dense_biasadd
identityx
mulMulmul_dense_betamul_dense_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� i
mul_1Mulmul_dense_betamul_dense_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
z
#__inference_internal_grad_fn_791609
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitye
mulMulmul_betamul_biasadd^result_grads_0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:����������V
mul_1Mulmul_betamul_biasadd*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������S
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:����������U
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:����������Z
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:����������R
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*Q
_input_shapes@
>:����������:����������: :����������:X T
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:����������
ԃ
�
C__inference_Model_B_layer_call_and_return_conditional_losses_787882

inputs'
conv2d_787457:@
conv2d_787459:@)
conv2d_1_787481:@ 
conv2d_1_787483: )
conv2d_2_787505: @
conv2d_2_787507:@(
batch_normalization_787510:@(
batch_normalization_787512:@(
batch_normalization_787514:@(
batch_normalization_787516:@*
conv2d_3_787538:@�
conv2d_3_787540:	�*
conv2d_4_787562:�@
conv2d_4_787564:@*
conv2d_5_787586:@�
conv2d_5_787588:	�+
batch_normalization_1_787591:	�+
batch_normalization_1_787593:	�+
batch_normalization_1_787595:	�+
batch_normalization_1_787597:	�
dense_787640:	� 
dense_787642: *
batch_normalization_2_787645: *
batch_normalization_2_787647: *
batch_normalization_2_787649: *
batch_normalization_2_787651: *
conv2d_6_787673: �
conv2d_6_787675:	�*
conv2d_7_787697:�@
conv2d_7_787699:@*
conv2d_8_787721:@�
conv2d_8_787723:	�+
batch_normalization_3_787726:	�+
batch_normalization_3_787728:	�+
batch_normalization_3_787730:	�+
batch_normalization_3_787732:	�*
conv2d_9_787754:�@
conv2d_9_787756:@*
conv2d_10_787778:@ 
conv2d_10_787780: *
conv2d_11_787802: @
conv2d_11_787804:@*
batch_normalization_4_787807:@*
batch_normalization_4_787809:@*
batch_normalization_4_787811:@*
batch_normalization_4_787813:@"
dense_1_787850:
�b�
dense_1_787852:	�+
batch_normalization_5_787855:	�+
batch_normalization_5_787857:	�+
batch_normalization_5_787859:	�+
batch_normalization_5_787861:	�!
dense_2_787876:	�

dense_2_787878:

identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
rescaling/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_787436�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_787457conv2d_787459*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_787456�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_787481conv2d_1_787483*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_787480�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_787505conv2d_2_787507*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_787504�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_787510batch_normalization_787512batch_normalization_787514batch_normalization_787516*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_787029�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_3_787538conv2d_3_787540*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_787537�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_787562conv2d_4_787564*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_787561�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_787586conv2d_5_787588*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_787585�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_1_787591batch_normalization_1_787593batch_normalization_1_787595batch_normalization_1_787597*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_787093�
max_pooling2d/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_787144�
dense/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0dense_787640dense_787642*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_787639�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_2_787645batch_normalization_2_787647batch_normalization_2_787649batch_normalization_2_787651*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_787169�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_6_787673conv2d_6_787675*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_787672�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_787697conv2d_7_787699*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_787696�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_787721conv2d_8_787723*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_787720�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_3_787726batch_normalization_3_787728batch_normalization_3_787730batch_normalization_3_787732*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_787233�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_9_787754conv2d_9_787756*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_787753�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_787778conv2d_10_787780*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_787777�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_787802conv2d_11_787804*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_787801�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_4_787807batch_normalization_4_787809batch_normalization_4_787811batch_normalization_4_787813*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_787297�
dropout/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_787821�
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_787829�
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_787850dense_1_787852*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_787849�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_5_787855batch_normalization_5_787857batch_normalization_5_787859batch_normalization_5_787861*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_787363�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_2_787876dense_2_787878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_787875w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_790076

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791861
result_grads_0
result_grads_1
mul_dense_1_beta
mul_dense_1_biasadd
identityu
mulMulmul_dense_1_betamul_dense_1_biasadd^result_grads_0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:����������f
mul_1Mulmul_dense_1_betamul_dense_1_biasadd*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������S
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:����������U
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:����������Z
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:����������R
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*Q
_input_shapes@
>:����������:����������: :����������:X T
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:����������
�%
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_787410

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791753
result_grads_0
result_grads_1
mul_conv2d_6_beta
mul_conv2d_6_biasadd
identity
mulMulmul_conv2d_6_betamul_conv2d_6_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������p
mul_1Mulmul_conv2d_6_betamul_conv2d_6_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791303
result_grads_0
result_grads_1
mul_model_b_conv2d_9_beta 
mul_model_b_conv2d_9_biasadd
identity�
mulMulmul_model_b_conv2d_9_betamul_model_b_conv2d_9_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@
mul_1Mulmul_model_b_conv2d_9_betamul_model_b_conv2d_9_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
z
#__inference_internal_grad_fn_792185
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitym
mulMulmul_betamul_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������^
mul_1Mulmul_betamul_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791843
result_grads_0
result_grads_1
mul_conv2d_11_beta
mul_conv2d_11_biasadd
identity�
mulMulmul_conv2d_11_betamul_conv2d_11_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@q
mul_1Mulmul_conv2d_11_betamul_conv2d_11_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_790499

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
(__inference_Model_B_layer_call_fn_789275

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@�

unknown_10:	�%

unknown_11:�@

unknown_12:@%

unknown_13:@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	� 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: %

unknown_25: �

unknown_26:	�%

unknown_27:�@

unknown_28:@%

unknown_29:@�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�%

unknown_35:�@

unknown_36:@$

unknown_37:@ 

unknown_38: $

unknown_39: @

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:
�b�

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:	�


unknown_52:

identity��StatefulPartitionedCall�
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*L
_read_only_resource_inputs.
,* !"%&'()*+,/03456*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Model_B_layer_call_and_return_conditional_losses_788430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�!
�
A__inference_dense_layer_call_and_return_conditional_losses_787639

inputs4
!tensordot_readvariableop_resource:	� -
biasadd_readvariableop_resource: 

identity_1��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	� *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:~
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:�����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:��������� �
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787631*J
_output_shapes8
6:��������� :��������� k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:��������� z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_787363

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_2_layer_call_fn_790320

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_787200�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791213
result_grads_0
result_grads_1
mul_model_b_conv2d_5_beta 
mul_model_b_conv2d_5_biasadd
identity�
mulMulmul_model_b_conv2d_5_betamul_model_b_conv2d_5_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:�����������
mul_1Mulmul_model_b_conv2d_5_betamul_model_b_conv2d_5_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791681
result_grads_0
result_grads_1
mul_conv2d_3_beta
mul_conv2d_3_biasadd
identity
mulMulmul_conv2d_3_betamul_conv2d_3_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������p
mul_1Mulmul_conv2d_3_betamul_conv2d_3_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
B__inference_conv2d_layer_call_and_return_conditional_losses_787456

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787448*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_787504

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787496*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791267
result_grads_0
result_grads_1
mul_model_b_conv2d_7_beta 
mul_model_b_conv2d_7_biasadd
identity�
mulMulmul_model_b_conv2d_7_betamul_model_b_conv2d_7_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@
mul_1Mulmul_model_b_conv2d_7_betamul_model_b_conv2d_7_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
z
#__inference_internal_grad_fn_792221
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitym
mulMulmul_betamul_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������^
mul_1Mulmul_betamul_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
z
#__inference_internal_grad_fn_792293
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitym
mulMulmul_betamul_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������^
mul_1Mulmul_betamul_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791915
result_grads_0
result_grads_1
mul_conv2d_2_beta
mul_conv2d_2_biasadd
identity~
mulMulmul_conv2d_2_betamul_conv2d_2_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@o
mul_1Mulmul_conv2d_2_betamul_conv2d_2_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_790247

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
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
#__inference_internal_grad_fn_791339
result_grads_0
result_grads_1
mul_model_b_conv2d_11_beta!
mul_model_b_conv2d_11_biasadd
identity�
mulMulmul_model_b_conv2d_11_betamul_model_b_conv2d_11_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@�
mul_1Mulmul_model_b_conv2d_11_betamul_model_b_conv2d_11_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
#__inference_internal_grad_fn_791969
result_grads_0
result_grads_1
mul_conv2d_5_beta
mul_conv2d_5_biasadd
identity
mulMulmul_conv2d_5_betamul_conv2d_5_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������p
mul_1Mulmul_conv2d_5_betamul_conv2d_5_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
C__inference_dense_1_layer_call_and_return_conditional_losses_790707

inputs2
matmul_readvariableop_resource:
�b�.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�b�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
mulMulbeta:output:0BiasAdd:output:0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:����������^
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������R
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790699*<
_output_shapes*
(:����������:����������d

Identity_1IdentityIdentityN:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������b
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792347
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
#__inference_internal_grad_fn_791195
result_grads_0
result_grads_1
mul_model_b_conv2d_4_beta 
mul_model_b_conv2d_4_biasadd
identity�
mulMulmul_model_b_conv2d_4_betamul_model_b_conv2d_4_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@
mul_1Mulmul_model_b_conv2d_4_betamul_model_b_conv2d_4_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_790481

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
a
(__inference_dropout_layer_call_fn_790652

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_788039w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791321
result_grads_0
result_grads_1
mul_model_b_conv2d_10_beta!
mul_model_b_conv2d_10_biasadd
identity�
mulMulmul_model_b_conv2d_10_betamul_model_b_conv2d_10_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� �
mul_1Mulmul_model_b_conv2d_10_betamul_model_b_conv2d_10_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_790624

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791789
result_grads_0
result_grads_1
mul_conv2d_8_beta
mul_conv2d_8_biasadd
identity
mulMulmul_conv2d_8_betamul_conv2d_8_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������p
mul_1Mulmul_conv2d_8_betamul_conv2d_8_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�	
�
6__inference_batch_normalization_1_layer_call_fn_790201

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_787124�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791357
result_grads_0
result_grads_1
mul_model_b_dense_1_beta
mul_model_b_dense_1_biasadd
identity�
mulMulmul_model_b_dense_1_betamul_model_b_dense_1_biasadd^result_grads_0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:����������v
mul_1Mulmul_model_b_dense_1_betamul_model_b_dense_1_biasadd*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������S
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:����������U
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:����������Z
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:����������R
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*Q
_input_shapes@
>:����������:����������: :����������:X T
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791771
result_grads_0
result_grads_1
mul_conv2d_7_beta
mul_conv2d_7_biasadd
identity~
mulMulmul_conv2d_7_betamul_conv2d_7_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@o
mul_1Mulmul_conv2d_7_betamul_conv2d_7_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
C__inference_Model_B_layer_call_and_return_conditional_losses_788928
input_1'
conv2d_788795:@
conv2d_788797:@)
conv2d_1_788800:@ 
conv2d_1_788802: )
conv2d_2_788805: @
conv2d_2_788807:@(
batch_normalization_788810:@(
batch_normalization_788812:@(
batch_normalization_788814:@(
batch_normalization_788816:@*
conv2d_3_788819:@�
conv2d_3_788821:	�*
conv2d_4_788824:�@
conv2d_4_788826:@*
conv2d_5_788829:@�
conv2d_5_788831:	�+
batch_normalization_1_788834:	�+
batch_normalization_1_788836:	�+
batch_normalization_1_788838:	�+
batch_normalization_1_788840:	�
dense_788844:	� 
dense_788846: *
batch_normalization_2_788849: *
batch_normalization_2_788851: *
batch_normalization_2_788853: *
batch_normalization_2_788855: *
conv2d_6_788858: �
conv2d_6_788860:	�*
conv2d_7_788863:�@
conv2d_7_788865:@*
conv2d_8_788868:@�
conv2d_8_788870:	�+
batch_normalization_3_788873:	�+
batch_normalization_3_788875:	�+
batch_normalization_3_788877:	�+
batch_normalization_3_788879:	�*
conv2d_9_788882:�@
conv2d_9_788884:@*
conv2d_10_788887:@ 
conv2d_10_788889: *
conv2d_11_788892: @
conv2d_11_788894:@*
batch_normalization_4_788897:@*
batch_normalization_4_788899:@*
batch_normalization_4_788901:@*
batch_normalization_4_788903:@"
dense_1_788908:
�b�
dense_1_788910:	�+
batch_normalization_5_788913:	�+
batch_normalization_5_788915:	�+
batch_normalization_5_788917:	�+
batch_normalization_5_788919:	�!
dense_2_788922:	�

dense_2_788924:

identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�-batch_normalization_4/StatefulPartitionedCall�-batch_normalization_5/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�!conv2d_10/StatefulPartitionedCall�!conv2d_11/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall� conv2d_9/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dropout/StatefulPartitionedCall�
rescaling/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_787436�
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_788795conv2d_788797*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_787456�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_788800conv2d_1_788802*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_787480�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_788805conv2d_2_788807*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_787504�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_788810batch_normalization_788812batch_normalization_788814batch_normalization_788816*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_787060�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_3_788819conv2d_3_788821*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_787537�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_788824conv2d_4_788826*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_787561�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_788829conv2d_5_788831*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_787585�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_1_788834batch_normalization_1_788836batch_normalization_1_788838batch_normalization_1_788840*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_787124�
max_pooling2d/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_787144�
dense/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0dense_788844dense_788846*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_787639�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_2_788849batch_normalization_2_788851batch_normalization_2_788853batch_normalization_2_788855*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_787200�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_6_788858conv2d_6_788860*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_787672�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_788863conv2d_7_788865*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_787696�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_788868conv2d_8_788870*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_787720�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_3_788873batch_normalization_3_788875batch_normalization_3_788877batch_normalization_3_788879*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_787264�
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_9_788882conv2d_9_788884*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_787753�
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_788887conv2d_10_788889*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_787777�
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_788892conv2d_11_788894*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_787801�
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0batch_normalization_4_788897batch_normalization_4_788899batch_normalization_4_788901batch_normalization_4_788903*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_787328�
dropout/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_788039�
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_787829�
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_788908dense_1_788910*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_787849�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_5_788913batch_normalization_5_788915batch_normalization_5_788917batch_normalization_5_788919*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_787410�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_2_788922dense_2_788924*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_787875w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
'__inference_conv2d_layer_call_fn_789960

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_787456w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_9_layer_call_and_return_conditional_losses_790526

inputs9
conv2d_readvariableop_resource:�@-
biasadd_readvariableop_resource:@

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:���������@�
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790518*J
_output_shapes8
6:���������@:���������@k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792275
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_790642

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_3_layer_call_fn_790463

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_787264�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
(__inference_Model_B_layer_call_fn_788654
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@�

unknown_10:	�%

unknown_11:�@

unknown_12:@%

unknown_13:@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	� 

unknown_20: 

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: %

unknown_25: �

unknown_26:	�%

unknown_27:�@

unknown_28:@%

unknown_29:@�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�%

unknown_35:�@

unknown_36:@$

unknown_37:@ 

unknown_38: $

unknown_39: @

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@

unknown_44:@

unknown_45:
�b�

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:	�


unknown_52:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*L
_read_only_resource_inputs.
,* !"%&'()*+,/03456*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Model_B_layer_call_and_return_conditional_losses_788430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
)__inference_conv2d_4_layer_call_fn_790130

inputs"
unknown:�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_787561w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_790753

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_790219

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791249
result_grads_0
result_grads_1
mul_model_b_conv2d_6_beta 
mul_model_b_conv2d_6_biasadd
identity�
mulMulmul_model_b_conv2d_6_betamul_model_b_conv2d_6_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:�����������
mul_1Mulmul_model_b_conv2d_6_betamul_model_b_conv2d_6_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791879
result_grads_0
result_grads_1
mul_conv2d_beta
mul_conv2d_biasadd
identityz
mulMulmul_conv2d_betamul_conv2d_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@k
mul_1Mulmul_conv2d_betamul_conv2d_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_790657

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791825
result_grads_0
result_grads_1
mul_conv2d_10_beta
mul_conv2d_10_biasadd
identity�
mulMulmul_conv2d_10_betamul_conv2d_10_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� q
mul_1Mulmul_conv2d_10_betamul_conv2d_10_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_790383

inputs9
conv2d_readvariableop_resource: �.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
: �*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mulMulbeta:output:0BiasAdd:output:0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������f
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_1:z:0*
T0*0
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-790375*L
_output_shapes:
8:����������:����������l

Identity_1IdentityIdentityN:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_787169

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791123
result_grads_0
result_grads_1
mul_model_b_conv2d_beta
mul_model_b_conv2d_biasadd
identity�
mulMulmul_model_b_conv2d_betamul_model_b_conv2d_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@{
mul_1Mulmul_model_b_conv2d_betamul_model_b_conv2d_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�	
�
6__inference_batch_normalization_2_layer_call_fn_790307

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_787169�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_787537

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mulMulbeta:output:0BiasAdd:output:0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������f
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_1:z:0*
T0*0
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787529*L
_output_shapes:
8:����������:����������l

Identity_1IdentityIdentityN:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_790787

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791141
result_grads_0
result_grads_1
mul_model_b_conv2d_1_beta 
mul_model_b_conv2d_1_biasadd
identity�
mulMulmul_model_b_conv2d_1_betamul_model_b_conv2d_1_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� 
mul_1Mulmul_model_b_conv2d_1_betamul_model_b_conv2d_1_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� 
�
�
)__inference_conv2d_8_layer_call_fn_790419

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_787720x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_792023
result_grads_0
result_grads_1
mul_conv2d_7_beta
mul_conv2d_7_biasadd
identity~
mulMulmul_conv2d_7_betamul_conv2d_7_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@o
mul_1Mulmul_conv2d_7_betamul_conv2d_7_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_790237

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_5_layer_call_fn_790157

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_787585x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792167
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
a
E__inference_rescaling_layer_call_and_return_conditional_losses_789951

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ]
mulMulinputsCast/x:output:0*
T0*/
_output_shapes
:���������b
addAddV2mul:z:0Cast_1/x:output:0*
T0*/
_output_shapes
:���������W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_791429
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitym
mulMulmul_betamul_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������^
mul_1Mulmul_betamul_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
z
#__inference_internal_grad_fn_791537
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitym
mulMulmul_betamul_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������^
mul_1Mulmul_betamul_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
D
(__inference_flatten_layer_call_fn_790674

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
:����������b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_787829a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_787585

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
mulMulbeta:output:0BiasAdd:output:0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:����������f
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_1:z:0*
T0*0
_output_shapes
:�����������
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787577*L
_output_shapes:
8:����������:����������l

Identity_1IdentityIdentityN:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
(__inference_dense_2_layer_call_fn_790796

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_787875o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_792365
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitye
mulMulmul_betamul_biasadd^result_grads_0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:����������V
mul_1Mulmul_betamul_biasadd*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������S
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:����������U
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:����������Z
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:����������R
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*Q
_input_shapes@
>:����������:����������: :����������:X T
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:����������
�
�
#__inference_internal_grad_fn_791699
result_grads_0
result_grads_1
mul_conv2d_4_beta
mul_conv2d_4_biasadd
identity~
mulMulmul_conv2d_4_betamul_conv2d_4_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@o
mul_1Mulmul_conv2d_4_betamul_conv2d_4_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
�
&__inference_dense_layer_call_fn_790256

inputs
unknown:	� 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_787639w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_internal_grad_fn_791285
result_grads_0
result_grads_1
mul_model_b_conv2d_8_beta 
mul_model_b_conv2d_8_biasadd
identity�
mulMulmul_model_b_conv2d_8_betamul_model_b_conv2d_8_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:�����������
mul_1Mulmul_model_b_conv2d_8_betamul_model_b_conv2d_8_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_787480

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 

identity_1��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
mulMulbeta:output:0BiasAdd:output:0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� e
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_1:z:0*
T0*/
_output_shapes
:��������� �
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*,
_gradient_op_typeCustomGradient-787472*J
_output_shapes8
6:��������� :��������� k

Identity_1IdentityIdentityN:output:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
z
#__inference_internal_grad_fn_791555
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:���������@U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:���������@]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:���������@J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:���������@Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:���������@J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:���������@\
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:���������@a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:���������@Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*f
_input_shapesU
S:���������@:���������@: :���������@:_ [
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:���������@
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:���������@
�
D
(__inference_dropout_layer_call_fn_790647

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
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_787821h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_790356

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
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
�
�
#__inference_internal_grad_fn_791177
result_grads_0
result_grads_1
mul_model_b_conv2d_3_beta 
mul_model_b_conv2d_3_biasadd
identity�
mulMulmul_model_b_conv2d_3_betamul_model_b_conv2d_3_biasadd^result_grads_0*
T0*0
_output_shapes
:����������V
SigmoidSigmoidmul:z:0*
T0*0
_output_shapes
:�����������
mul_1Mulmul_model_b_conv2d_3_betamul_model_b_conv2d_3_biasadd*
T0*0
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
subSubsub/x:output:0Sigmoid:y:0*
T0*0
_output_shapes
:����������[
mul_2Mul	mul_1:z:0sub:z:0*
T0*0
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?b
addAddV2add/x:output:0	mul_2:z:0*
T0*0
_output_shapes
:����������]
mul_3MulSigmoid:y:0add:z:0*
T0*0
_output_shapes
:����������b
mul_4Mulresult_grads_0	mul_3:z:0*
T0*0
_output_shapes
:����������Z
IdentityIdentity	mul_4:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*i
_input_shapesX
V:����������:����������: :����������:` \
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:`\
0
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :62
0
_output_shapes
:����������
�
z
#__inference_internal_grad_fn_791393
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identityl
mulMulmul_betamul_biasadd^result_grads_0*
T0*/
_output_shapes
:��������� U
SigmoidSigmoidmul:z:0*
T0*/
_output_shapes
:��������� ]
mul_1Mulmul_betamul_biasadd*
T0*/
_output_shapes
:��������� J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
subSubsub/x:output:0Sigmoid:y:0*
T0*/
_output_shapes
:��������� Z
mul_2Mul	mul_1:z:0sub:z:0*
T0*/
_output_shapes
:��������� J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
addAddV2add/x:output:0	mul_2:z:0*
T0*/
_output_shapes
:��������� \
mul_3MulSigmoid:y:0add:z:0*
T0*/
_output_shapes
:��������� a
mul_4Mulresult_grads_0	mul_3:z:0*
T0*/
_output_shapes
:��������� Y
IdentityIdentity	mul_4:z:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*f
_input_shapesU
S:��������� :��������� : :��������� :_ [
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_0:_[
/
_output_shapes
:��������� 
(
_user_specified_nameresult_grads_1:

_output_shapes
: :51
/
_output_shapes
:��������� <
#__inference_internal_grad_fn_791123CustomGradient-786700<
#__inference_internal_grad_fn_791141CustomGradient-786714<
#__inference_internal_grad_fn_791159CustomGradient-786728<
#__inference_internal_grad_fn_791177CustomGradient-786756<
#__inference_internal_grad_fn_791195CustomGradient-786770<
#__inference_internal_grad_fn_791213CustomGradient-786784<
#__inference_internal_grad_fn_791231CustomGradient-786833<
#__inference_internal_grad_fn_791249CustomGradient-786861<
#__inference_internal_grad_fn_791267CustomGradient-786875<
#__inference_internal_grad_fn_791285CustomGradient-786889<
#__inference_internal_grad_fn_791303CustomGradient-786917<
#__inference_internal_grad_fn_791321CustomGradient-786931<
#__inference_internal_grad_fn_791339CustomGradient-786945<
#__inference_internal_grad_fn_791357CustomGradient-786976<
#__inference_internal_grad_fn_791375CustomGradient-787448<
#__inference_internal_grad_fn_791393CustomGradient-787472<
#__inference_internal_grad_fn_791411CustomGradient-787496<
#__inference_internal_grad_fn_791429CustomGradient-787529<
#__inference_internal_grad_fn_791447CustomGradient-787553<
#__inference_internal_grad_fn_791465CustomGradient-787577<
#__inference_internal_grad_fn_791483CustomGradient-787631<
#__inference_internal_grad_fn_791501CustomGradient-787664<
#__inference_internal_grad_fn_791519CustomGradient-787688<
#__inference_internal_grad_fn_791537CustomGradient-787712<
#__inference_internal_grad_fn_791555CustomGradient-787745<
#__inference_internal_grad_fn_791573CustomGradient-787769<
#__inference_internal_grad_fn_791591CustomGradient-787793<
#__inference_internal_grad_fn_791609CustomGradient-787841<
#__inference_internal_grad_fn_791627CustomGradient-789289<
#__inference_internal_grad_fn_791645CustomGradient-789303<
#__inference_internal_grad_fn_791663CustomGradient-789317<
#__inference_internal_grad_fn_791681CustomGradient-789345<
#__inference_internal_grad_fn_791699CustomGradient-789359<
#__inference_internal_grad_fn_791717CustomGradient-789373<
#__inference_internal_grad_fn_791735CustomGradient-789422<
#__inference_internal_grad_fn_791753CustomGradient-789450<
#__inference_internal_grad_fn_791771CustomGradient-789464<
#__inference_internal_grad_fn_791789CustomGradient-789478<
#__inference_internal_grad_fn_791807CustomGradient-789506<
#__inference_internal_grad_fn_791825CustomGradient-789520<
#__inference_internal_grad_fn_791843CustomGradient-789534<
#__inference_internal_grad_fn_791861CustomGradient-789565<
#__inference_internal_grad_fn_791879CustomGradient-789610<
#__inference_internal_grad_fn_791897CustomGradient-789624<
#__inference_internal_grad_fn_791915CustomGradient-789638<
#__inference_internal_grad_fn_791933CustomGradient-789666<
#__inference_internal_grad_fn_791951CustomGradient-789680<
#__inference_internal_grad_fn_791969CustomGradient-789694<
#__inference_internal_grad_fn_791987CustomGradient-789743<
#__inference_internal_grad_fn_792005CustomGradient-789771<
#__inference_internal_grad_fn_792023CustomGradient-789785<
#__inference_internal_grad_fn_792041CustomGradient-789799<
#__inference_internal_grad_fn_792059CustomGradient-789827<
#__inference_internal_grad_fn_792077CustomGradient-789841<
#__inference_internal_grad_fn_792095CustomGradient-789855<
#__inference_internal_grad_fn_792113CustomGradient-789893<
#__inference_internal_grad_fn_792131CustomGradient-789970<
#__inference_internal_grad_fn_792149CustomGradient-789997<
#__inference_internal_grad_fn_792167CustomGradient-790024<
#__inference_internal_grad_fn_792185CustomGradient-790113<
#__inference_internal_grad_fn_792203CustomGradient-790140<
#__inference_internal_grad_fn_792221CustomGradient-790167<
#__inference_internal_grad_fn_792239CustomGradient-790286<
#__inference_internal_grad_fn_792257CustomGradient-790375<
#__inference_internal_grad_fn_792275CustomGradient-790402<
#__inference_internal_grad_fn_792293CustomGradient-790429<
#__inference_internal_grad_fn_792311CustomGradient-790518<
#__inference_internal_grad_fn_792329CustomGradient-790545<
#__inference_internal_grad_fn_792347CustomGradient-790572<
#__inference_internal_grad_fn_792365CustomGradient-790699"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������;
dense_20
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer_with_weights-8
layer-11
layer_with_weights-9
layer-12
layer_with_weights-10
layer-13
layer_with_weights-11
layer-14
layer_with_weights-12
layer-15
layer_with_weights-13
layer-16
layer_with_weights-14
layer-17
layer_with_weights-15
layer-18
layer_with_weights-16
layer-19
layer_with_weights-17
layer-20
layer-21
layer-22
layer_with_weights-18
layer-23
layer_with_weights-19
layer-24
layer_with_weights-20
layer-25
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"	optimizer
#
signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias
 X_jit_compiled_convolution_op"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

_kernel
`bias
 a_jit_compiled_convolution_op"
_tf_keras_layer
�
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias
 j_jit_compiled_convolution_op"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	rgamma
sbeta
tmoving_mean
umoving_variance"
_tf_keras_layer
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
�
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
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
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
00
11
92
:3
B4
C5
L6
M7
N8
O9
V10
W11
_12
`13
h14
i15
r16
s17
t18
u19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53"
trackable_list_wrapper
�
00
11
92
:3
B4
C5
L6
M7
V8
W9
_10
`11
h12
i13
r14
s15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
(__inference_Model_B_layer_call_fn_787993
(__inference_Model_B_layer_call_fn_789162
(__inference_Model_B_layer_call_fn_789275
(__inference_Model_B_layer_call_fn_788654�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
C__inference_Model_B_layer_call_and_return_conditional_losses_789596
C__inference_Model_B_layer_call_and_return_conditional_losses_789938
C__inference_Model_B_layer_call_and_return_conditional_losses_788791
C__inference_Model_B_layer_call_and_return_conditional_losses_788928�
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
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
!__inference__wrapped_model_787007input_1"�
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
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate0m�1m�9m�:m�Bm�Cm�Lm�Mm�Vm�Wm�_m�`m�hm�im�rm�sm�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�0v�1v�9v�:v�Bv�Cv�Lv�Mv�Vv�Wv�_v�`v�hv�iv�rv�sv�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
-
�serving_default"
signature_map
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
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_rescaling_layer_call_fn_789943�
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
 z�trace_0
�
�trace_02�
E__inference_rescaling_layer_call_and_return_conditional_losses_789951�
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
 z�trace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_layer_call_fn_789960�
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
 z�trace_0
�
�trace_02�
B__inference_conv2d_layer_call_and_return_conditional_losses_789978�
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
 z�trace_0
':%@2conv2d/kernel
:@2conv2d/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_1_layer_call_fn_789987�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_790005�
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
 z�trace_0
):'@ 2conv2d_1/kernel
: 2conv2d_1/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_2_layer_call_fn_790014�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_790032�
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
 z�trace_0
):' @2conv2d_2/kernel
:@2conv2d_2/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
<
L0
M1
N2
O3"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_batch_normalization_layer_call_fn_790045
4__inference_batch_normalization_layer_call_fn_790058�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_790076
O__inference_batch_normalization_layer_call_and_return_conditional_losses_790094�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
':%@2batch_normalization/gamma
&:$@2batch_normalization/beta
/:-@ (2batch_normalization/moving_mean
3:1@ (2#batch_normalization/moving_variance
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_3_layer_call_fn_790103�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_790121�
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
 z�trace_0
*:(@�2conv2d_3/kernel
:�2conv2d_3/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_4_layer_call_fn_790130�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_790148�
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
 z�trace_0
*:(�@2conv2d_4/kernel
:@2conv2d_4/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_5_layer_call_fn_790157�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_790175�
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
 z�trace_0
*:(@�2conv2d_5/kernel
:�2conv2d_5/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
<
r0
s1
t2
u3"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_1_layer_call_fn_790188
6__inference_batch_normalization_1_layer_call_fn_790201�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_790219
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_790237�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_1/gamma
):'�2batch_normalization_1/beta
2:0� (2!batch_normalization_1/moving_mean
6:4� (2%batch_normalization_1/moving_variance
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
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_max_pooling2d_layer_call_fn_790242�
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
 z�trace_0
�
�trace_02�
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_790247�
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
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_layer_call_fn_790256�
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
 z�trace_0
�
�trace_02�
A__inference_dense_layer_call_and_return_conditional_losses_790294�
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
 z�trace_0
:	� 2dense/kernel
: 2
dense/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
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
�
�trace_0
�trace_12�
6__inference_batch_normalization_2_layer_call_fn_790307
6__inference_batch_normalization_2_layer_call_fn_790320�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_790338
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_790356�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):' 2batch_normalization_2/gamma
(:& 2batch_normalization_2/beta
1:/  (2!batch_normalization_2/moving_mean
5:3  (2%batch_normalization_2/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
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
�
�trace_02�
)__inference_conv2d_6_layer_call_fn_790365�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_790383�
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
 z�trace_0
*:( �2conv2d_6/kernel
:�2conv2d_6/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
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
�
�trace_02�
)__inference_conv2d_7_layer_call_fn_790392�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_790410�
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
 z�trace_0
*:(�@2conv2d_7/kernel
:@2conv2d_7/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_8_layer_call_fn_790419�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_790437�
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
 z�trace_0
*:(@�2conv2d_8/kernel
:�2conv2d_8/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_3_layer_call_fn_790450
6__inference_batch_normalization_3_layer_call_fn_790463�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_790481
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_790499�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_3/gamma
):'�2batch_normalization_3/beta
2:0� (2!batch_normalization_3/moving_mean
6:4� (2%batch_normalization_3/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_9_layer_call_fn_790508�
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
 z�trace_0
�
�trace_02�
D__inference_conv2d_9_layer_call_and_return_conditional_losses_790526�
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
 z�trace_0
*:(�@2conv2d_9/kernel
:@2conv2d_9/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_10_layer_call_fn_790535�
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
 z�trace_0
�
�trace_02�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_790553�
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
 z�trace_0
*:(@ 2conv2d_10/kernel
: 2conv2d_10/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_11_layer_call_fn_790562�
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
 z�trace_0
�
�trace_02�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_790580�
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
 z�trace_0
*:( @2conv2d_11/kernel
:@2conv2d_11/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_4_layer_call_fn_790593
6__inference_batch_normalization_4_layer_call_fn_790606�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_790624
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_790642�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'@2batch_normalization_4/gamma
(:&@2batch_normalization_4/beta
1:/@ (2!batch_normalization_4/moving_mean
5:3@ (2%batch_normalization_4/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_dropout_layer_call_fn_790647
(__inference_dropout_layer_call_fn_790652�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_dropout_layer_call_and_return_conditional_losses_790657
C__inference_dropout_layer_call_and_return_conditional_losses_790669�
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
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_flatten_layer_call_fn_790674�
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
 z�trace_0
�
�trace_02�
C__inference_flatten_layer_call_and_return_conditional_losses_790680�
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
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_1_layer_call_fn_790689�
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
 z�trace_0
�
�trace_02�
C__inference_dense_1_layer_call_and_return_conditional_losses_790707�
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
 z�trace_0
": 
�b�2dense_1/kernel
:�2dense_1/bias
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_5_layer_call_fn_790720
6__inference_batch_normalization_5_layer_call_fn_790733�
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
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_790753
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_790787�
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
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_5/gamma
):'�2batch_normalization_5/beta
2:0� (2!batch_normalization_5/moving_mean
6:4� (2%batch_normalization_5/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_2_layer_call_fn_790796�
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
 z�trace_0
�
�trace_02�
C__inference_dense_2_layer_call_and_return_conditional_losses_790807�
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
 z�trace_0
!:	�
2dense_2/kernel
:
2dense_2/bias
~
N0
O1
t2
u3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
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
12
13
14
15
16
17
18
19
20
21
22
23
24
25"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_Model_B_layer_call_fn_787993input_1"�
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
(__inference_Model_B_layer_call_fn_789162inputs"�
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
(__inference_Model_B_layer_call_fn_789275inputs"�
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
(__inference_Model_B_layer_call_fn_788654input_1"�
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
�B�
C__inference_Model_B_layer_call_and_return_conditional_losses_789596inputs"�
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
�B�
C__inference_Model_B_layer_call_and_return_conditional_losses_789938inputs"�
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
�B�
C__inference_Model_B_layer_call_and_return_conditional_losses_788791input_1"�
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
�B�
C__inference_Model_B_layer_call_and_return_conditional_losses_788928input_1"�
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
�B�
$__inference_signature_wrapper_789049input_1"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_rescaling_layer_call_fn_789943inputs"�
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
�B�
E__inference_rescaling_layer_call_and_return_conditional_losses_789951inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_conv2d_layer_call_fn_789960inputs"�
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
�B�
B__inference_conv2d_layer_call_and_return_conditional_losses_789978inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_1_layer_call_fn_789987inputs"�
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
�B�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_790005inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_2_layer_call_fn_790014inputs"�
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
�B�
D__inference_conv2d_2_layer_call_and_return_conditional_losses_790032inputs"�
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
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_batch_normalization_layer_call_fn_790045inputs"�
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
�B�
4__inference_batch_normalization_layer_call_fn_790058inputs"�
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
�B�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_790076inputs"�
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
�B�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_790094inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_3_layer_call_fn_790103inputs"�
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
�B�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_790121inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_4_layer_call_fn_790130inputs"�
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
�B�
D__inference_conv2d_4_layer_call_and_return_conditional_losses_790148inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_5_layer_call_fn_790157inputs"�
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
�B�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_790175inputs"�
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
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_1_layer_call_fn_790188inputs"�
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
�B�
6__inference_batch_normalization_1_layer_call_fn_790201inputs"�
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
�B�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_790219inputs"�
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
�B�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_790237inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_max_pooling2d_layer_call_fn_790242inputs"�
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
�B�
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_790247inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_layer_call_fn_790256inputs"�
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
�B�
A__inference_dense_layer_call_and_return_conditional_losses_790294inputs"�
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_2_layer_call_fn_790307inputs"�
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
�B�
6__inference_batch_normalization_2_layer_call_fn_790320inputs"�
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
�B�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_790338inputs"�
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
�B�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_790356inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_6_layer_call_fn_790365inputs"�
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
�B�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_790383inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_7_layer_call_fn_790392inputs"�
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
�B�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_790410inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_8_layer_call_fn_790419inputs"�
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
�B�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_790437inputs"�
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_3_layer_call_fn_790450inputs"�
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
�B�
6__inference_batch_normalization_3_layer_call_fn_790463inputs"�
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
�B�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_790481inputs"�
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
�B�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_790499inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_9_layer_call_fn_790508inputs"�
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
�B�
D__inference_conv2d_9_layer_call_and_return_conditional_losses_790526inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_10_layer_call_fn_790535inputs"�
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
�B�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_790553inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_11_layer_call_fn_790562inputs"�
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
�B�
E__inference_conv2d_11_layer_call_and_return_conditional_losses_790580inputs"�
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_4_layer_call_fn_790593inputs"�
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
�B�
6__inference_batch_normalization_4_layer_call_fn_790606inputs"�
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
�B�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_790624inputs"�
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
�B�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_790642inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dropout_layer_call_fn_790647inputs"�
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
�B�
(__inference_dropout_layer_call_fn_790652inputs"�
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
�B�
C__inference_dropout_layer_call_and_return_conditional_losses_790657inputs"�
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
�B�
C__inference_dropout_layer_call_and_return_conditional_losses_790669inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_flatten_layer_call_fn_790674inputs"�
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
�B�
C__inference_flatten_layer_call_and_return_conditional_losses_790680inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_1_layer_call_fn_790689inputs"�
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
�B�
C__inference_dense_1_layer_call_and_return_conditional_losses_790707inputs"�
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_5_layer_call_fn_790720inputs"�
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
�B�
6__inference_batch_normalization_5_layer_call_fn_790733inputs"�
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
�B�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_790753inputs"�
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
�B�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_790787inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_2_layer_call_fn_790796inputs"�
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
�B�
C__inference_dense_2_layer_call_and_return_conditional_losses_790807inputs"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
,:*@2Adam/conv2d/kernel/m
:@2Adam/conv2d/bias/m
.:,@ 2Adam/conv2d_1/kernel/m
 : 2Adam/conv2d_1/bias/m
.:, @2Adam/conv2d_2/kernel/m
 :@2Adam/conv2d_2/bias/m
,:*@2 Adam/batch_normalization/gamma/m
+:)@2Adam/batch_normalization/beta/m
/:-@�2Adam/conv2d_3/kernel/m
!:�2Adam/conv2d_3/bias/m
/:-�@2Adam/conv2d_4/kernel/m
 :@2Adam/conv2d_4/bias/m
/:-@�2Adam/conv2d_5/kernel/m
!:�2Adam/conv2d_5/bias/m
/:-�2"Adam/batch_normalization_1/gamma/m
.:,�2!Adam/batch_normalization_1/beta/m
$:"	� 2Adam/dense/kernel/m
: 2Adam/dense/bias/m
.:, 2"Adam/batch_normalization_2/gamma/m
-:+ 2!Adam/batch_normalization_2/beta/m
/:- �2Adam/conv2d_6/kernel/m
!:�2Adam/conv2d_6/bias/m
/:-�@2Adam/conv2d_7/kernel/m
 :@2Adam/conv2d_7/bias/m
/:-@�2Adam/conv2d_8/kernel/m
!:�2Adam/conv2d_8/bias/m
/:-�2"Adam/batch_normalization_3/gamma/m
.:,�2!Adam/batch_normalization_3/beta/m
/:-�@2Adam/conv2d_9/kernel/m
 :@2Adam/conv2d_9/bias/m
/:-@ 2Adam/conv2d_10/kernel/m
!: 2Adam/conv2d_10/bias/m
/:- @2Adam/conv2d_11/kernel/m
!:@2Adam/conv2d_11/bias/m
.:,@2"Adam/batch_normalization_4/gamma/m
-:+@2!Adam/batch_normalization_4/beta/m
':%
�b�2Adam/dense_1/kernel/m
 :�2Adam/dense_1/bias/m
/:-�2"Adam/batch_normalization_5/gamma/m
.:,�2!Adam/batch_normalization_5/beta/m
&:$	�
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
,:*@2Adam/conv2d/kernel/v
:@2Adam/conv2d/bias/v
.:,@ 2Adam/conv2d_1/kernel/v
 : 2Adam/conv2d_1/bias/v
.:, @2Adam/conv2d_2/kernel/v
 :@2Adam/conv2d_2/bias/v
,:*@2 Adam/batch_normalization/gamma/v
+:)@2Adam/batch_normalization/beta/v
/:-@�2Adam/conv2d_3/kernel/v
!:�2Adam/conv2d_3/bias/v
/:-�@2Adam/conv2d_4/kernel/v
 :@2Adam/conv2d_4/bias/v
/:-@�2Adam/conv2d_5/kernel/v
!:�2Adam/conv2d_5/bias/v
/:-�2"Adam/batch_normalization_1/gamma/v
.:,�2!Adam/batch_normalization_1/beta/v
$:"	� 2Adam/dense/kernel/v
: 2Adam/dense/bias/v
.:, 2"Adam/batch_normalization_2/gamma/v
-:+ 2!Adam/batch_normalization_2/beta/v
/:- �2Adam/conv2d_6/kernel/v
!:�2Adam/conv2d_6/bias/v
/:-�@2Adam/conv2d_7/kernel/v
 :@2Adam/conv2d_7/bias/v
/:-@�2Adam/conv2d_8/kernel/v
!:�2Adam/conv2d_8/bias/v
/:-�2"Adam/batch_normalization_3/gamma/v
.:,�2!Adam/batch_normalization_3/beta/v
/:-�@2Adam/conv2d_9/kernel/v
 :@2Adam/conv2d_9/bias/v
/:-@ 2Adam/conv2d_10/kernel/v
!: 2Adam/conv2d_10/bias/v
/:- @2Adam/conv2d_11/kernel/v
!:@2Adam/conv2d_11/bias/v
.:,@2"Adam/batch_normalization_4/gamma/v
-:+@2!Adam/batch_normalization_4/beta/v
':%
�b�2Adam/dense_1/kernel/v
 :�2Adam/dense_1/bias/v
/:-�2"Adam/batch_normalization_5/gamma/v
.:,�2!Adam/batch_normalization_5/beta/v
&:$	�
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
<b:
Model_B/conv2d/beta:0!__inference__wrapped_model_787007
?b=
Model_B/conv2d/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_1/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_1/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_2/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_2/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_3/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_3/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_4/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_4/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_5/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_5/BiasAdd:0!__inference__wrapped_model_787007
;b9
Model_B/dense/beta:0!__inference__wrapped_model_787007
>b<
Model_B/dense/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_6/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_6/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_7/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_7/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_8/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_8/BiasAdd:0!__inference__wrapped_model_787007
>b<
Model_B/conv2d_9/beta:0!__inference__wrapped_model_787007
Ab?
Model_B/conv2d_9/BiasAdd:0!__inference__wrapped_model_787007
?b=
Model_B/conv2d_10/beta:0!__inference__wrapped_model_787007
Bb@
Model_B/conv2d_10/BiasAdd:0!__inference__wrapped_model_787007
?b=
Model_B/conv2d_11/beta:0!__inference__wrapped_model_787007
Bb@
Model_B/conv2d_11/BiasAdd:0!__inference__wrapped_model_787007
=b;
Model_B/dense_1/beta:0!__inference__wrapped_model_787007
@b>
Model_B/dense_1/BiasAdd:0!__inference__wrapped_model_787007
NbL
beta:0B__inference_conv2d_layer_call_and_return_conditional_losses_787456
QbO
	BiasAdd:0B__inference_conv2d_layer_call_and_return_conditional_losses_787456
PbN
beta:0D__inference_conv2d_1_layer_call_and_return_conditional_losses_787480
SbQ
	BiasAdd:0D__inference_conv2d_1_layer_call_and_return_conditional_losses_787480
PbN
beta:0D__inference_conv2d_2_layer_call_and_return_conditional_losses_787504
SbQ
	BiasAdd:0D__inference_conv2d_2_layer_call_and_return_conditional_losses_787504
PbN
beta:0D__inference_conv2d_3_layer_call_and_return_conditional_losses_787537
SbQ
	BiasAdd:0D__inference_conv2d_3_layer_call_and_return_conditional_losses_787537
PbN
beta:0D__inference_conv2d_4_layer_call_and_return_conditional_losses_787561
SbQ
	BiasAdd:0D__inference_conv2d_4_layer_call_and_return_conditional_losses_787561
PbN
beta:0D__inference_conv2d_5_layer_call_and_return_conditional_losses_787585
SbQ
	BiasAdd:0D__inference_conv2d_5_layer_call_and_return_conditional_losses_787585
MbK
beta:0A__inference_dense_layer_call_and_return_conditional_losses_787639
PbN
	BiasAdd:0A__inference_dense_layer_call_and_return_conditional_losses_787639
PbN
beta:0D__inference_conv2d_6_layer_call_and_return_conditional_losses_787672
SbQ
	BiasAdd:0D__inference_conv2d_6_layer_call_and_return_conditional_losses_787672
PbN
beta:0D__inference_conv2d_7_layer_call_and_return_conditional_losses_787696
SbQ
	BiasAdd:0D__inference_conv2d_7_layer_call_and_return_conditional_losses_787696
PbN
beta:0D__inference_conv2d_8_layer_call_and_return_conditional_losses_787720
SbQ
	BiasAdd:0D__inference_conv2d_8_layer_call_and_return_conditional_losses_787720
PbN
beta:0D__inference_conv2d_9_layer_call_and_return_conditional_losses_787753
SbQ
	BiasAdd:0D__inference_conv2d_9_layer_call_and_return_conditional_losses_787753
QbO
beta:0E__inference_conv2d_10_layer_call_and_return_conditional_losses_787777
TbR
	BiasAdd:0E__inference_conv2d_10_layer_call_and_return_conditional_losses_787777
QbO
beta:0E__inference_conv2d_11_layer_call_and_return_conditional_losses_787801
TbR
	BiasAdd:0E__inference_conv2d_11_layer_call_and_return_conditional_losses_787801
ObM
beta:0C__inference_dense_1_layer_call_and_return_conditional_losses_787849
RbP
	BiasAdd:0C__inference_dense_1_layer_call_and_return_conditional_losses_787849
VbT
conv2d/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
YbW
conv2d/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_1/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_1/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_2/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_2/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_3/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_3/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_4/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_4/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_5/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_5/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
UbS
dense/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
dense/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_6/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_6/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_7/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_7/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_8/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_8/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
XbV
conv2d_9/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
[bY
conv2d_9/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
YbW
conv2d_10/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
\bZ
conv2d_10/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
YbW
conv2d_11/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
\bZ
conv2d_11/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
WbU
dense_1/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
ZbX
dense_1/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789596
VbT
conv2d/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
YbW
conv2d/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_1/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_1/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_2/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_2/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_3/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_3/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_4/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_4/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_5/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_5/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
UbS
dense/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
dense/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_6/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_6/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_7/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_7/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_8/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_8/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
XbV
conv2d_9/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
[bY
conv2d_9/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
YbW
conv2d_10/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
\bZ
conv2d_10/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
YbW
conv2d_11/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
\bZ
conv2d_11/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
WbU
dense_1/beta:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
ZbX
dense_1/BiasAdd:0C__inference_Model_B_layer_call_and_return_conditional_losses_789938
NbL
beta:0B__inference_conv2d_layer_call_and_return_conditional_losses_789978
QbO
	BiasAdd:0B__inference_conv2d_layer_call_and_return_conditional_losses_789978
PbN
beta:0D__inference_conv2d_1_layer_call_and_return_conditional_losses_790005
SbQ
	BiasAdd:0D__inference_conv2d_1_layer_call_and_return_conditional_losses_790005
PbN
beta:0D__inference_conv2d_2_layer_call_and_return_conditional_losses_790032
SbQ
	BiasAdd:0D__inference_conv2d_2_layer_call_and_return_conditional_losses_790032
PbN
beta:0D__inference_conv2d_3_layer_call_and_return_conditional_losses_790121
SbQ
	BiasAdd:0D__inference_conv2d_3_layer_call_and_return_conditional_losses_790121
PbN
beta:0D__inference_conv2d_4_layer_call_and_return_conditional_losses_790148
SbQ
	BiasAdd:0D__inference_conv2d_4_layer_call_and_return_conditional_losses_790148
PbN
beta:0D__inference_conv2d_5_layer_call_and_return_conditional_losses_790175
SbQ
	BiasAdd:0D__inference_conv2d_5_layer_call_and_return_conditional_losses_790175
MbK
beta:0A__inference_dense_layer_call_and_return_conditional_losses_790294
PbN
	BiasAdd:0A__inference_dense_layer_call_and_return_conditional_losses_790294
PbN
beta:0D__inference_conv2d_6_layer_call_and_return_conditional_losses_790383
SbQ
	BiasAdd:0D__inference_conv2d_6_layer_call_and_return_conditional_losses_790383
PbN
beta:0D__inference_conv2d_7_layer_call_and_return_conditional_losses_790410
SbQ
	BiasAdd:0D__inference_conv2d_7_layer_call_and_return_conditional_losses_790410
PbN
beta:0D__inference_conv2d_8_layer_call_and_return_conditional_losses_790437
SbQ
	BiasAdd:0D__inference_conv2d_8_layer_call_and_return_conditional_losses_790437
PbN
beta:0D__inference_conv2d_9_layer_call_and_return_conditional_losses_790526
SbQ
	BiasAdd:0D__inference_conv2d_9_layer_call_and_return_conditional_losses_790526
QbO
beta:0E__inference_conv2d_10_layer_call_and_return_conditional_losses_790553
TbR
	BiasAdd:0E__inference_conv2d_10_layer_call_and_return_conditional_losses_790553
QbO
beta:0E__inference_conv2d_11_layer_call_and_return_conditional_losses_790580
TbR
	BiasAdd:0E__inference_conv2d_11_layer_call_and_return_conditional_losses_790580
ObM
beta:0C__inference_dense_1_layer_call_and_return_conditional_losses_790707
RbP
	BiasAdd:0C__inference_dense_1_layer_call_and_return_conditional_losses_790707�
C__inference_Model_B_layer_call_and_return_conditional_losses_788791�X019:BCLMNOVW_`hirstu����������������������������������@�=
6�3
)�&
input_1���������
p 

 
� "%�"
�
0���������

� �
C__inference_Model_B_layer_call_and_return_conditional_losses_788928�X019:BCLMNOVW_`hirstu����������������������������������@�=
6�3
)�&
input_1���������
p

 
� "%�"
�
0���������

� �
C__inference_Model_B_layer_call_and_return_conditional_losses_789596�X019:BCLMNOVW_`hirstu����������������������������������?�<
5�2
(�%
inputs���������
p 

 
� "%�"
�
0���������

� �
C__inference_Model_B_layer_call_and_return_conditional_losses_789938�X019:BCLMNOVW_`hirstu����������������������������������?�<
5�2
(�%
inputs���������
p

 
� "%�"
�
0���������

� �
(__inference_Model_B_layer_call_fn_787993�X019:BCLMNOVW_`hirstu����������������������������������@�=
6�3
)�&
input_1���������
p 

 
� "����������
�
(__inference_Model_B_layer_call_fn_788654�X019:BCLMNOVW_`hirstu����������������������������������@�=
6�3
)�&
input_1���������
p

 
� "����������
�
(__inference_Model_B_layer_call_fn_789162�X019:BCLMNOVW_`hirstu����������������������������������?�<
5�2
(�%
inputs���������
p 

 
� "����������
�
(__inference_Model_B_layer_call_fn_789275�X019:BCLMNOVW_`hirstu����������������������������������?�<
5�2
(�%
inputs���������
p

 
� "����������
�
!__inference__wrapped_model_787007�X019:BCLMNOVW_`hirstu����������������������������������8�5
.�+
)�&
input_1���������
� "1�.
,
dense_2!�
dense_2���������
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_790219�rstuN�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_790237�rstuN�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
6__inference_batch_normalization_1_layer_call_fn_790188�rstuN�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
6__inference_batch_normalization_1_layer_call_fn_790201�rstuN�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_790338�����M�J
C�@
:�7
inputs+��������������������������� 
p 
� "?�<
5�2
0+��������������������������� 
� �
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_790356�����M�J
C�@
:�7
inputs+��������������������������� 
p
� "?�<
5�2
0+��������������������������� 
� �
6__inference_batch_normalization_2_layer_call_fn_790307�����M�J
C�@
:�7
inputs+��������������������������� 
p 
� "2�/+��������������������������� �
6__inference_batch_normalization_2_layer_call_fn_790320�����M�J
C�@
:�7
inputs+��������������������������� 
p
� "2�/+��������������������������� �
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_790481�����N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_790499�����N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
6__inference_batch_normalization_3_layer_call_fn_790450�����N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
6__inference_batch_normalization_3_layer_call_fn_790463�����N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_790624�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_790642�����M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
6__inference_batch_normalization_4_layer_call_fn_790593�����M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
6__inference_batch_normalization_4_layer_call_fn_790606�����M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_790753h����4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_790787h����4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
6__inference_batch_normalization_5_layer_call_fn_790720[����4�1
*�'
!�
inputs����������
p 
� "������������
6__inference_batch_normalization_5_layer_call_fn_790733[����4�1
*�'
!�
inputs����������
p
� "������������
O__inference_batch_normalization_layer_call_and_return_conditional_losses_790076�LMNOM�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_790094�LMNOM�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
4__inference_batch_normalization_layer_call_fn_790045�LMNOM�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
4__inference_batch_normalization_layer_call_fn_790058�LMNOM�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
E__inference_conv2d_10_layer_call_and_return_conditional_losses_790553n��7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0��������� 
� �
*__inference_conv2d_10_layer_call_fn_790535a��7�4
-�*
(�%
inputs���������@
� " ���������� �
E__inference_conv2d_11_layer_call_and_return_conditional_losses_790580n��7�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0���������@
� �
*__inference_conv2d_11_layer_call_fn_790562a��7�4
-�*
(�%
inputs��������� 
� " ����������@�
D__inference_conv2d_1_layer_call_and_return_conditional_losses_790005l9:7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0��������� 
� �
)__inference_conv2d_1_layer_call_fn_789987_9:7�4
-�*
(�%
inputs���������@
� " ���������� �
D__inference_conv2d_2_layer_call_and_return_conditional_losses_790032lBC7�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0���������@
� �
)__inference_conv2d_2_layer_call_fn_790014_BC7�4
-�*
(�%
inputs��������� 
� " ����������@�
D__inference_conv2d_3_layer_call_and_return_conditional_losses_790121mVW7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
)__inference_conv2d_3_layer_call_fn_790103`VW7�4
-�*
(�%
inputs���������@
� "!������������
D__inference_conv2d_4_layer_call_and_return_conditional_losses_790148m_`8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
)__inference_conv2d_4_layer_call_fn_790130`_`8�5
.�+
)�&
inputs����������
� " ����������@�
D__inference_conv2d_5_layer_call_and_return_conditional_losses_790175mhi7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
)__inference_conv2d_5_layer_call_fn_790157`hi7�4
-�*
(�%
inputs���������@
� "!������������
D__inference_conv2d_6_layer_call_and_return_conditional_losses_790383o��7�4
-�*
(�%
inputs��������� 
� ".�+
$�!
0����������
� �
)__inference_conv2d_6_layer_call_fn_790365b��7�4
-�*
(�%
inputs��������� 
� "!������������
D__inference_conv2d_7_layer_call_and_return_conditional_losses_790410o��8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
)__inference_conv2d_7_layer_call_fn_790392b��8�5
.�+
)�&
inputs����������
� " ����������@�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_790437o��7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
)__inference_conv2d_8_layer_call_fn_790419b��7�4
-�*
(�%
inputs���������@
� "!������������
D__inference_conv2d_9_layer_call_and_return_conditional_losses_790526o��8�5
.�+
)�&
inputs����������
� "-�*
#� 
0���������@
� �
)__inference_conv2d_9_layer_call_fn_790508b��8�5
.�+
)�&
inputs����������
� " ����������@�
B__inference_conv2d_layer_call_and_return_conditional_losses_789978l017�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������@
� �
'__inference_conv2d_layer_call_fn_789960_017�4
-�*
(�%
inputs���������
� " ����������@�
C__inference_dense_1_layer_call_and_return_conditional_losses_790707`��0�-
&�#
!�
inputs����������b
� "&�#
�
0����������
� 
(__inference_dense_1_layer_call_fn_790689S��0�-
&�#
!�
inputs����������b
� "������������
C__inference_dense_2_layer_call_and_return_conditional_losses_790807_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������

� ~
(__inference_dense_2_layer_call_fn_790796R��0�-
&�#
!�
inputs����������
� "����������
�
A__inference_dense_layer_call_and_return_conditional_losses_790294o��8�5
.�+
)�&
inputs����������
� "-�*
#� 
0��������� 
� �
&__inference_dense_layer_call_fn_790256b��8�5
.�+
)�&
inputs����������
� " ���������� �
C__inference_dropout_layer_call_and_return_conditional_losses_790657l;�8
1�.
(�%
inputs���������@
p 
� "-�*
#� 
0���������@
� �
C__inference_dropout_layer_call_and_return_conditional_losses_790669l;�8
1�.
(�%
inputs���������@
p
� "-�*
#� 
0���������@
� �
(__inference_dropout_layer_call_fn_790647_;�8
1�.
(�%
inputs���������@
p 
� " ����������@�
(__inference_dropout_layer_call_fn_790652_;�8
1�.
(�%
inputs���������@
p
� " ����������@�
C__inference_flatten_layer_call_and_return_conditional_losses_790680a7�4
-�*
(�%
inputs���������@
� "&�#
�
0����������b
� �
(__inference_flatten_layer_call_fn_790674T7�4
-�*
(�%
inputs���������@
� "�����������b�
#__inference_internal_grad_fn_791123���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791141���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791159���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791177���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791195���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791213���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791231���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791249���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791267���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791285���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791303���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791321���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791339���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791357���g�d
]�Z

 
)�&
result_grads_0����������
)�&
result_grads_1����������
� "%�"

 
�
1�����������
#__inference_internal_grad_fn_791375���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791393���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791411���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791429���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791447���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791465���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791483���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791501���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791519���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791537���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791555���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791573���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791591���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791609���g�d
]�Z

 
)�&
result_grads_0����������
)�&
result_grads_1����������
� "%�"

 
�
1�����������
#__inference_internal_grad_fn_791627���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791645���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791663���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791681���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791699���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791717���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791735���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791753���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791771���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791789���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791807���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791825���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791843���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791861���g�d
]�Z

 
)�&
result_grads_0����������
)�&
result_grads_1����������
� "%�"

 
�
1�����������
#__inference_internal_grad_fn_791879���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791897���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_791915���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791933���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791951���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_791969���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_791987���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_792005���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_792023���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792041���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_792059���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792077���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_792095���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792113���g�d
]�Z

 
)�&
result_grads_0����������
)�&
result_grads_1����������
� "%�"

 
�
1�����������
#__inference_internal_grad_fn_792131���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792149���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_792167���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792185���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_792203���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792221���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_792239���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_792257���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_792275���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792293���w�t
m�j

 
1�.
result_grads_0����������
1�.
result_grads_1����������
� "-�*

 
$�!
1�����������
#__inference_internal_grad_fn_792311���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792329���u�r
k�h

 
0�-
result_grads_0��������� 
0�-
result_grads_1��������� 
� ",�)

 
#� 
1��������� �
#__inference_internal_grad_fn_792347���u�r
k�h

 
0�-
result_grads_0���������@
0�-
result_grads_1���������@
� ",�)

 
#� 
1���������@�
#__inference_internal_grad_fn_792365���g�d
]�Z

 
)�&
result_grads_0����������
)�&
result_grads_1����������
� "%�"

 
�
1�����������
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_790247�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
.__inference_max_pooling2d_layer_call_fn_790242�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
E__inference_rescaling_layer_call_and_return_conditional_losses_789951h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
*__inference_rescaling_layer_call_fn_789943[7�4
-�*
(�%
inputs���������
� " �����������
$__inference_signature_wrapper_789049�X019:BCLMNOVW_`hirstu����������������������������������C�@
� 
9�6
4
input_1)�&
input_1���������"1�.
,
dense_2!�
dense_2���������
