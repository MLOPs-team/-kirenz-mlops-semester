
э
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
О
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.22v2.6.1-9-gc2363d6d0258Бп
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:[*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:[*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
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

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:[*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:[*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:[*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:[*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
к8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*8
value8B8 B8
ч
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer-29
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer-40
*layer-41
+layer-42
,layer-43
-layer-44
.layer-45
/layer-46
0layer-47
1layer-48
2layer-49
3layer-50
4layer-51
5layer-52
6layer-53
7layer-54
8layer-55
9layer-56
:layer-57
;layer-58
<layer-59
=layer-60
>layer-61
?layer-62
@layer-63
Alayer-64
Blayer-65
Clayer-66
Dlayer-67
Elayer-68
Flayer-69
Glayer-70
Hlayer-71
Ilayer-72
Jlayer-73
Klayer-74
Llayer-75
Mlayer-76
Nlayer-77
Olayer-78
Player-79
Qlayer-80
Rlayer-81
Slayer-82
Tlayer-83
Ulayer-84
Vlayer-85
Wlayer-86
Xlayer-87
Ylayer-88
Zlayer-89
[layer-90
\layer-91
]layer_with_weights-0
]layer-92
^layer_with_weights-1
^layer-93
_layer_with_weights-2
_layer-94
`	optimizer
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
e
signatures
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
R
f	variables
gregularization_losses
htrainable_variables
i	keras_api
h

jkernel
kbias
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
h

pkernel
qbias
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
h

vkernel
wbias
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
Й
|iter

}beta_1

~beta_2
	decay
learning_ratejmЅkmІpmЇqmЈvmЉwmЊjvЋkvЌpv­qvЎvvЏwvА
*
j0
k1
p2
q3
v4
w5
 
*
j0
k1
p2
q3
v4
w5
В
layers
metrics
a	variables
 layer_regularization_losses
layer_metrics
bregularization_losses
non_trainable_variables
ctrainable_variables
 
 
 
 
В
layers
layer_metrics
f	variables
 layer_regularization_losses
metrics
gregularization_losses
non_trainable_variables
htrainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

j0
k1
 

j0
k1
В
layers
layer_metrics
l	variables
 layer_regularization_losses
metrics
mregularization_losses
non_trainable_variables
ntrainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

p0
q1
 

p0
q1
В
layers
layer_metrics
r	variables
 layer_regularization_losses
metrics
sregularization_losses
non_trainable_variables
ttrainable_variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

v0
w1
 

v0
w1
В
layers
layer_metrics
x	variables
 layer_regularization_losses
metrics
yregularization_losses
non_trainable_variables
ztrainable_variables
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
ю
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
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
855
956
:57
;58
<59
=60
>61
?62
@63
A64
B65
C66
D67
E68
F69
G70
H71
I72
J73
K74
L75
M76
N77
O78
P79
Q80
R81
S82
T83
U84
V85
W86
X87
Y88
Z89
[90
\91
]92
^93
_94

0
1
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
8

total

count
	variables
	keras_api
I

 total

Ёcount
Ђ
_fn_kwargs
Ѓ	variables
Є	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

 0
Ё1

Ѓ	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
y
serving_default_actionPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

'serving_default_force_avon-and-somersetPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

"serving_default_force_bedfordshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
|
serving_default_force_btpPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

$serving_default_force_cambridgeshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_cheshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

$serving_default_force_city-of-londonPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_clevelandPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_cumbriaPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

 serving_default_force_derbyshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

(serving_default_force_devon-and-cornwallPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_dorsetPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_durhamPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

!serving_default_force_dyfed-powysPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
~
serving_default_force_essexPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

%serving_default_force_gloucestershirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_hampshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

#serving_default_force_hertfordshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

 serving_default_force_humbersidePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
}
serving_default_force_kentPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

 serving_default_force_lancashirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

$serving_default_force_leicestershirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

"serving_default_force_lincolnshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

 serving_default_force_merseysidePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

"serving_default_force_metropolitanPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_norfolkPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

!serving_default_force_north-walesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

%serving_default_force_north-yorkshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

&serving_default_force_northamptonshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

!serving_default_force_northumbriaPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

#serving_default_force_staffordshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_suffolkPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_sussexPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

#serving_default_force_thames-valleyPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

"serving_default_force_warwickshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

!serving_default_force_west-merciaPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

$serving_default_force_west-yorkshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_force_wiltshirePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_gender_FemalePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
~
serving_default_gender_MalePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_gender_OtherPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

serving_default_involved_personPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ї
Dserving_default_legislation_Aviation_Security_Act_1982__section_27_1Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ј
Eserving_default_legislation_Conservation_of_Seals_Act_1970__section_4Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
І
Cserving_default_legislation_Criminal_Justice_Act_1988__section_139BPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Е
Rserving_default_legislation_Criminal_Justice_and_Public_Order_Act_1994__section_60Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

9serving_default_legislation_Crossbows_Act_1987__section_4Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
В
Oserving_default_legislation_Customs_and_Excise_Management_Act_1979__section_163Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

5serving_default_legislation_Deer_Act_1991__section_12Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ў
Kserving_default_legislation_Environmental_Protection_Act_1990__section_34B_Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

9serving_default_legislation_Firearms_Act_1968__section_47Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

7serving_default_legislation_Hunting_Act_2004__section_8Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ѓ
@serving_default_legislation_Misuse_of_Drugs_Act_1971__section_23Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
І
Cserving_default_legislation_Poaching_Prevention_Act_1862__section_2Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Џ
Lserving_default_legislation_Police_and_Criminal_Evidence_Act_1984__section_1Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Џ
Lserving_default_legislation_Police_and_Criminal_Evidence_Act_1984__section_6Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Љ
Fserving_default_legislation_Protection_of_Badgers_Act_1992__section_11Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
І
Cserving_default_legislation_Psychoactive_Substances_Act_2016__s36_2Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
І
Cserving_default_legislation_Psychoactive_Substances_Act_2016__s37_2Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
 
=serving_default_legislation_Public_Stores_Act_1875__section_6Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ќ
Iserving_default_legislation_Wildlife_and_Countryside_Act_1981__section_19Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ї
Dserving_default_object_of_search_Anything_to_threaten_or_harm_anyonePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

9serving_default_object_of_search_Article_for_use_in_theftPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ї
Dserving_default_object_of_search_Articles_for_use_in_criminal_damagePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

1serving_default_object_of_search_Controlled_drugsPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

*serving_default_object_of_search_CrossbowsPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Љ
Fserving_default_object_of_search_Detailed_object_of_search_unavailablePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
І
Cserving_default_object_of_search_Evidence_of_offences_under_the_ActPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ё
>serving_default_object_of_search_Evidence_of_wildlife_offencesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

)serving_default_object_of_search_FirearmsPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

*serving_default_object_of_search_FireworksPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

;serving_default_object_of_search_Game_or_poaching_equipmentPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ў
Kserving_default_object_of_search_Goods_on_which_duty_has_not_been_paid_etc.Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

2serving_default_object_of_search_Offensive_weaponsPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

8serving_default_object_of_search_Psychoactive_substancesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

;serving_default_object_of_search_Seals_or_hunting_equipmentPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

-serving_default_object_of_search_Stolen_goodsPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

$serving_default_object_of_search_dogPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

/serving_default_officer_defined_ethnicity_AsianPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

/serving_default_officer_defined_ethnicity_BlackPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

/serving_default_officer_defined_ethnicity_MixedPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

/serving_default_officer_defined_ethnicity_OtherPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

/serving_default_officer_defined_ethnicity_WhitePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

,serving_default_self_defined_ethnicity_asianPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

,serving_default_self_defined_ethnicity_blackPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

,serving_default_self_defined_ethnicity_mixedPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

,serving_default_self_defined_ethnicity_otherPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

,serving_default_self_defined_ethnicity_whitePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

.serving_default_type_Person_and_Vehicle_searchPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

"serving_default_type_Person_searchPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

#serving_default_type_Vehicle_searchPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Й%
StatefulPartitionedCallStatefulPartitionedCallserving_default_action'serving_default_force_avon-and-somerset"serving_default_force_bedfordshireserving_default_force_btp$serving_default_force_cambridgeshireserving_default_force_cheshire$serving_default_force_city-of-londonserving_default_force_clevelandserving_default_force_cumbria serving_default_force_derbyshire(serving_default_force_devon-and-cornwallserving_default_force_dorsetserving_default_force_durham!serving_default_force_dyfed-powysserving_default_force_essex%serving_default_force_gloucestershireserving_default_force_hampshire#serving_default_force_hertfordshire serving_default_force_humbersideserving_default_force_kent serving_default_force_lancashire$serving_default_force_leicestershire"serving_default_force_lincolnshire serving_default_force_merseyside"serving_default_force_metropolitanserving_default_force_norfolk!serving_default_force_north-wales%serving_default_force_north-yorkshire&serving_default_force_northamptonshire!serving_default_force_northumbria#serving_default_force_staffordshireserving_default_force_suffolkserving_default_force_sussex#serving_default_force_thames-valley"serving_default_force_warwickshire!serving_default_force_west-mercia$serving_default_force_west-yorkshireserving_default_force_wiltshireserving_default_gender_Femaleserving_default_gender_Maleserving_default_gender_Otherserving_default_involved_personDserving_default_legislation_Aviation_Security_Act_1982__section_27_1Eserving_default_legislation_Conservation_of_Seals_Act_1970__section_4Cserving_default_legislation_Criminal_Justice_Act_1988__section_139BRserving_default_legislation_Criminal_Justice_and_Public_Order_Act_1994__section_609serving_default_legislation_Crossbows_Act_1987__section_4Oserving_default_legislation_Customs_and_Excise_Management_Act_1979__section_1635serving_default_legislation_Deer_Act_1991__section_12Kserving_default_legislation_Environmental_Protection_Act_1990__section_34B_9serving_default_legislation_Firearms_Act_1968__section_477serving_default_legislation_Hunting_Act_2004__section_8@serving_default_legislation_Misuse_of_Drugs_Act_1971__section_23Cserving_default_legislation_Poaching_Prevention_Act_1862__section_2Lserving_default_legislation_Police_and_Criminal_Evidence_Act_1984__section_1Lserving_default_legislation_Police_and_Criminal_Evidence_Act_1984__section_6Fserving_default_legislation_Protection_of_Badgers_Act_1992__section_11Cserving_default_legislation_Psychoactive_Substances_Act_2016__s36_2Cserving_default_legislation_Psychoactive_Substances_Act_2016__s37_2=serving_default_legislation_Public_Stores_Act_1875__section_6Iserving_default_legislation_Wildlife_and_Countryside_Act_1981__section_19Dserving_default_object_of_search_Anything_to_threaten_or_harm_anyone9serving_default_object_of_search_Article_for_use_in_theftDserving_default_object_of_search_Articles_for_use_in_criminal_damage1serving_default_object_of_search_Controlled_drugs*serving_default_object_of_search_CrossbowsFserving_default_object_of_search_Detailed_object_of_search_unavailableCserving_default_object_of_search_Evidence_of_offences_under_the_Act>serving_default_object_of_search_Evidence_of_wildlife_offences)serving_default_object_of_search_Firearms*serving_default_object_of_search_Fireworks;serving_default_object_of_search_Game_or_poaching_equipmentKserving_default_object_of_search_Goods_on_which_duty_has_not_been_paid_etc.2serving_default_object_of_search_Offensive_weapons8serving_default_object_of_search_Psychoactive_substances;serving_default_object_of_search_Seals_or_hunting_equipment-serving_default_object_of_search_Stolen_goods$serving_default_object_of_search_dog/serving_default_officer_defined_ethnicity_Asian/serving_default_officer_defined_ethnicity_Black/serving_default_officer_defined_ethnicity_Mixed/serving_default_officer_defined_ethnicity_Other/serving_default_officer_defined_ethnicity_White,serving_default_self_defined_ethnicity_asian,serving_default_self_defined_ethnicity_black,serving_default_self_defined_ethnicity_mixed,serving_default_self_defined_ethnicity_other,serving_default_self_defined_ethnicity_white.serving_default_type_Person_and_Vehicle_search"serving_default_type_Person_search#serving_default_type_Vehicle_searchdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*l
Tine
c2a*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

[\]^_`*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_6695
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 


StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8 *&
f!R
__inference__traced_save_7585
ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*'
Tin 
2*
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
GPU 2J 8 *)
f$R"
 __inference__traced_restore_7676ёж
в

?__inference_model_layer_call_and_return_conditional_losses_6470

action
involved_person 
self_defined_ethnicity_white 
self_defined_ethnicity_black 
self_defined_ethnicity_asian 
self_defined_ethnicity_other 
self_defined_ethnicity_mixed
gender_female
gender_male
gender_other8
4legislation_aviation_security_act_1982__section_27_19
5legislation_conservation_of_seals_act_1970__section_47
3legislation_criminal_justice_act_1988__section_139bF
Blegislation_criminal_justice_and_public_order_act_1994__section_60-
)legislation_crossbows_act_1987__section_4C
?legislation_customs_and_excise_management_act_1979__section_163)
%legislation_deer_act_1991__section_12?
;legislation_environmental_protection_act_1990__section_34b_-
)legislation_firearms_act_1968__section_47+
'legislation_hunting_act_2004__section_84
0legislation_misuse_of_drugs_act_1971__section_237
3legislation_poaching_prevention_act_1862__section_2@
<legislation_police_and_criminal_evidence_act_1984__section_1@
<legislation_police_and_criminal_evidence_act_1984__section_6:
6legislation_protection_of_badgers_act_1992__section_117
3legislation_psychoactive_substances_act_2016__s36_27
3legislation_psychoactive_substances_act_2016__s37_21
-legislation_public_stores_act_1875__section_6=
9legislation_wildlife_and_countryside_act_1981__section_19#
officer_defined_ethnicity_asian#
officer_defined_ethnicity_black#
officer_defined_ethnicity_mixed#
officer_defined_ethnicity_other#
officer_defined_ethnicity_white"
type_person_and_vehicle_search
type_person_search
type_vehicle_search8
4object_of_search_anything_to_threaten_or_harm_anyone-
)object_of_search_article_for_use_in_theft8
4object_of_search_articles_for_use_in_criminal_damage%
!object_of_search_controlled_drugs
object_of_search_crossbows:
6object_of_search_detailed_object_of_search_unavailable7
3object_of_search_evidence_of_offences_under_the_act2
.object_of_search_evidence_of_wildlife_offences
object_of_search_firearms
object_of_search_fireworks/
+object_of_search_game_or_poaching_equipment?
;object_of_search_goods_on_which_duty_has_not_been_paid_etc_&
"object_of_search_offensive_weapons,
(object_of_search_psychoactive_substances/
+object_of_search_seals_or_hunting_equipment!
object_of_search_stolen_goods
object_of_search_dog
force_avon_and_somerset
force_bedfordshire
	force_btp
force_cambridgeshire
force_cheshire
force_city_of_london
force_cleveland
force_cumbria
force_derbyshire
force_devon_and_cornwall
force_dorset
force_durham
force_dyfed_powys
force_essex
force_gloucestershire
force_hampshire
force_hertfordshire
force_humberside

force_kent
force_lancashire
force_leicestershire
force_lincolnshire
force_merseyside
force_metropolitan
force_norfolk
force_north_wales
force_north_yorkshire
force_northamptonshire
force_northumbria
force_staffordshire
force_suffolk
force_sussex
force_thames_valley
force_warwickshire
force_west_mercia
force_west_yorkshire
force_wiltshire

dense_6454:[

dense_6456:
dense_1_6459:
dense_1_6461:
dense_2_6464:
dense_2_6466:
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallу
concatenate/PartitionedCallPartitionedCallactioninvolved_personself_defined_ethnicity_whiteself_defined_ethnicity_blackself_defined_ethnicity_asianself_defined_ethnicity_otherself_defined_ethnicity_mixedgender_femalegender_malegender_other4legislation_aviation_security_act_1982__section_27_15legislation_conservation_of_seals_act_1970__section_43legislation_criminal_justice_act_1988__section_139bBlegislation_criminal_justice_and_public_order_act_1994__section_60)legislation_crossbows_act_1987__section_4?legislation_customs_and_excise_management_act_1979__section_163%legislation_deer_act_1991__section_12;legislation_environmental_protection_act_1990__section_34b_)legislation_firearms_act_1968__section_47'legislation_hunting_act_2004__section_80legislation_misuse_of_drugs_act_1971__section_233legislation_poaching_prevention_act_1862__section_2<legislation_police_and_criminal_evidence_act_1984__section_1<legislation_police_and_criminal_evidence_act_1984__section_66legislation_protection_of_badgers_act_1992__section_113legislation_psychoactive_substances_act_2016__s36_23legislation_psychoactive_substances_act_2016__s37_2-legislation_public_stores_act_1875__section_69legislation_wildlife_and_countryside_act_1981__section_19officer_defined_ethnicity_asianofficer_defined_ethnicity_blackofficer_defined_ethnicity_mixedofficer_defined_ethnicity_otherofficer_defined_ethnicity_whitetype_person_and_vehicle_searchtype_person_searchtype_vehicle_search4object_of_search_anything_to_threaten_or_harm_anyone)object_of_search_article_for_use_in_theft4object_of_search_articles_for_use_in_criminal_damage!object_of_search_controlled_drugsobject_of_search_crossbows6object_of_search_detailed_object_of_search_unavailable3object_of_search_evidence_of_offences_under_the_act.object_of_search_evidence_of_wildlife_offencesobject_of_search_firearmsobject_of_search_fireworks+object_of_search_game_or_poaching_equipment;object_of_search_goods_on_which_duty_has_not_been_paid_etc_"object_of_search_offensive_weapons(object_of_search_psychoactive_substances+object_of_search_seals_or_hunting_equipmentobject_of_search_stolen_goodsobject_of_search_dogforce_avon_and_somersetforce_bedfordshire	force_btpforce_cambridgeshireforce_cheshireforce_city_of_londonforce_clevelandforce_cumbriaforce_derbyshireforce_devon_and_cornwallforce_dorsetforce_durhamforce_dyfed_powysforce_essexforce_gloucestershireforce_hampshireforce_hertfordshireforce_humberside
force_kentforce_lancashireforce_leicestershireforce_lincolnshireforce_merseysideforce_metropolitanforce_norfolkforce_north_walesforce_north_yorkshireforce_northamptonshireforce_northumbriaforce_staffordshireforce_suffolkforce_sussexforce_thames_valleyforce_warwickshireforce_west_merciaforce_west_yorkshireforce_wiltshire*f
Tin_
]2[*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ[* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_57352
concatenate/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0
dense_6454
dense_6456*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_57482
dense/StatefulPartitionedCallЉ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6459dense_1_6461*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_57652!
dense_1/StatefulPartitionedCallЋ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6464dense_2_6466*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_57812!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityВ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameaction:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinvolved_person:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_white:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_black:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_asian:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_other:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_mixed:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namegender_Female:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namegender_Male:U	Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegender_Other:}
y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64legislation_Aviation_Security_Act_1982__section_27_1:~z
'
_output_shapes
:џџџџџџџџџ
O
_user_specified_name75legislation_Conservation_of_Seals_Act_1970__section_4:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Criminal_Justice_Act_1988__section_139B:
'
_output_shapes
:џџџџџџџџџ
\
_user_specified_nameDBlegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Crossbows_Act_1987__section_4:
'
_output_shapes
:џџџџџџџџџ
Y
_user_specified_nameA?legislation_Customs_and_Excise_Management_Act_1979__section_163:nj
'
_output_shapes
:џџџџџџџџџ
?
_user_specified_name'%legislation_Deer_Act_1991__section_12:
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;legislation_Environmental_Protection_Act_1990__section_34B_:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Firearms_Act_1968__section_47:pl
'
_output_shapes
:џџџџџџџџџ
A
_user_specified_name)'legislation_Hunting_Act_2004__section_8:yu
'
_output_shapes
:џџџџџџџџџ
J
_user_specified_name20legislation_Misuse_of_Drugs_Act_1971__section_23:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Poaching_Prevention_Act_1862__section_2:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_1:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_6:{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86legislation_Protection_of_Badgers_Act_1992__section_11:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s36_2:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s37_2:vr
'
_output_shapes
:џџџџџџџџџ
G
_user_specified_name/-legislation_Public_Stores_Act_1875__section_6:~
'
_output_shapes
:џџџџџџџџџ
S
_user_specified_name;9legislation_Wildlife_and_Countryside_Act_1981__section_19:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Asian:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Black:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Mixed:h d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Other:h!d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_White:g"c
'
_output_shapes
:џџџџџџџџџ
8
_user_specified_name type_Person_and_Vehicle_search:[#W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nametype_Person_search:\$X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nametype_Vehicle_search:}%y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Anything_to_threaten_or_harm_anyone:r&n
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)object_of_search_Article_for_use_in_theft:}'y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Articles_for_use_in_criminal_damage:j(f
'
_output_shapes
:џџџџџџџџџ
;
_user_specified_name#!object_of_search_Controlled_drugs:c)_
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Crossbows:*{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86object_of_search_Detailed_object_of_search_unavailable:|+x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53object_of_search_Evidence_of_offences_under_the_Act:w,s
'
_output_shapes
:џџџџџџџџџ
H
_user_specified_name0.object_of_search_Evidence_of_wildlife_offences:b-^
'
_output_shapes
:џџџџџџџџџ
3
_user_specified_nameobject_of_search_Firearms:c._
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Fireworks:t/p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Game_or_poaching_equipment:0
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.:k1g
'
_output_shapes
:џџџџџџџџџ
<
_user_specified_name$"object_of_search_Offensive_weapons:q2m
'
_output_shapes
:џџџџџџџџџ
B
_user_specified_name*(object_of_search_Psychoactive_substances:t3p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Seals_or_hunting_equipment:f4b
'
_output_shapes
:џџџџџџџџџ
7
_user_specified_nameobject_of_search_Stolen_goods:]5Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameobject_of_search_dog:`6\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameforce_avon-and-somerset:[7W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_bedfordshire:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	force_btp:]9Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_cambridgeshire:W:S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameforce_cheshire:];Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_city-of-london:X<T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_cleveland:V=R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_cumbria:Y>U
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_derbyshire:a?]
'
_output_shapes
:џџџџџџџџџ
2
_user_specified_nameforce_devon-and-cornwall:U@Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_dorset:UAQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_durham:ZBV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_dyfed-powys:TCP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameforce_essex:^DZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_gloucestershire:XET
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_hampshire:\FX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_hertfordshire:YGU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_humberside:SHO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
force_kent:YIU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_lancashire:]JY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_leicestershire:[KW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_lincolnshire:YLU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_merseyside:[MW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_metropolitan:VNR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_norfolk:ZOV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_north-wales:^PZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_north-yorkshire:_Q[
'
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameforce_northamptonshire:ZRV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_northumbria:\SX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_staffordshire:VTR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_suffolk:UUQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_sussex:\VX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_thames-valley:[WW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_warwickshire:ZXV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_west-mercia:]YY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_west-yorkshire:XZT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_wiltshire
џ

ђ
A__inference_dense_1_layer_call_and_return_conditional_losses_7372

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
§

№
?__inference_dense_layer_call_and_return_conditional_losses_7352

inputs0
matmul_readvariableop_resource:[-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:[*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ[: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ[
 
_user_specified_nameinputs
Бd
М
$__inference_model_layer_call_fn_6909
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_90
unknown:[
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*l
Tine
c2a*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

[\]^_`*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_62382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/21:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/22:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/23:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/24:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/25:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/26:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/27:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/28:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/29:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/30:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/31:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/32:R!N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/33:R"N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/34:R#N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/35:R$N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/36:R%N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/37:R&N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/38:R'N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/39:R(N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/40:R)N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/41:R*N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/42:R+N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/43:R,N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/44:R-N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/45:R.N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/46:R/N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/47:R0N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/48:R1N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/49:R2N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/50:R3N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/51:R4N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/52:R5N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/53:R6N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/54:R7N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/55:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/56:R9N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/57:R:N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/58:R;N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/59:R<N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/60:R=N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/61:R>N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/62:R?N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/63:R@N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/64:RAN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/65:RBN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/66:RCN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/67:RDN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/68:REN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/69:RFN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/70:RGN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/71:RHN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/72:RIN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/73:RJN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/74:RKN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/75:RLN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/76:RMN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/77:RNN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/78:RON
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/79:RPN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/80:RQN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/81:RRN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/82:RSN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/83:RTN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/84:RUN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/85:RVN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/86:RWN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/87:RXN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/88:RYN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/89:RZN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/90
]

E__inference_concatenate_layer_call_and_return_conditional_losses_5735

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_90
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЪ
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90concat/axis:output:0*
N[*
T0*'
_output_shapes
:џџџџџџџџџ[2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ж
_input_shapesФ
С:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O
K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O!K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O"K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O#K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O$K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O%K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O&K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O'K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O(K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O)K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O*K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O+K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O,K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O-K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O.K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O/K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O0K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O1K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O2K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O3K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O4K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O5K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O6K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O7K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O8K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O9K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O:K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O;K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O<K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O=K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O>K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O?K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O@K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OAK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OBK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OCK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ODK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OEK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OFK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OGK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OHK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OIK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OJK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OKK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OLK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OMK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ONK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OOK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OPK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OQK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ORK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OSK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OTK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OUK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OVK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OWK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OXK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OYK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OZK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Й=
ъ

__inference__traced_save_7585
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesР
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesщ

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Л
_input_shapesЉ
І: :[:::::: : : : : : : : : :[::::::[:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:[: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::
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
: :$ 

_output_shapes

:[: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:[: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
§

№
?__inference_dense_layer_call_and_return_conditional_losses_5748

inputs0
matmul_readvariableop_resource:[-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:[*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ[: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ[
 
_user_specified_nameinputs
џ

ђ
A__inference_dense_1_layer_call_and_return_conditional_losses_5765

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Еn
Џ
?__inference_model_layer_call_and_return_conditional_losses_5788

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_90

dense_5749:[

dense_5751:
dense_1_5766:
dense_1_5768:
dense_2_5782:
dense_2_5784:
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCall
concatenate/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90*f
Tin_
]2[*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ[* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_57352
concatenate/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0
dense_5749
dense_5751*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_57482
dense/StatefulPartitionedCallЉ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5766dense_1_5768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_57652!
dense_1/StatefulPartitionedCallЋ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_5782dense_2_5784*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_57812!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityВ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O
K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O!K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O"K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O#K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O$K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O%K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O&K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O'K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O(K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O)K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O*K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O+K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O,K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O-K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O.K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O/K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O0K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O1K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O2K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O3K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O4K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O5K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O6K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O7K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O8K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O9K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O:K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O;K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O<K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O=K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O>K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O?K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O@K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OAK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OBK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OCK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ODK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OEK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OFK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OGK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OHK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OIK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OJK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OKK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OLK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OMK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ONK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OOK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OPK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OQK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ORK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OSK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OTK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OUK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OVK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OWK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OXK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OYK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OZK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Бd
М
$__inference_model_layer_call_fn_6802
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_90
unknown:[
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*l
Tine
c2a*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

[\]^_`*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_57882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/21:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/22:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/23:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/24:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/25:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/26:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/27:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/28:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/29:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/30:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/31:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/32:R!N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/33:R"N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/34:R#N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/35:R$N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/36:R%N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/37:R&N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/38:R'N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/39:R(N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/40:R)N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/41:R*N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/42:R+N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/43:R,N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/44:R-N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/45:R.N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/46:R/N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/47:R0N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/48:R1N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/49:R2N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/50:R3N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/51:R4N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/52:R5N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/53:R6N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/54:R7N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/55:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/56:R9N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/57:R:N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/58:R;N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/59:R<N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/60:R=N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/61:R>N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/62:R?N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/63:R@N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/64:RAN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/65:RBN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/66:RCN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/67:RDN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/68:REN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/69:RFN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/70:RGN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/71:RHN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/72:RIN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/73:RJN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/74:RKN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/75:RLN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/76:RMN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/77:RNN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/78:RON
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/79:RPN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/80:RQN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/81:RRN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/82:RSN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/83:RTN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/84:RUN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/85:RVN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/86:RWN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/87:RXN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/88:RYN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/89:RZN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/90
ч

$__inference_dense_layer_call_fn_7341

inputs
unknown:[
	unknown_0:
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_57482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ[: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ[
 
_user_specified_nameinputs
с`

*__inference_concatenate_layer_call_fn_7236
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_90
identityє

PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90*f
Tin_
]2[*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ[* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_57352
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ж
_input_shapesФ
С:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/21:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/22:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/23:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/24:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/25:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/26:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/27:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/28:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/29:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/30:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/31:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/32:R!N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/33:R"N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/34:R#N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/35:R$N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/36:R%N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/37:R&N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/38:R'N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/39:R(N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/40:R)N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/41:R*N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/42:R+N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/43:R,N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/44:R-N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/45:R.N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/46:R/N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/47:R0N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/48:R1N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/49:R2N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/50:R3N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/51:R4N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/52:R5N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/53:R6N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/54:R7N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/55:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/56:R9N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/57:R:N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/58:R;N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/59:R<N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/60:R=N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/61:R>N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/62:R?N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/63:R@N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/64:RAN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/65:RBN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/66:RCN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/67:RDN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/68:REN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/69:RFN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/70:RGN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/71:RHN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/72:RIN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/73:RJN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/74:RKN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/75:RLN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/76:RMN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/77:RNN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/78:RON
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/79:RPN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/80:RQN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/81:RRN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/82:RSN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/83:RTN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/84:RUN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/85:RVN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/86:RWN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/87:RXN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/88:RYN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/89:RZN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/90
Ѓ

ђ
A__inference_dense_2_layer_call_and_return_conditional_losses_5781

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
z
Ћ
?__inference_model_layer_call_and_return_conditional_losses_7025
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_906
$dense_matmul_readvariableop_resource:[3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpt
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis№
concatenate/concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90 concatenate/concat/axis:output:0*
N[*
T0*'
_output_shapes
:џџџџџџџџџ[2
concatenate/concat
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:[*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

dense/ReluЅ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/ReluЅ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAdds
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/21:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/22:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/23:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/24:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/25:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/26:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/27:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/28:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/29:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/30:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/31:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/32:R!N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/33:R"N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/34:R#N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/35:R$N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/36:R%N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/37:R&N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/38:R'N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/39:R(N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/40:R)N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/41:R*N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/42:R+N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/43:R,N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/44:R-N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/45:R.N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/46:R/N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/47:R0N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/48:R1N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/49:R2N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/50:R3N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/51:R4N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/52:R5N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/53:R6N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/54:R7N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/55:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/56:R9N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/57:R:N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/58:R;N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/59:R<N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/60:R=N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/61:R>N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/62:R?N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/63:R@N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/64:RAN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/65:RBN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/66:RCN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/67:RDN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/68:REN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/69:RFN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/70:RGN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/71:RHN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/72:RIN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/73:RJN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/74:RKN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/75:RLN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/76:RMN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/77:RNN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/78:RON
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/79:RPN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/80:RQN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/81:RRN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/82:RSN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/83:RTN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/84:RUN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/85:RVN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/86:RWN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/87:RXN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/88:RYN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/89:RZN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/90
ы

&__inference_dense_2_layer_call_fn_7381

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_57812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ_
 
E__inference_concatenate_layer_call_and_return_conditional_losses_7332
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_90
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЬ
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90concat/axis:output:0*
N[*
T0*'
_output_shapes
:џџџџџџџџџ[2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ж
_input_shapesФ
С:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/21:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/22:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/23:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/24:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/25:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/26:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/27:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/28:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/29:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/30:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/31:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/32:R!N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/33:R"N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/34:R#N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/35:R$N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/36:R%N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/37:R&N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/38:R'N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/39:R(N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/40:R)N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/41:R*N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/42:R+N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/43:R,N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/44:R-N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/45:R.N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/46:R/N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/47:R0N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/48:R1N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/49:R2N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/50:R3N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/51:R4N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/52:R5N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/53:R6N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/54:R7N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/55:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/56:R9N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/57:R:N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/58:R;N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/59:R<N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/60:R=N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/61:R>N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/62:R?N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/63:R@N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/64:RAN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/65:RBN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/66:RCN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/67:RDN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/68:REN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/69:RFN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/70:RGN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/71:RHN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/72:RIN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/73:RJN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/74:RKN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/75:RLN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/76:RMN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/77:RNN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/78:RON
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/79:RPN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/80:RQN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/81:RRN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/82:RSN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/83:RTN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/84:RUN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/85:RVN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/86:RWN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/87:RXN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/88:RYN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/89:RZN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/90
У

$__inference_model_layer_call_fn_6360

action
involved_person 
self_defined_ethnicity_white 
self_defined_ethnicity_black 
self_defined_ethnicity_asian 
self_defined_ethnicity_other 
self_defined_ethnicity_mixed
gender_female
gender_male
gender_other8
4legislation_aviation_security_act_1982__section_27_19
5legislation_conservation_of_seals_act_1970__section_47
3legislation_criminal_justice_act_1988__section_139bF
Blegislation_criminal_justice_and_public_order_act_1994__section_60-
)legislation_crossbows_act_1987__section_4C
?legislation_customs_and_excise_management_act_1979__section_163)
%legislation_deer_act_1991__section_12?
;legislation_environmental_protection_act_1990__section_34b_-
)legislation_firearms_act_1968__section_47+
'legislation_hunting_act_2004__section_84
0legislation_misuse_of_drugs_act_1971__section_237
3legislation_poaching_prevention_act_1862__section_2@
<legislation_police_and_criminal_evidence_act_1984__section_1@
<legislation_police_and_criminal_evidence_act_1984__section_6:
6legislation_protection_of_badgers_act_1992__section_117
3legislation_psychoactive_substances_act_2016__s36_27
3legislation_psychoactive_substances_act_2016__s37_21
-legislation_public_stores_act_1875__section_6=
9legislation_wildlife_and_countryside_act_1981__section_19#
officer_defined_ethnicity_asian#
officer_defined_ethnicity_black#
officer_defined_ethnicity_mixed#
officer_defined_ethnicity_other#
officer_defined_ethnicity_white"
type_person_and_vehicle_search
type_person_search
type_vehicle_search8
4object_of_search_anything_to_threaten_or_harm_anyone-
)object_of_search_article_for_use_in_theft8
4object_of_search_articles_for_use_in_criminal_damage%
!object_of_search_controlled_drugs
object_of_search_crossbows:
6object_of_search_detailed_object_of_search_unavailable7
3object_of_search_evidence_of_offences_under_the_act2
.object_of_search_evidence_of_wildlife_offences
object_of_search_firearms
object_of_search_fireworks/
+object_of_search_game_or_poaching_equipment?
;object_of_search_goods_on_which_duty_has_not_been_paid_etc_&
"object_of_search_offensive_weapons,
(object_of_search_psychoactive_substances/
+object_of_search_seals_or_hunting_equipment!
object_of_search_stolen_goods
object_of_search_dog
force_avon_and_somerset
force_bedfordshire
	force_btp
force_cambridgeshire
force_cheshire
force_city_of_london
force_cleveland
force_cumbria
force_derbyshire
force_devon_and_cornwall
force_dorset
force_durham
force_dyfed_powys
force_essex
force_gloucestershire
force_hampshire
force_hertfordshire
force_humberside

force_kent
force_lancashire
force_leicestershire
force_lincolnshire
force_merseyside
force_metropolitan
force_norfolk
force_north_wales
force_north_yorkshire
force_northamptonshire
force_northumbria
force_staffordshire
force_suffolk
force_sussex
force_thames_valley
force_warwickshire
force_west_mercia
force_west_yorkshire
force_wiltshire
unknown:[
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallactioninvolved_personself_defined_ethnicity_whiteself_defined_ethnicity_blackself_defined_ethnicity_asianself_defined_ethnicity_otherself_defined_ethnicity_mixedgender_femalegender_malegender_other4legislation_aviation_security_act_1982__section_27_15legislation_conservation_of_seals_act_1970__section_43legislation_criminal_justice_act_1988__section_139bBlegislation_criminal_justice_and_public_order_act_1994__section_60)legislation_crossbows_act_1987__section_4?legislation_customs_and_excise_management_act_1979__section_163%legislation_deer_act_1991__section_12;legislation_environmental_protection_act_1990__section_34b_)legislation_firearms_act_1968__section_47'legislation_hunting_act_2004__section_80legislation_misuse_of_drugs_act_1971__section_233legislation_poaching_prevention_act_1862__section_2<legislation_police_and_criminal_evidence_act_1984__section_1<legislation_police_and_criminal_evidence_act_1984__section_66legislation_protection_of_badgers_act_1992__section_113legislation_psychoactive_substances_act_2016__s36_23legislation_psychoactive_substances_act_2016__s37_2-legislation_public_stores_act_1875__section_69legislation_wildlife_and_countryside_act_1981__section_19officer_defined_ethnicity_asianofficer_defined_ethnicity_blackofficer_defined_ethnicity_mixedofficer_defined_ethnicity_otherofficer_defined_ethnicity_whitetype_person_and_vehicle_searchtype_person_searchtype_vehicle_search4object_of_search_anything_to_threaten_or_harm_anyone)object_of_search_article_for_use_in_theft4object_of_search_articles_for_use_in_criminal_damage!object_of_search_controlled_drugsobject_of_search_crossbows6object_of_search_detailed_object_of_search_unavailable3object_of_search_evidence_of_offences_under_the_act.object_of_search_evidence_of_wildlife_offencesobject_of_search_firearmsobject_of_search_fireworks+object_of_search_game_or_poaching_equipment;object_of_search_goods_on_which_duty_has_not_been_paid_etc_"object_of_search_offensive_weapons(object_of_search_psychoactive_substances+object_of_search_seals_or_hunting_equipmentobject_of_search_stolen_goodsobject_of_search_dogforce_avon_and_somersetforce_bedfordshire	force_btpforce_cambridgeshireforce_cheshireforce_city_of_londonforce_clevelandforce_cumbriaforce_derbyshireforce_devon_and_cornwallforce_dorsetforce_durhamforce_dyfed_powysforce_essexforce_gloucestershireforce_hampshireforce_hertfordshireforce_humberside
force_kentforce_lancashireforce_leicestershireforce_lincolnshireforce_merseysideforce_metropolitanforce_norfolkforce_north_walesforce_north_yorkshireforce_northamptonshireforce_northumbriaforce_staffordshireforce_suffolkforce_sussexforce_thames_valleyforce_warwickshireforce_west_merciaforce_west_yorkshireforce_wiltshireunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*l
Tine
c2a*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

[\]^_`*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_62382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameaction:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinvolved_person:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_white:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_black:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_asian:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_other:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_mixed:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namegender_Female:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namegender_Male:U	Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegender_Other:}
y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64legislation_Aviation_Security_Act_1982__section_27_1:~z
'
_output_shapes
:џџџџџџџџџ
O
_user_specified_name75legislation_Conservation_of_Seals_Act_1970__section_4:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Criminal_Justice_Act_1988__section_139B:
'
_output_shapes
:џџџџџџџџџ
\
_user_specified_nameDBlegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Crossbows_Act_1987__section_4:
'
_output_shapes
:џџџџџџџџџ
Y
_user_specified_nameA?legislation_Customs_and_Excise_Management_Act_1979__section_163:nj
'
_output_shapes
:џџџџџџџџџ
?
_user_specified_name'%legislation_Deer_Act_1991__section_12:
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;legislation_Environmental_Protection_Act_1990__section_34B_:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Firearms_Act_1968__section_47:pl
'
_output_shapes
:џџџџџџџџџ
A
_user_specified_name)'legislation_Hunting_Act_2004__section_8:yu
'
_output_shapes
:џџџџџџџџџ
J
_user_specified_name20legislation_Misuse_of_Drugs_Act_1971__section_23:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Poaching_Prevention_Act_1862__section_2:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_1:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_6:{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86legislation_Protection_of_Badgers_Act_1992__section_11:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s36_2:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s37_2:vr
'
_output_shapes
:џџџџџџџџџ
G
_user_specified_name/-legislation_Public_Stores_Act_1875__section_6:~
'
_output_shapes
:џџџџџџџџџ
S
_user_specified_name;9legislation_Wildlife_and_Countryside_Act_1981__section_19:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Asian:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Black:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Mixed:h d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Other:h!d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_White:g"c
'
_output_shapes
:џџџџџџџџџ
8
_user_specified_name type_Person_and_Vehicle_search:[#W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nametype_Person_search:\$X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nametype_Vehicle_search:}%y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Anything_to_threaten_or_harm_anyone:r&n
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)object_of_search_Article_for_use_in_theft:}'y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Articles_for_use_in_criminal_damage:j(f
'
_output_shapes
:џџџџџџџџџ
;
_user_specified_name#!object_of_search_Controlled_drugs:c)_
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Crossbows:*{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86object_of_search_Detailed_object_of_search_unavailable:|+x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53object_of_search_Evidence_of_offences_under_the_Act:w,s
'
_output_shapes
:џџџџџџџџџ
H
_user_specified_name0.object_of_search_Evidence_of_wildlife_offences:b-^
'
_output_shapes
:џџџџџџџџџ
3
_user_specified_nameobject_of_search_Firearms:c._
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Fireworks:t/p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Game_or_poaching_equipment:0
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.:k1g
'
_output_shapes
:џџџџџџџџџ
<
_user_specified_name$"object_of_search_Offensive_weapons:q2m
'
_output_shapes
:џџџџџџџџџ
B
_user_specified_name*(object_of_search_Psychoactive_substances:t3p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Seals_or_hunting_equipment:f4b
'
_output_shapes
:џџџџџџџџџ
7
_user_specified_nameobject_of_search_Stolen_goods:]5Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameobject_of_search_dog:`6\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameforce_avon-and-somerset:[7W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_bedfordshire:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	force_btp:]9Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_cambridgeshire:W:S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameforce_cheshire:];Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_city-of-london:X<T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_cleveland:V=R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_cumbria:Y>U
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_derbyshire:a?]
'
_output_shapes
:џџџџџџџџџ
2
_user_specified_nameforce_devon-and-cornwall:U@Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_dorset:UAQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_durham:ZBV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_dyfed-powys:TCP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameforce_essex:^DZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_gloucestershire:XET
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_hampshire:\FX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_hertfordshire:YGU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_humberside:SHO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
force_kent:YIU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_lancashire:]JY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_leicestershire:[KW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_lincolnshire:YLU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_merseyside:[MW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_metropolitan:VNR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_norfolk:ZOV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_north-wales:^PZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_north-yorkshire:_Q[
'
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameforce_northamptonshire:ZRV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_northumbria:\SX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_staffordshire:VTR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_suffolk:UUQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_sussex:\VX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_thames-valley:[WW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_warwickshire:ZXV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_west-mercia:]YY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_west-yorkshire:XZT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_wiltshire
ъt
в
 __inference__traced_restore_7676
file_prefix/
assignvariableop_dense_kernel:[+
assignvariableop_1_dense_bias:3
!assignvariableop_2_dense_1_kernel:-
assignvariableop_3_dense_1_bias:3
!assignvariableop_4_dense_2_kernel:-
assignvariableop_5_dense_2_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: 9
'assignvariableop_15_adam_dense_kernel_m:[3
%assignvariableop_16_adam_dense_bias_m:;
)assignvariableop_17_adam_dense_1_kernel_m:5
'assignvariableop_18_adam_dense_1_bias_m:;
)assignvariableop_19_adam_dense_2_kernel_m:5
'assignvariableop_20_adam_dense_2_bias_m:9
'assignvariableop_21_adam_dense_kernel_v:[3
%assignvariableop_22_adam_dense_bias_v:;
)assignvariableop_23_adam_dense_1_kernel_v:5
'assignvariableop_24_adam_dense_1_bias_v:;
)assignvariableop_25_adam_dense_2_kernel_v:5
'assignvariableop_26_adam_dense_2_bias_v:
identity_28ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЦ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesИ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ђ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Є
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Є
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6Ё
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѓ
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ѓ
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ђ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ў
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ё
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ё
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ѓ
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ѓ
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Џ
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16­
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Б
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Џ
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Б
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Џ
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Џ
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22­
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Б
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Џ
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Б
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Џ
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpА
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27f
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_28
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
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
У

$__inference_model_layer_call_fn_5803

action
involved_person 
self_defined_ethnicity_white 
self_defined_ethnicity_black 
self_defined_ethnicity_asian 
self_defined_ethnicity_other 
self_defined_ethnicity_mixed
gender_female
gender_male
gender_other8
4legislation_aviation_security_act_1982__section_27_19
5legislation_conservation_of_seals_act_1970__section_47
3legislation_criminal_justice_act_1988__section_139bF
Blegislation_criminal_justice_and_public_order_act_1994__section_60-
)legislation_crossbows_act_1987__section_4C
?legislation_customs_and_excise_management_act_1979__section_163)
%legislation_deer_act_1991__section_12?
;legislation_environmental_protection_act_1990__section_34b_-
)legislation_firearms_act_1968__section_47+
'legislation_hunting_act_2004__section_84
0legislation_misuse_of_drugs_act_1971__section_237
3legislation_poaching_prevention_act_1862__section_2@
<legislation_police_and_criminal_evidence_act_1984__section_1@
<legislation_police_and_criminal_evidence_act_1984__section_6:
6legislation_protection_of_badgers_act_1992__section_117
3legislation_psychoactive_substances_act_2016__s36_27
3legislation_psychoactive_substances_act_2016__s37_21
-legislation_public_stores_act_1875__section_6=
9legislation_wildlife_and_countryside_act_1981__section_19#
officer_defined_ethnicity_asian#
officer_defined_ethnicity_black#
officer_defined_ethnicity_mixed#
officer_defined_ethnicity_other#
officer_defined_ethnicity_white"
type_person_and_vehicle_search
type_person_search
type_vehicle_search8
4object_of_search_anything_to_threaten_or_harm_anyone-
)object_of_search_article_for_use_in_theft8
4object_of_search_articles_for_use_in_criminal_damage%
!object_of_search_controlled_drugs
object_of_search_crossbows:
6object_of_search_detailed_object_of_search_unavailable7
3object_of_search_evidence_of_offences_under_the_act2
.object_of_search_evidence_of_wildlife_offences
object_of_search_firearms
object_of_search_fireworks/
+object_of_search_game_or_poaching_equipment?
;object_of_search_goods_on_which_duty_has_not_been_paid_etc_&
"object_of_search_offensive_weapons,
(object_of_search_psychoactive_substances/
+object_of_search_seals_or_hunting_equipment!
object_of_search_stolen_goods
object_of_search_dog
force_avon_and_somerset
force_bedfordshire
	force_btp
force_cambridgeshire
force_cheshire
force_city_of_london
force_cleveland
force_cumbria
force_derbyshire
force_devon_and_cornwall
force_dorset
force_durham
force_dyfed_powys
force_essex
force_gloucestershire
force_hampshire
force_hertfordshire
force_humberside

force_kent
force_lancashire
force_leicestershire
force_lincolnshire
force_merseyside
force_metropolitan
force_norfolk
force_north_wales
force_north_yorkshire
force_northamptonshire
force_northumbria
force_staffordshire
force_suffolk
force_sussex
force_thames_valley
force_warwickshire
force_west_mercia
force_west_yorkshire
force_wiltshire
unknown:[
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identityЂStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallactioninvolved_personself_defined_ethnicity_whiteself_defined_ethnicity_blackself_defined_ethnicity_asianself_defined_ethnicity_otherself_defined_ethnicity_mixedgender_femalegender_malegender_other4legislation_aviation_security_act_1982__section_27_15legislation_conservation_of_seals_act_1970__section_43legislation_criminal_justice_act_1988__section_139bBlegislation_criminal_justice_and_public_order_act_1994__section_60)legislation_crossbows_act_1987__section_4?legislation_customs_and_excise_management_act_1979__section_163%legislation_deer_act_1991__section_12;legislation_environmental_protection_act_1990__section_34b_)legislation_firearms_act_1968__section_47'legislation_hunting_act_2004__section_80legislation_misuse_of_drugs_act_1971__section_233legislation_poaching_prevention_act_1862__section_2<legislation_police_and_criminal_evidence_act_1984__section_1<legislation_police_and_criminal_evidence_act_1984__section_66legislation_protection_of_badgers_act_1992__section_113legislation_psychoactive_substances_act_2016__s36_23legislation_psychoactive_substances_act_2016__s37_2-legislation_public_stores_act_1875__section_69legislation_wildlife_and_countryside_act_1981__section_19officer_defined_ethnicity_asianofficer_defined_ethnicity_blackofficer_defined_ethnicity_mixedofficer_defined_ethnicity_otherofficer_defined_ethnicity_whitetype_person_and_vehicle_searchtype_person_searchtype_vehicle_search4object_of_search_anything_to_threaten_or_harm_anyone)object_of_search_article_for_use_in_theft4object_of_search_articles_for_use_in_criminal_damage!object_of_search_controlled_drugsobject_of_search_crossbows6object_of_search_detailed_object_of_search_unavailable3object_of_search_evidence_of_offences_under_the_act.object_of_search_evidence_of_wildlife_offencesobject_of_search_firearmsobject_of_search_fireworks+object_of_search_game_or_poaching_equipment;object_of_search_goods_on_which_duty_has_not_been_paid_etc_"object_of_search_offensive_weapons(object_of_search_psychoactive_substances+object_of_search_seals_or_hunting_equipmentobject_of_search_stolen_goodsobject_of_search_dogforce_avon_and_somersetforce_bedfordshire	force_btpforce_cambridgeshireforce_cheshireforce_city_of_londonforce_clevelandforce_cumbriaforce_derbyshireforce_devon_and_cornwallforce_dorsetforce_durhamforce_dyfed_powysforce_essexforce_gloucestershireforce_hampshireforce_hertfordshireforce_humberside
force_kentforce_lancashireforce_leicestershireforce_lincolnshireforce_merseysideforce_metropolitanforce_norfolkforce_north_walesforce_north_yorkshireforce_northamptonshireforce_northumbriaforce_staffordshireforce_suffolkforce_sussexforce_thames_valleyforce_warwickshireforce_west_merciaforce_west_yorkshireforce_wiltshireunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*l
Tine
c2a*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

[\]^_`*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_57882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameaction:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinvolved_person:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_white:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_black:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_asian:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_other:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_mixed:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namegender_Female:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namegender_Male:U	Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegender_Other:}
y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64legislation_Aviation_Security_Act_1982__section_27_1:~z
'
_output_shapes
:џџџџџџџџџ
O
_user_specified_name75legislation_Conservation_of_Seals_Act_1970__section_4:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Criminal_Justice_Act_1988__section_139B:
'
_output_shapes
:џџџџџџџџџ
\
_user_specified_nameDBlegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Crossbows_Act_1987__section_4:
'
_output_shapes
:џџџџџџџџџ
Y
_user_specified_nameA?legislation_Customs_and_Excise_Management_Act_1979__section_163:nj
'
_output_shapes
:џџџџџџџџџ
?
_user_specified_name'%legislation_Deer_Act_1991__section_12:
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;legislation_Environmental_Protection_Act_1990__section_34B_:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Firearms_Act_1968__section_47:pl
'
_output_shapes
:џџџџџџџџџ
A
_user_specified_name)'legislation_Hunting_Act_2004__section_8:yu
'
_output_shapes
:џџџџџџџџџ
J
_user_specified_name20legislation_Misuse_of_Drugs_Act_1971__section_23:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Poaching_Prevention_Act_1862__section_2:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_1:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_6:{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86legislation_Protection_of_Badgers_Act_1992__section_11:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s36_2:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s37_2:vr
'
_output_shapes
:џџџџџџџџџ
G
_user_specified_name/-legislation_Public_Stores_Act_1875__section_6:~
'
_output_shapes
:џџџџџџџџџ
S
_user_specified_name;9legislation_Wildlife_and_Countryside_Act_1981__section_19:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Asian:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Black:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Mixed:h d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Other:h!d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_White:g"c
'
_output_shapes
:џџџџџџџџџ
8
_user_specified_name type_Person_and_Vehicle_search:[#W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nametype_Person_search:\$X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nametype_Vehicle_search:}%y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Anything_to_threaten_or_harm_anyone:r&n
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)object_of_search_Article_for_use_in_theft:}'y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Articles_for_use_in_criminal_damage:j(f
'
_output_shapes
:џџџџџџџџџ
;
_user_specified_name#!object_of_search_Controlled_drugs:c)_
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Crossbows:*{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86object_of_search_Detailed_object_of_search_unavailable:|+x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53object_of_search_Evidence_of_offences_under_the_Act:w,s
'
_output_shapes
:џџџџџџџџџ
H
_user_specified_name0.object_of_search_Evidence_of_wildlife_offences:b-^
'
_output_shapes
:џџџџџџџџџ
3
_user_specified_nameobject_of_search_Firearms:c._
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Fireworks:t/p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Game_or_poaching_equipment:0
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.:k1g
'
_output_shapes
:џџџџџџџџџ
<
_user_specified_name$"object_of_search_Offensive_weapons:q2m
'
_output_shapes
:џџџџџџџџџ
B
_user_specified_name*(object_of_search_Psychoactive_substances:t3p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Seals_or_hunting_equipment:f4b
'
_output_shapes
:џџџџџџџџџ
7
_user_specified_nameobject_of_search_Stolen_goods:]5Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameobject_of_search_dog:`6\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameforce_avon-and-somerset:[7W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_bedfordshire:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	force_btp:]9Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_cambridgeshire:W:S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameforce_cheshire:];Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_city-of-london:X<T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_cleveland:V=R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_cumbria:Y>U
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_derbyshire:a?]
'
_output_shapes
:џџџџџџџџџ
2
_user_specified_nameforce_devon-and-cornwall:U@Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_dorset:UAQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_durham:ZBV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_dyfed-powys:TCP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameforce_essex:^DZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_gloucestershire:XET
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_hampshire:\FX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_hertfordshire:YGU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_humberside:SHO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
force_kent:YIU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_lancashire:]JY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_leicestershire:[KW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_lincolnshire:YLU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_merseyside:[MW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_metropolitan:VNR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_norfolk:ZOV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_north-wales:^PZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_north-yorkshire:_Q[
'
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameforce_northamptonshire:ZRV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_northumbria:\SX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_staffordshire:VTR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_suffolk:UUQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_sussex:\VX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_thames-valley:[WW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_warwickshire:ZXV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_west-mercia:]YY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_west-yorkshire:XZT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_wiltshire
в

?__inference_model_layer_call_and_return_conditional_losses_6580

action
involved_person 
self_defined_ethnicity_white 
self_defined_ethnicity_black 
self_defined_ethnicity_asian 
self_defined_ethnicity_other 
self_defined_ethnicity_mixed
gender_female
gender_male
gender_other8
4legislation_aviation_security_act_1982__section_27_19
5legislation_conservation_of_seals_act_1970__section_47
3legislation_criminal_justice_act_1988__section_139bF
Blegislation_criminal_justice_and_public_order_act_1994__section_60-
)legislation_crossbows_act_1987__section_4C
?legislation_customs_and_excise_management_act_1979__section_163)
%legislation_deer_act_1991__section_12?
;legislation_environmental_protection_act_1990__section_34b_-
)legislation_firearms_act_1968__section_47+
'legislation_hunting_act_2004__section_84
0legislation_misuse_of_drugs_act_1971__section_237
3legislation_poaching_prevention_act_1862__section_2@
<legislation_police_and_criminal_evidence_act_1984__section_1@
<legislation_police_and_criminal_evidence_act_1984__section_6:
6legislation_protection_of_badgers_act_1992__section_117
3legislation_psychoactive_substances_act_2016__s36_27
3legislation_psychoactive_substances_act_2016__s37_21
-legislation_public_stores_act_1875__section_6=
9legislation_wildlife_and_countryside_act_1981__section_19#
officer_defined_ethnicity_asian#
officer_defined_ethnicity_black#
officer_defined_ethnicity_mixed#
officer_defined_ethnicity_other#
officer_defined_ethnicity_white"
type_person_and_vehicle_search
type_person_search
type_vehicle_search8
4object_of_search_anything_to_threaten_or_harm_anyone-
)object_of_search_article_for_use_in_theft8
4object_of_search_articles_for_use_in_criminal_damage%
!object_of_search_controlled_drugs
object_of_search_crossbows:
6object_of_search_detailed_object_of_search_unavailable7
3object_of_search_evidence_of_offences_under_the_act2
.object_of_search_evidence_of_wildlife_offences
object_of_search_firearms
object_of_search_fireworks/
+object_of_search_game_or_poaching_equipment?
;object_of_search_goods_on_which_duty_has_not_been_paid_etc_&
"object_of_search_offensive_weapons,
(object_of_search_psychoactive_substances/
+object_of_search_seals_or_hunting_equipment!
object_of_search_stolen_goods
object_of_search_dog
force_avon_and_somerset
force_bedfordshire
	force_btp
force_cambridgeshire
force_cheshire
force_city_of_london
force_cleveland
force_cumbria
force_derbyshire
force_devon_and_cornwall
force_dorset
force_durham
force_dyfed_powys
force_essex
force_gloucestershire
force_hampshire
force_hertfordshire
force_humberside

force_kent
force_lancashire
force_leicestershire
force_lincolnshire
force_merseyside
force_metropolitan
force_norfolk
force_north_wales
force_north_yorkshire
force_northamptonshire
force_northumbria
force_staffordshire
force_suffolk
force_sussex
force_thames_valley
force_warwickshire
force_west_mercia
force_west_yorkshire
force_wiltshire

dense_6564:[

dense_6566:
dense_1_6569:
dense_1_6571:
dense_2_6574:
dense_2_6576:
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallу
concatenate/PartitionedCallPartitionedCallactioninvolved_personself_defined_ethnicity_whiteself_defined_ethnicity_blackself_defined_ethnicity_asianself_defined_ethnicity_otherself_defined_ethnicity_mixedgender_femalegender_malegender_other4legislation_aviation_security_act_1982__section_27_15legislation_conservation_of_seals_act_1970__section_43legislation_criminal_justice_act_1988__section_139bBlegislation_criminal_justice_and_public_order_act_1994__section_60)legislation_crossbows_act_1987__section_4?legislation_customs_and_excise_management_act_1979__section_163%legislation_deer_act_1991__section_12;legislation_environmental_protection_act_1990__section_34b_)legislation_firearms_act_1968__section_47'legislation_hunting_act_2004__section_80legislation_misuse_of_drugs_act_1971__section_233legislation_poaching_prevention_act_1862__section_2<legislation_police_and_criminal_evidence_act_1984__section_1<legislation_police_and_criminal_evidence_act_1984__section_66legislation_protection_of_badgers_act_1992__section_113legislation_psychoactive_substances_act_2016__s36_23legislation_psychoactive_substances_act_2016__s37_2-legislation_public_stores_act_1875__section_69legislation_wildlife_and_countryside_act_1981__section_19officer_defined_ethnicity_asianofficer_defined_ethnicity_blackofficer_defined_ethnicity_mixedofficer_defined_ethnicity_otherofficer_defined_ethnicity_whitetype_person_and_vehicle_searchtype_person_searchtype_vehicle_search4object_of_search_anything_to_threaten_or_harm_anyone)object_of_search_article_for_use_in_theft4object_of_search_articles_for_use_in_criminal_damage!object_of_search_controlled_drugsobject_of_search_crossbows6object_of_search_detailed_object_of_search_unavailable3object_of_search_evidence_of_offences_under_the_act.object_of_search_evidence_of_wildlife_offencesobject_of_search_firearmsobject_of_search_fireworks+object_of_search_game_or_poaching_equipment;object_of_search_goods_on_which_duty_has_not_been_paid_etc_"object_of_search_offensive_weapons(object_of_search_psychoactive_substances+object_of_search_seals_or_hunting_equipmentobject_of_search_stolen_goodsobject_of_search_dogforce_avon_and_somersetforce_bedfordshire	force_btpforce_cambridgeshireforce_cheshireforce_city_of_londonforce_clevelandforce_cumbriaforce_derbyshireforce_devon_and_cornwallforce_dorsetforce_durhamforce_dyfed_powysforce_essexforce_gloucestershireforce_hampshireforce_hertfordshireforce_humberside
force_kentforce_lancashireforce_leicestershireforce_lincolnshireforce_merseysideforce_metropolitanforce_norfolkforce_north_walesforce_north_yorkshireforce_northamptonshireforce_northumbriaforce_staffordshireforce_suffolkforce_sussexforce_thames_valleyforce_warwickshireforce_west_merciaforce_west_yorkshireforce_wiltshire*f
Tin_
]2[*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ[* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_57352
concatenate/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0
dense_6564
dense_6566*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_57482
dense/StatefulPartitionedCallЉ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6569dense_1_6571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_57652!
dense_1/StatefulPartitionedCallЋ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6574dense_2_6576*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_57812!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityВ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameaction:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinvolved_person:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_white:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_black:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_asian:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_other:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_mixed:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namegender_Female:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namegender_Male:U	Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegender_Other:}
y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64legislation_Aviation_Security_Act_1982__section_27_1:~z
'
_output_shapes
:џџџџџџџџџ
O
_user_specified_name75legislation_Conservation_of_Seals_Act_1970__section_4:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Criminal_Justice_Act_1988__section_139B:
'
_output_shapes
:џџџџџџџџџ
\
_user_specified_nameDBlegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Crossbows_Act_1987__section_4:
'
_output_shapes
:џџџџџџџџџ
Y
_user_specified_nameA?legislation_Customs_and_Excise_Management_Act_1979__section_163:nj
'
_output_shapes
:џџџџџџџџџ
?
_user_specified_name'%legislation_Deer_Act_1991__section_12:
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;legislation_Environmental_Protection_Act_1990__section_34B_:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Firearms_Act_1968__section_47:pl
'
_output_shapes
:џџџџџџџџџ
A
_user_specified_name)'legislation_Hunting_Act_2004__section_8:yu
'
_output_shapes
:џџџџџџџџџ
J
_user_specified_name20legislation_Misuse_of_Drugs_Act_1971__section_23:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Poaching_Prevention_Act_1862__section_2:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_1:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_6:{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86legislation_Protection_of_Badgers_Act_1992__section_11:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s36_2:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s37_2:vr
'
_output_shapes
:џџџџџџџџџ
G
_user_specified_name/-legislation_Public_Stores_Act_1875__section_6:~
'
_output_shapes
:џџџџџџџџџ
S
_user_specified_name;9legislation_Wildlife_and_Countryside_Act_1981__section_19:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Asian:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Black:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Mixed:h d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Other:h!d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_White:g"c
'
_output_shapes
:џџџџџџџџџ
8
_user_specified_name type_Person_and_Vehicle_search:[#W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nametype_Person_search:\$X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nametype_Vehicle_search:}%y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Anything_to_threaten_or_harm_anyone:r&n
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)object_of_search_Article_for_use_in_theft:}'y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Articles_for_use_in_criminal_damage:j(f
'
_output_shapes
:џџџџџџџџџ
;
_user_specified_name#!object_of_search_Controlled_drugs:c)_
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Crossbows:*{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86object_of_search_Detailed_object_of_search_unavailable:|+x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53object_of_search_Evidence_of_offences_under_the_Act:w,s
'
_output_shapes
:џџџџџџџџџ
H
_user_specified_name0.object_of_search_Evidence_of_wildlife_offences:b-^
'
_output_shapes
:џџџџџџџџџ
3
_user_specified_nameobject_of_search_Firearms:c._
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Fireworks:t/p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Game_or_poaching_equipment:0
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.:k1g
'
_output_shapes
:џџџџџџџџџ
<
_user_specified_name$"object_of_search_Offensive_weapons:q2m
'
_output_shapes
:џџџџџџџџџ
B
_user_specified_name*(object_of_search_Psychoactive_substances:t3p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Seals_or_hunting_equipment:f4b
'
_output_shapes
:џџџџџџџџџ
7
_user_specified_nameobject_of_search_Stolen_goods:]5Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameobject_of_search_dog:`6\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameforce_avon-and-somerset:[7W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_bedfordshire:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	force_btp:]9Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_cambridgeshire:W:S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameforce_cheshire:];Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_city-of-london:X<T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_cleveland:V=R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_cumbria:Y>U
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_derbyshire:a?]
'
_output_shapes
:џџџџџџџџџ
2
_user_specified_nameforce_devon-and-cornwall:U@Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_dorset:UAQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_durham:ZBV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_dyfed-powys:TCP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameforce_essex:^DZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_gloucestershire:XET
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_hampshire:\FX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_hertfordshire:YGU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_humberside:SHO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
force_kent:YIU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_lancashire:]JY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_leicestershire:[KW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_lincolnshire:YLU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_merseyside:[MW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_metropolitan:VNR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_norfolk:ZOV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_north-wales:^PZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_north-yorkshire:_Q[
'
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameforce_northamptonshire:ZRV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_northumbria:\SX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_staffordshire:VTR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_suffolk:UUQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_sussex:\VX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_thames-valley:[WW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_warwickshire:ZXV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_west-mercia:]YY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_west-yorkshire:XZT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_wiltshire
Ё

"__inference_signature_wrapper_6695

action
force_avon_and_somerset
force_bedfordshire
	force_btp
force_cambridgeshire
force_cheshire
force_city_of_london
force_cleveland
force_cumbria
force_derbyshire
force_devon_and_cornwall
force_dorset
force_durham
force_dyfed_powys
force_essex
force_gloucestershire
force_hampshire
force_hertfordshire
force_humberside

force_kent
force_lancashire
force_leicestershire
force_lincolnshire
force_merseyside
force_metropolitan
force_norfolk
force_north_wales
force_north_yorkshire
force_northamptonshire
force_northumbria
force_staffordshire
force_suffolk
force_sussex
force_thames_valley
force_warwickshire
force_west_mercia
force_west_yorkshire
force_wiltshire
gender_female
gender_male
gender_other
involved_person8
4legislation_aviation_security_act_1982__section_27_19
5legislation_conservation_of_seals_act_1970__section_47
3legislation_criminal_justice_act_1988__section_139bF
Blegislation_criminal_justice_and_public_order_act_1994__section_60-
)legislation_crossbows_act_1987__section_4C
?legislation_customs_and_excise_management_act_1979__section_163)
%legislation_deer_act_1991__section_12?
;legislation_environmental_protection_act_1990__section_34b_-
)legislation_firearms_act_1968__section_47+
'legislation_hunting_act_2004__section_84
0legislation_misuse_of_drugs_act_1971__section_237
3legislation_poaching_prevention_act_1862__section_2@
<legislation_police_and_criminal_evidence_act_1984__section_1@
<legislation_police_and_criminal_evidence_act_1984__section_6:
6legislation_protection_of_badgers_act_1992__section_117
3legislation_psychoactive_substances_act_2016__s36_27
3legislation_psychoactive_substances_act_2016__s37_21
-legislation_public_stores_act_1875__section_6=
9legislation_wildlife_and_countryside_act_1981__section_198
4object_of_search_anything_to_threaten_or_harm_anyone-
)object_of_search_article_for_use_in_theft8
4object_of_search_articles_for_use_in_criminal_damage%
!object_of_search_controlled_drugs
object_of_search_crossbows:
6object_of_search_detailed_object_of_search_unavailable7
3object_of_search_evidence_of_offences_under_the_act2
.object_of_search_evidence_of_wildlife_offences
object_of_search_firearms
object_of_search_fireworks/
+object_of_search_game_or_poaching_equipment?
;object_of_search_goods_on_which_duty_has_not_been_paid_etc_&
"object_of_search_offensive_weapons,
(object_of_search_psychoactive_substances/
+object_of_search_seals_or_hunting_equipment!
object_of_search_stolen_goods
object_of_search_dog#
officer_defined_ethnicity_asian#
officer_defined_ethnicity_black#
officer_defined_ethnicity_mixed#
officer_defined_ethnicity_other#
officer_defined_ethnicity_white 
self_defined_ethnicity_asian 
self_defined_ethnicity_black 
self_defined_ethnicity_mixed 
self_defined_ethnicity_other 
self_defined_ethnicity_white"
type_person_and_vehicle_search
type_person_search
type_vehicle_search
unknown:[
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallactioninvolved_personself_defined_ethnicity_whiteself_defined_ethnicity_blackself_defined_ethnicity_asianself_defined_ethnicity_otherself_defined_ethnicity_mixedgender_femalegender_malegender_other4legislation_aviation_security_act_1982__section_27_15legislation_conservation_of_seals_act_1970__section_43legislation_criminal_justice_act_1988__section_139bBlegislation_criminal_justice_and_public_order_act_1994__section_60)legislation_crossbows_act_1987__section_4?legislation_customs_and_excise_management_act_1979__section_163%legislation_deer_act_1991__section_12;legislation_environmental_protection_act_1990__section_34b_)legislation_firearms_act_1968__section_47'legislation_hunting_act_2004__section_80legislation_misuse_of_drugs_act_1971__section_233legislation_poaching_prevention_act_1862__section_2<legislation_police_and_criminal_evidence_act_1984__section_1<legislation_police_and_criminal_evidence_act_1984__section_66legislation_protection_of_badgers_act_1992__section_113legislation_psychoactive_substances_act_2016__s36_23legislation_psychoactive_substances_act_2016__s37_2-legislation_public_stores_act_1875__section_69legislation_wildlife_and_countryside_act_1981__section_19officer_defined_ethnicity_asianofficer_defined_ethnicity_blackofficer_defined_ethnicity_mixedofficer_defined_ethnicity_otherofficer_defined_ethnicity_whitetype_person_and_vehicle_searchtype_person_searchtype_vehicle_search4object_of_search_anything_to_threaten_or_harm_anyone)object_of_search_article_for_use_in_theft4object_of_search_articles_for_use_in_criminal_damage!object_of_search_controlled_drugsobject_of_search_crossbows6object_of_search_detailed_object_of_search_unavailable3object_of_search_evidence_of_offences_under_the_act.object_of_search_evidence_of_wildlife_offencesobject_of_search_firearmsobject_of_search_fireworks+object_of_search_game_or_poaching_equipment;object_of_search_goods_on_which_duty_has_not_been_paid_etc_"object_of_search_offensive_weapons(object_of_search_psychoactive_substances+object_of_search_seals_or_hunting_equipmentobject_of_search_stolen_goodsobject_of_search_dogforce_avon_and_somersetforce_bedfordshire	force_btpforce_cambridgeshireforce_cheshireforce_city_of_londonforce_clevelandforce_cumbriaforce_derbyshireforce_devon_and_cornwallforce_dorsetforce_durhamforce_dyfed_powysforce_essexforce_gloucestershireforce_hampshireforce_hertfordshireforce_humberside
force_kentforce_lancashireforce_leicestershireforce_lincolnshireforce_merseysideforce_metropolitanforce_norfolkforce_north_walesforce_north_yorkshireforce_northamptonshireforce_northumbriaforce_staffordshireforce_suffolkforce_sussexforce_thames_valleyforce_warwickshireforce_west_merciaforce_west_yorkshireforce_wiltshireunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*l
Tine
c2a*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

[\]^_`*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_54522
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameaction:`\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameforce_avon-and-somerset:[W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_bedfordshire:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	force_btp:]Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_cambridgeshire:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameforce_cheshire:]Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_city-of-london:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_cleveland:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_cumbria:Y	U
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_derbyshire:a
]
'
_output_shapes
:џџџџџџџџџ
2
_user_specified_nameforce_devon-and-cornwall:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_dorset:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_durham:ZV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_dyfed-powys:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameforce_essex:^Z
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_gloucestershire:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_hampshire:\X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_hertfordshire:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_humberside:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
force_kent:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_lancashire:]Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_leicestershire:[W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_lincolnshire:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_merseyside:[W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_metropolitan:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_norfolk:ZV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_north-wales:^Z
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_north-yorkshire:_[
'
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameforce_northamptonshire:ZV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_northumbria:\X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_staffordshire:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_suffolk:U Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_sussex:\!X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_thames-valley:["W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_warwickshire:Z#V
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_west-mercia:]$Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_west-yorkshire:X%T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_wiltshire:V&R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namegender_Female:T'P
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namegender_Male:U(Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegender_Other:X)T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinvolved_person:}*y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64legislation_Aviation_Security_Act_1982__section_27_1:~+z
'
_output_shapes
:џџџџџџџџџ
O
_user_specified_name75legislation_Conservation_of_Seals_Act_1970__section_4:|,x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Criminal_Justice_Act_1988__section_139B:-
'
_output_shapes
:џџџџџџџџџ
\
_user_specified_nameDBlegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60:r.n
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Crossbows_Act_1987__section_4:/
'
_output_shapes
:џџџџџџџџџ
Y
_user_specified_nameA?legislation_Customs_and_Excise_Management_Act_1979__section_163:n0j
'
_output_shapes
:џџџџџџџџџ
?
_user_specified_name'%legislation_Deer_Act_1991__section_12:1
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;legislation_Environmental_Protection_Act_1990__section_34B_:r2n
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Firearms_Act_1968__section_47:p3l
'
_output_shapes
:џџџџџџџџџ
A
_user_specified_name)'legislation_Hunting_Act_2004__section_8:y4u
'
_output_shapes
:џџџџџџџџџ
J
_user_specified_name20legislation_Misuse_of_Drugs_Act_1971__section_23:|5x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Poaching_Prevention_Act_1862__section_2:6
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_1:7
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_6:8{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86legislation_Protection_of_Badgers_Act_1992__section_11:|9x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s36_2:|:x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s37_2:v;r
'
_output_shapes
:џџџџџџџџџ
G
_user_specified_name/-legislation_Public_Stores_Act_1875__section_6:<~
'
_output_shapes
:џџџџџџџџџ
S
_user_specified_name;9legislation_Wildlife_and_Countryside_Act_1981__section_19:}=y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Anything_to_threaten_or_harm_anyone:r>n
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)object_of_search_Article_for_use_in_theft:}?y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Articles_for_use_in_criminal_damage:j@f
'
_output_shapes
:џџџџџџџџџ
;
_user_specified_name#!object_of_search_Controlled_drugs:cA_
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Crossbows:B{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86object_of_search_Detailed_object_of_search_unavailable:|Cx
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53object_of_search_Evidence_of_offences_under_the_Act:wDs
'
_output_shapes
:џџџџџџџџџ
H
_user_specified_name0.object_of_search_Evidence_of_wildlife_offences:bE^
'
_output_shapes
:џџџџџџџџџ
3
_user_specified_nameobject_of_search_Firearms:cF_
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Fireworks:tGp
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Game_or_poaching_equipment:H
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.:kIg
'
_output_shapes
:џџџџџџџџџ
<
_user_specified_name$"object_of_search_Offensive_weapons:qJm
'
_output_shapes
:џџџџџџџџџ
B
_user_specified_name*(object_of_search_Psychoactive_substances:tKp
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Seals_or_hunting_equipment:fLb
'
_output_shapes
:џџџџџџџџџ
7
_user_specified_nameobject_of_search_Stolen_goods:]MY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameobject_of_search_dog:hNd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Asian:hOd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Black:hPd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Mixed:hQd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Other:hRd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_White:eSa
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_asian:eTa
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_black:eUa
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_mixed:eVa
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_other:eWa
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_white:gXc
'
_output_shapes
:џџџџџџџџџ
8
_user_specified_name type_Person_and_Vehicle_search:[YW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nametype_Person_search:\ZX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nametype_Vehicle_search
Ѓ

ђ
A__inference_dense_2_layer_call_and_return_conditional_losses_7391

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
Њ
__inference__wrapped_model_5452

action
involved_person 
self_defined_ethnicity_white 
self_defined_ethnicity_black 
self_defined_ethnicity_asian 
self_defined_ethnicity_other 
self_defined_ethnicity_mixed
gender_female
gender_male
gender_other8
4legislation_aviation_security_act_1982__section_27_19
5legislation_conservation_of_seals_act_1970__section_47
3legislation_criminal_justice_act_1988__section_139bF
Blegislation_criminal_justice_and_public_order_act_1994__section_60-
)legislation_crossbows_act_1987__section_4C
?legislation_customs_and_excise_management_act_1979__section_163)
%legislation_deer_act_1991__section_12?
;legislation_environmental_protection_act_1990__section_34b_-
)legislation_firearms_act_1968__section_47+
'legislation_hunting_act_2004__section_84
0legislation_misuse_of_drugs_act_1971__section_237
3legislation_poaching_prevention_act_1862__section_2@
<legislation_police_and_criminal_evidence_act_1984__section_1@
<legislation_police_and_criminal_evidence_act_1984__section_6:
6legislation_protection_of_badgers_act_1992__section_117
3legislation_psychoactive_substances_act_2016__s36_27
3legislation_psychoactive_substances_act_2016__s37_21
-legislation_public_stores_act_1875__section_6=
9legislation_wildlife_and_countryside_act_1981__section_19#
officer_defined_ethnicity_asian#
officer_defined_ethnicity_black#
officer_defined_ethnicity_mixed#
officer_defined_ethnicity_other#
officer_defined_ethnicity_white"
type_person_and_vehicle_search
type_person_search
type_vehicle_search8
4object_of_search_anything_to_threaten_or_harm_anyone-
)object_of_search_article_for_use_in_theft8
4object_of_search_articles_for_use_in_criminal_damage%
!object_of_search_controlled_drugs
object_of_search_crossbows:
6object_of_search_detailed_object_of_search_unavailable7
3object_of_search_evidence_of_offences_under_the_act2
.object_of_search_evidence_of_wildlife_offences
object_of_search_firearms
object_of_search_fireworks/
+object_of_search_game_or_poaching_equipment?
;object_of_search_goods_on_which_duty_has_not_been_paid_etc_&
"object_of_search_offensive_weapons,
(object_of_search_psychoactive_substances/
+object_of_search_seals_or_hunting_equipment!
object_of_search_stolen_goods
object_of_search_dog
force_avon_and_somerset
force_bedfordshire
	force_btp
force_cambridgeshire
force_cheshire
force_city_of_london
force_cleveland
force_cumbria
force_derbyshire
force_devon_and_cornwall
force_dorset
force_durham
force_dyfed_powys
force_essex
force_gloucestershire
force_hampshire
force_hertfordshire
force_humberside

force_kent
force_lancashire
force_leicestershire
force_lincolnshire
force_merseyside
force_metropolitan
force_norfolk
force_north_wales
force_north_yorkshire
force_northamptonshire
force_northumbria
force_staffordshire
force_suffolk
force_sussex
force_thames_valley
force_warwickshire
force_west_mercia
force_west_yorkshire
force_wiltshire<
*model_dense_matmul_readvariableop_resource:[9
+model_dense_biasadd_readvariableop_resource:>
,model_dense_1_matmul_readvariableop_resource:;
-model_dense_1_biasadd_readvariableop_resource:>
,model_dense_2_matmul_readvariableop_resource:;
-model_dense_2_biasadd_readvariableop_resource:
identityЂ"model/dense/BiasAdd/ReadVariableOpЂ!model/dense/MatMul/ReadVariableOpЂ$model/dense_1/BiasAdd/ReadVariableOpЂ#model/dense_1/MatMul/ReadVariableOpЂ$model/dense_2/BiasAdd/ReadVariableOpЂ#model/dense_2/MatMul/ReadVariableOp
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axisй
model/concatenate/concatConcatV2actioninvolved_personself_defined_ethnicity_whiteself_defined_ethnicity_blackself_defined_ethnicity_asianself_defined_ethnicity_otherself_defined_ethnicity_mixedgender_femalegender_malegender_other4legislation_aviation_security_act_1982__section_27_15legislation_conservation_of_seals_act_1970__section_43legislation_criminal_justice_act_1988__section_139bBlegislation_criminal_justice_and_public_order_act_1994__section_60)legislation_crossbows_act_1987__section_4?legislation_customs_and_excise_management_act_1979__section_163%legislation_deer_act_1991__section_12;legislation_environmental_protection_act_1990__section_34b_)legislation_firearms_act_1968__section_47'legislation_hunting_act_2004__section_80legislation_misuse_of_drugs_act_1971__section_233legislation_poaching_prevention_act_1862__section_2<legislation_police_and_criminal_evidence_act_1984__section_1<legislation_police_and_criminal_evidence_act_1984__section_66legislation_protection_of_badgers_act_1992__section_113legislation_psychoactive_substances_act_2016__s36_23legislation_psychoactive_substances_act_2016__s37_2-legislation_public_stores_act_1875__section_69legislation_wildlife_and_countryside_act_1981__section_19officer_defined_ethnicity_asianofficer_defined_ethnicity_blackofficer_defined_ethnicity_mixedofficer_defined_ethnicity_otherofficer_defined_ethnicity_whitetype_person_and_vehicle_searchtype_person_searchtype_vehicle_search4object_of_search_anything_to_threaten_or_harm_anyone)object_of_search_article_for_use_in_theft4object_of_search_articles_for_use_in_criminal_damage!object_of_search_controlled_drugsobject_of_search_crossbows6object_of_search_detailed_object_of_search_unavailable3object_of_search_evidence_of_offences_under_the_act.object_of_search_evidence_of_wildlife_offencesobject_of_search_firearmsobject_of_search_fireworks+object_of_search_game_or_poaching_equipment;object_of_search_goods_on_which_duty_has_not_been_paid_etc_"object_of_search_offensive_weapons(object_of_search_psychoactive_substances+object_of_search_seals_or_hunting_equipmentobject_of_search_stolen_goodsobject_of_search_dogforce_avon_and_somersetforce_bedfordshire	force_btpforce_cambridgeshireforce_cheshireforce_city_of_londonforce_clevelandforce_cumbriaforce_derbyshireforce_devon_and_cornwallforce_dorsetforce_durhamforce_dyfed_powysforce_essexforce_gloucestershireforce_hampshireforce_hertfordshireforce_humberside
force_kentforce_lancashireforce_leicestershireforce_lincolnshireforce_merseysideforce_metropolitanforce_norfolkforce_north_walesforce_north_yorkshireforce_northamptonshireforce_northumbriaforce_staffordshireforce_suffolkforce_sussexforce_thames_valleyforce_warwickshireforce_west_merciaforce_west_yorkshireforce_wiltshire&model/concatenate/concat/axis:output:0*
N[*
T0*'
_output_shapes
:џџџџџџџџџ[2
model/concatenate/concatБ
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:[*
dtype02#
!model/dense/MatMul/ReadVariableOpВ
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/dense/MatMulА
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"model/dense/BiasAdd/ReadVariableOpБ
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/dense/BiasAdd|
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/dense/ReluЗ
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02%
#model/dense_1/MatMul/ReadVariableOpЕ
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/dense_1/MatMulЖ
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOpЙ
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/dense_1/BiasAdd
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/dense_1/ReluЗ
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02%
#model/dense_2/MatMul/ReadVariableOpЗ
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/dense_2/MatMulЖ
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOpЙ
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
model/dense_2/BiasAddy
IdentityIdentitymodel/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityБ
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameaction:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinvolved_person:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_white:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_black:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_asian:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_other:ea
'
_output_shapes
:џџџџџџџџџ
6
_user_specified_nameself_defined_ethnicity_mixed:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_namegender_Female:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namegender_Male:U	Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegender_Other:}
y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64legislation_Aviation_Security_Act_1982__section_27_1:~z
'
_output_shapes
:џџџџџџџџџ
O
_user_specified_name75legislation_Conservation_of_Seals_Act_1970__section_4:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Criminal_Justice_Act_1988__section_139B:
'
_output_shapes
:џџџџџџџџџ
\
_user_specified_nameDBlegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Crossbows_Act_1987__section_4:
'
_output_shapes
:џџџџџџџџџ
Y
_user_specified_nameA?legislation_Customs_and_Excise_Management_Act_1979__section_163:nj
'
_output_shapes
:џџџџџџџџџ
?
_user_specified_name'%legislation_Deer_Act_1991__section_12:
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;legislation_Environmental_Protection_Act_1990__section_34B_:rn
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)legislation_Firearms_Act_1968__section_47:pl
'
_output_shapes
:џџџџџџџџџ
A
_user_specified_name)'legislation_Hunting_Act_2004__section_8:yu
'
_output_shapes
:џџџџџџџџџ
J
_user_specified_name20legislation_Misuse_of_Drugs_Act_1971__section_23:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Poaching_Prevention_Act_1862__section_2:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_1:
'
_output_shapes
:џџџџџџџџџ
V
_user_specified_name><legislation_Police_and_Criminal_Evidence_Act_1984__section_6:{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86legislation_Protection_of_Badgers_Act_1992__section_11:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s36_2:|x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53legislation_Psychoactive_Substances_Act_2016__s37_2:vr
'
_output_shapes
:џџџџџџџџџ
G
_user_specified_name/-legislation_Public_Stores_Act_1875__section_6:~
'
_output_shapes
:џџџџџџџџџ
S
_user_specified_name;9legislation_Wildlife_and_Countryside_Act_1981__section_19:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Asian:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Black:hd
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Mixed:h d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_Other:h!d
'
_output_shapes
:џџџџџџџџџ
9
_user_specified_name!officer_defined_ethnicity_White:g"c
'
_output_shapes
:џџџџџџџџџ
8
_user_specified_name type_Person_and_Vehicle_search:[#W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nametype_Person_search:\$X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nametype_Vehicle_search:}%y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Anything_to_threaten_or_harm_anyone:r&n
'
_output_shapes
:џџџџџџџџџ
C
_user_specified_name+)object_of_search_Article_for_use_in_theft:}'y
'
_output_shapes
:џџџџџџџџџ
N
_user_specified_name64object_of_search_Articles_for_use_in_criminal_damage:j(f
'
_output_shapes
:џџџџџџџџџ
;
_user_specified_name#!object_of_search_Controlled_drugs:c)_
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Crossbows:*{
'
_output_shapes
:џџџџџџџџџ
P
_user_specified_name86object_of_search_Detailed_object_of_search_unavailable:|+x
'
_output_shapes
:џџџџџџџџџ
M
_user_specified_name53object_of_search_Evidence_of_offences_under_the_Act:w,s
'
_output_shapes
:џџџџџџџџџ
H
_user_specified_name0.object_of_search_Evidence_of_wildlife_offences:b-^
'
_output_shapes
:џџџџџџџџџ
3
_user_specified_nameobject_of_search_Firearms:c._
'
_output_shapes
:џџџџџџџџџ
4
_user_specified_nameobject_of_search_Fireworks:t/p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Game_or_poaching_equipment:0
'
_output_shapes
:џџџџџџџџџ
U
_user_specified_name=;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.:k1g
'
_output_shapes
:џџџџџџџџџ
<
_user_specified_name$"object_of_search_Offensive_weapons:q2m
'
_output_shapes
:џџџџџџџџџ
B
_user_specified_name*(object_of_search_Psychoactive_substances:t3p
'
_output_shapes
:џџџџџџџџџ
E
_user_specified_name-+object_of_search_Seals_or_hunting_equipment:f4b
'
_output_shapes
:џџџџџџџџџ
7
_user_specified_nameobject_of_search_Stolen_goods:]5Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameobject_of_search_dog:`6\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameforce_avon-and-somerset:[7W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_bedfordshire:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	force_btp:]9Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_cambridgeshire:W:S
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameforce_cheshire:];Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_city-of-london:X<T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_cleveland:V=R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_cumbria:Y>U
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_derbyshire:a?]
'
_output_shapes
:џџџџџџџџџ
2
_user_specified_nameforce_devon-and-cornwall:U@Q
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_dorset:UAQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_durham:ZBV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_dyfed-powys:TCP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameforce_essex:^DZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_gloucestershire:XET
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_hampshire:\FX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_hertfordshire:YGU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_humberside:SHO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
force_kent:YIU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_lancashire:]JY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_leicestershire:[KW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_lincolnshire:YLU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameforce_merseyside:[MW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_metropolitan:VNR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_norfolk:ZOV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_north-wales:^PZ
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nameforce_north-yorkshire:_Q[
'
_output_shapes
:џџџџџџџџџ
0
_user_specified_nameforce_northamptonshire:ZRV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_northumbria:\SX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_staffordshire:VTR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameforce_suffolk:UUQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameforce_sussex:\VX
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameforce_thames-valley:[WW
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameforce_warwickshire:ZXV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameforce_west-mercia:]YY
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameforce_west-yorkshire:XZT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameforce_wiltshire
Еn
Џ
?__inference_model_layer_call_and_return_conditional_losses_6238

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_90

dense_6222:[

dense_6224:
dense_1_6227:
dense_1_6229:
dense_2_6232:
dense_2_6234:
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCall
concatenate/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90*f
Tin_
]2[*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ[* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_57352
concatenate/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0
dense_6222
dense_6224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_57482
dense/StatefulPartitionedCallЉ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6227dense_1_6229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_57652!
dense_1/StatefulPartitionedCallЋ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6232dense_2_6234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_57812!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityВ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O
K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O!K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O"K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O#K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O$K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O%K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O&K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O'K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O(K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O)K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O*K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O+K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O,K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O-K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O.K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O/K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O0K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O1K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O2K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O3K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O4K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O5K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O6K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O7K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O8K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O9K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O:K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O;K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O<K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O=K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O>K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O?K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O@K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OAK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OBK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OCK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ODK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OEK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OFK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OGK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OHK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OIK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OJK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OKK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OLK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OMK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ONK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OOK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OPK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OQK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:ORK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OSK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OTK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OUK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OVK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OWK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OXK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OYK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OZK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
z
Ћ
?__inference_model_layer_call_and_return_conditional_losses_7141
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21
	inputs_22
	inputs_23
	inputs_24
	inputs_25
	inputs_26
	inputs_27
	inputs_28
	inputs_29
	inputs_30
	inputs_31
	inputs_32
	inputs_33
	inputs_34
	inputs_35
	inputs_36
	inputs_37
	inputs_38
	inputs_39
	inputs_40
	inputs_41
	inputs_42
	inputs_43
	inputs_44
	inputs_45
	inputs_46
	inputs_47
	inputs_48
	inputs_49
	inputs_50
	inputs_51
	inputs_52
	inputs_53
	inputs_54
	inputs_55
	inputs_56
	inputs_57
	inputs_58
	inputs_59
	inputs_60
	inputs_61
	inputs_62
	inputs_63
	inputs_64
	inputs_65
	inputs_66
	inputs_67
	inputs_68
	inputs_69
	inputs_70
	inputs_71
	inputs_72
	inputs_73
	inputs_74
	inputs_75
	inputs_76
	inputs_77
	inputs_78
	inputs_79
	inputs_80
	inputs_81
	inputs_82
	inputs_83
	inputs_84
	inputs_85
	inputs_86
	inputs_87
	inputs_88
	inputs_89
	inputs_906
$dense_matmul_readvariableop_resource:[3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpt
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis№
concatenate/concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21	inputs_22	inputs_23	inputs_24	inputs_25	inputs_26	inputs_27	inputs_28	inputs_29	inputs_30	inputs_31	inputs_32	inputs_33	inputs_34	inputs_35	inputs_36	inputs_37	inputs_38	inputs_39	inputs_40	inputs_41	inputs_42	inputs_43	inputs_44	inputs_45	inputs_46	inputs_47	inputs_48	inputs_49	inputs_50	inputs_51	inputs_52	inputs_53	inputs_54	inputs_55	inputs_56	inputs_57	inputs_58	inputs_59	inputs_60	inputs_61	inputs_62	inputs_63	inputs_64	inputs_65	inputs_66	inputs_67	inputs_68	inputs_69	inputs_70	inputs_71	inputs_72	inputs_73	inputs_74	inputs_75	inputs_76	inputs_77	inputs_78	inputs_79	inputs_80	inputs_81	inputs_82	inputs_83	inputs_84	inputs_85	inputs_86	inputs_87	inputs_88	inputs_89	inputs_90 concatenate/concat/axis:output:0*
N[*
T0*'
_output_shapes
:џџџџџџџџџ[2
concatenate/concat
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:[*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

dense/ReluЅ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_1/ReluЅ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAdds
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*т
_input_shapesа
Э:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/21:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/22:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/23:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/24:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/25:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/26:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/27:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/28:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/29:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/30:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/31:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/32:R!N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/33:R"N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/34:R#N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/35:R$N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/36:R%N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/37:R&N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/38:R'N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/39:R(N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/40:R)N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/41:R*N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/42:R+N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/43:R,N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/44:R-N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/45:R.N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/46:R/N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/47:R0N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/48:R1N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/49:R2N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/50:R3N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/51:R4N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/52:R5N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/53:R6N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/54:R7N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/55:R8N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/56:R9N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/57:R:N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/58:R;N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/59:R<N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/60:R=N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/61:R>N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/62:R?N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/63:R@N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/64:RAN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/65:RBN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/66:RCN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/67:RDN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/68:REN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/69:RFN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/70:RGN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/71:RHN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/72:RIN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/73:RJN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/74:RKN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/75:RLN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/76:RMN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/77:RNN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/78:RON
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/79:RPN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/80:RQN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/81:RRN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/82:RSN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/83:RTN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/84:RUN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/85:RVN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/86:RWN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/87:RXN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/88:RYN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/89:RZN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/90
ы

&__inference_dense_1_layer_call_fn_7361

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_57652
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ЙL
serving_defaultЅL
9
action/
serving_default_action:0џџџџџџџџџ
[
force_avon-and-somerset@
)serving_default_force_avon-and-somerset:0џџџџџџџџџ
Q
force_bedfordshire;
$serving_default_force_bedfordshire:0џџџџџџџџџ
?
	force_btp2
serving_default_force_btp:0џџџџџџџџџ
U
force_cambridgeshire=
&serving_default_force_cambridgeshire:0џџџџџџџџџ
I
force_cheshire7
 serving_default_force_cheshire:0џџџџџџџџџ
U
force_city-of-london=
&serving_default_force_city-of-london:0џџџџџџџџџ
K
force_cleveland8
!serving_default_force_cleveland:0џџџџџџџџџ
G
force_cumbria6
serving_default_force_cumbria:0џџџџџџџџџ
M
force_derbyshire9
"serving_default_force_derbyshire:0џџџџџџџџџ
]
force_devon-and-cornwallA
*serving_default_force_devon-and-cornwall:0џџџџџџџџџ
E
force_dorset5
serving_default_force_dorset:0џџџџџџџџџ
E
force_durham5
serving_default_force_durham:0џџџџџџџџџ
O
force_dyfed-powys:
#serving_default_force_dyfed-powys:0џџџџџџџџџ
C
force_essex4
serving_default_force_essex:0џџџџџџџџџ
W
force_gloucestershire>
'serving_default_force_gloucestershire:0џџџџџџџџџ
K
force_hampshire8
!serving_default_force_hampshire:0џџџџџџџџџ
S
force_hertfordshire<
%serving_default_force_hertfordshire:0џџџџџџџџџ
M
force_humberside9
"serving_default_force_humberside:0џџџџџџџџџ
A

force_kent3
serving_default_force_kent:0џџџџџџџџџ
M
force_lancashire9
"serving_default_force_lancashire:0џџџџџџџџџ
U
force_leicestershire=
&serving_default_force_leicestershire:0џџџџџџџџџ
Q
force_lincolnshire;
$serving_default_force_lincolnshire:0џџџџџџџџџ
M
force_merseyside9
"serving_default_force_merseyside:0џџџџџџџџџ
Q
force_metropolitan;
$serving_default_force_metropolitan:0џџџџџџџџџ
G
force_norfolk6
serving_default_force_norfolk:0џџџџџџџџџ
O
force_north-wales:
#serving_default_force_north-wales:0џџџџџџџџџ
W
force_north-yorkshire>
'serving_default_force_north-yorkshire:0џџџџџџџџџ
Y
force_northamptonshire?
(serving_default_force_northamptonshire:0џџџџџџџџџ
O
force_northumbria:
#serving_default_force_northumbria:0џџџџџџџџџ
S
force_staffordshire<
%serving_default_force_staffordshire:0џџџџџџџџџ
G
force_suffolk6
serving_default_force_suffolk:0џџџџџџџџџ
E
force_sussex5
serving_default_force_sussex:0џџџџџџџџџ
S
force_thames-valley<
%serving_default_force_thames-valley:0џџџџџџџџџ
Q
force_warwickshire;
$serving_default_force_warwickshire:0џџџџџџџџџ
O
force_west-mercia:
#serving_default_force_west-mercia:0џџџџџџџџџ
U
force_west-yorkshire=
&serving_default_force_west-yorkshire:0џџџџџџџџџ
K
force_wiltshire8
!serving_default_force_wiltshire:0џџџџџџџџџ
G
gender_Female6
serving_default_gender_Female:0џџџџџџџџџ
C
gender_Male4
serving_default_gender_Male:0џџџџџџџџџ
E
gender_Other5
serving_default_gender_Other:0џџџџџџџџџ
K
involved_person8
!serving_default_involved_person:0џџџџџџџџџ

4legislation_Aviation_Security_Act_1982__section_27_1]
Fserving_default_legislation_Aviation_Security_Act_1982__section_27_1:0џџџџџџџџџ

5legislation_Conservation_of_Seals_Act_1970__section_4^
Gserving_default_legislation_Conservation_of_Seals_Act_1970__section_4:0џџџџџџџџџ

3legislation_Criminal_Justice_Act_1988__section_139B\
Eserving_default_legislation_Criminal_Justice_Act_1988__section_139B:0џџџџџџџџџ
Б
Blegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60k
Tserving_default_legislation_Criminal_Justice_and_Public_Order_Act_1994__section_60:0џџџџџџџџџ

)legislation_Crossbows_Act_1987__section_4R
;serving_default_legislation_Crossbows_Act_1987__section_4:0џџџџџџџџџ
Ћ
?legislation_Customs_and_Excise_Management_Act_1979__section_163h
Qserving_default_legislation_Customs_and_Excise_Management_Act_1979__section_163:0џџџџџџџџџ
w
%legislation_Deer_Act_1991__section_12N
7serving_default_legislation_Deer_Act_1991__section_12:0џџџџџџџџџ
Ѓ
;legislation_Environmental_Protection_Act_1990__section_34B_d
Mserving_default_legislation_Environmental_Protection_Act_1990__section_34B_:0џџџџџџџџџ

)legislation_Firearms_Act_1968__section_47R
;serving_default_legislation_Firearms_Act_1968__section_47:0џџџџџџџџџ
{
'legislation_Hunting_Act_2004__section_8P
9serving_default_legislation_Hunting_Act_2004__section_8:0џџџџџџџџџ

0legislation_Misuse_of_Drugs_Act_1971__section_23Y
Bserving_default_legislation_Misuse_of_Drugs_Act_1971__section_23:0џџџџџџџџџ

3legislation_Poaching_Prevention_Act_1862__section_2\
Eserving_default_legislation_Poaching_Prevention_Act_1862__section_2:0џџџџџџџџџ
Ѕ
<legislation_Police_and_Criminal_Evidence_Act_1984__section_1e
Nserving_default_legislation_Police_and_Criminal_Evidence_Act_1984__section_1:0џџџџџџџџџ
Ѕ
<legislation_Police_and_Criminal_Evidence_Act_1984__section_6e
Nserving_default_legislation_Police_and_Criminal_Evidence_Act_1984__section_6:0џџџџџџџџџ

6legislation_Protection_of_Badgers_Act_1992__section_11_
Hserving_default_legislation_Protection_of_Badgers_Act_1992__section_11:0џџџџџџџџџ

3legislation_Psychoactive_Substances_Act_2016__s36_2\
Eserving_default_legislation_Psychoactive_Substances_Act_2016__s36_2:0џџџџџџџџџ

3legislation_Psychoactive_Substances_Act_2016__s37_2\
Eserving_default_legislation_Psychoactive_Substances_Act_2016__s37_2:0џџџџџџџџџ

-legislation_Public_Stores_Act_1875__section_6V
?serving_default_legislation_Public_Stores_Act_1875__section_6:0џџџџџџџџџ

9legislation_Wildlife_and_Countryside_Act_1981__section_19b
Kserving_default_legislation_Wildlife_and_Countryside_Act_1981__section_19:0џџџџџџџџџ

4object_of_search_Anything_to_threaten_or_harm_anyone]
Fserving_default_object_of_search_Anything_to_threaten_or_harm_anyone:0џџџџџџџџџ

)object_of_search_Article_for_use_in_theftR
;serving_default_object_of_search_Article_for_use_in_theft:0џџџџџџџџџ

4object_of_search_Articles_for_use_in_criminal_damage]
Fserving_default_object_of_search_Articles_for_use_in_criminal_damage:0џџџџџџџџџ
o
!object_of_search_Controlled_drugsJ
3serving_default_object_of_search_Controlled_drugs:0џџџџџџџџџ
a
object_of_search_CrossbowsC
,serving_default_object_of_search_Crossbows:0џџџџџџџџџ

6object_of_search_Detailed_object_of_search_unavailable_
Hserving_default_object_of_search_Detailed_object_of_search_unavailable:0џџџџџџџџџ

3object_of_search_Evidence_of_offences_under_the_Act\
Eserving_default_object_of_search_Evidence_of_offences_under_the_Act:0џџџџџџџџџ

.object_of_search_Evidence_of_wildlife_offencesW
@serving_default_object_of_search_Evidence_of_wildlife_offences:0џџџџџџџџџ
_
object_of_search_FirearmsB
+serving_default_object_of_search_Firearms:0џџџџџџџџџ
a
object_of_search_FireworksC
,serving_default_object_of_search_Fireworks:0џџџџџџџџџ

+object_of_search_Game_or_poaching_equipmentT
=serving_default_object_of_search_Game_or_poaching_equipment:0џџџџџџџџџ
Ѓ
;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.d
Mserving_default_object_of_search_Goods_on_which_duty_has_not_been_paid_etc.:0џџџџџџџџџ
q
"object_of_search_Offensive_weaponsK
4serving_default_object_of_search_Offensive_weapons:0џџџџџџџџџ
}
(object_of_search_Psychoactive_substancesQ
:serving_default_object_of_search_Psychoactive_substances:0џџџџџџџџџ

+object_of_search_Seals_or_hunting_equipmentT
=serving_default_object_of_search_Seals_or_hunting_equipment:0џџџџџџџџџ
g
object_of_search_Stolen_goodsF
/serving_default_object_of_search_Stolen_goods:0џџџџџџџџџ
U
object_of_search_dog=
&serving_default_object_of_search_dog:0џџџџџџџџџ
k
officer_defined_ethnicity_AsianH
1serving_default_officer_defined_ethnicity_Asian:0џџџџџџџџџ
k
officer_defined_ethnicity_BlackH
1serving_default_officer_defined_ethnicity_Black:0џџџџџџџџџ
k
officer_defined_ethnicity_MixedH
1serving_default_officer_defined_ethnicity_Mixed:0џџџџџџџџџ
k
officer_defined_ethnicity_OtherH
1serving_default_officer_defined_ethnicity_Other:0џџџџџџџџџ
k
officer_defined_ethnicity_WhiteH
1serving_default_officer_defined_ethnicity_White:0џџџџџџџџџ
e
self_defined_ethnicity_asianE
.serving_default_self_defined_ethnicity_asian:0џџџџџџџџџ
e
self_defined_ethnicity_blackE
.serving_default_self_defined_ethnicity_black:0џџџџџџџџџ
e
self_defined_ethnicity_mixedE
.serving_default_self_defined_ethnicity_mixed:0џџџџџџџџџ
e
self_defined_ethnicity_otherE
.serving_default_self_defined_ethnicity_other:0џџџџџџџџџ
e
self_defined_ethnicity_whiteE
.serving_default_self_defined_ethnicity_white:0џџџџџџџџџ
i
type_Person_and_Vehicle_searchG
0serving_default_type_Person_and_Vehicle_search:0џџџџџџџџџ
Q
type_Person_search;
$serving_default_type_Person_search:0џџџџџџџџџ
S
type_Vehicle_search<
%serving_default_type_Vehicle_search:0џџџџџџџџџ;
dense_20
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ле
м
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer-29
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer-40
*layer-41
+layer-42
,layer-43
-layer-44
.layer-45
/layer-46
0layer-47
1layer-48
2layer-49
3layer-50
4layer-51
5layer-52
6layer-53
7layer-54
8layer-55
9layer-56
:layer-57
;layer-58
<layer-59
=layer-60
>layer-61
?layer-62
@layer-63
Alayer-64
Blayer-65
Clayer-66
Dlayer-67
Elayer-68
Flayer-69
Glayer-70
Hlayer-71
Ilayer-72
Jlayer-73
Klayer-74
Llayer-75
Mlayer-76
Nlayer-77
Olayer-78
Player-79
Qlayer-80
Rlayer-81
Slayer-82
Tlayer-83
Ulayer-84
Vlayer-85
Wlayer-86
Xlayer-87
Ylayer-88
Zlayer-89
[layer-90
\layer-91
]layer_with_weights-0
]layer-92
^layer_with_weights-1
^layer-93
_layer_with_weights-2
_layer-94
`	optimizer
a	variables
bregularization_losses
ctrainable_variables
d	keras_api
e
signatures
Б__call__
+В&call_and_return_all_conditional_losses
Г_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
Ї
f	variables
gregularization_losses
htrainable_variables
i	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

jkernel
kbias
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

pkernel
qbias
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

vkernel
wbias
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
Ь
|iter

}beta_1

~beta_2
	decay
learning_ratejmЅkmІpmЇqmЈvmЉwmЊjvЋkvЌpv­qvЎvvЏwvА"
	optimizer
J
j0
k1
p2
q3
v4
w5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
j0
k1
p2
q3
v4
w5"
trackable_list_wrapper
г
layers
metrics
a	variables
 layer_regularization_losses
layer_metrics
bregularization_losses
non_trainable_variables
ctrainable_variables
Б__call__
Г_default_save_signature
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
-
Мserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
layers
layer_metrics
f	variables
 layer_regularization_losses
metrics
gregularization_losses
non_trainable_variables
htrainable_variables
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
:[2dense/kernel
:2
dense/bias
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
Е
layers
layer_metrics
l	variables
 layer_regularization_losses
metrics
mregularization_losses
non_trainable_variables
ntrainable_variables
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
Е
layers
layer_metrics
r	variables
 layer_regularization_losses
metrics
sregularization_losses
non_trainable_variables
ttrainable_variables
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 :2dense_2/kernel
:2dense_2/bias
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
Е
layers
layer_metrics
x	variables
 layer_regularization_losses
metrics
yregularization_losses
non_trainable_variables
ztrainable_variables
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate

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
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
855
956
:57
;58
<59
=60
>61
?62
@63
A64
B65
C66
D67
E68
F69
G70
H71
I72
J73
K74
L75
M76
N77
O78
P79
Q80
R81
S82
T83
U84
V85
W86
X87
Y88
Z89
[90
\91
]92
^93
_94"
trackable_list_wrapper
0
0
1"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

 total

Ёcount
Ђ
_fn_kwargs
Ѓ	variables
Є	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
 0
Ё1"
trackable_list_wrapper
.
Ѓ	variables"
_generic_user_object
#:![2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
%:#2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
#:![2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
%:#2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
о2л
$__inference_model_layer_call_fn_5803
$__inference_model_layer_call_fn_6802
$__inference_model_layer_call_fn_6909
$__inference_model_layer_call_fn_6360Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ъ2Ч
?__inference_model_layer_call_and_return_conditional_losses_7025
?__inference_model_layer_call_and_return_conditional_losses_7141
?__inference_model_layer_call_and_return_conditional_losses_6470
?__inference_model_layer_call_and_return_conditional_losses_6580Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
їBє
__inference__wrapped_model_5452actioninvolved_personself_defined_ethnicity_whiteself_defined_ethnicity_blackself_defined_ethnicity_asianself_defined_ethnicity_otherself_defined_ethnicity_mixedgender_Femalegender_Malegender_Other4legislation_Aviation_Security_Act_1982__section_27_15legislation_Conservation_of_Seals_Act_1970__section_43legislation_Criminal_Justice_Act_1988__section_139BBlegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60)legislation_Crossbows_Act_1987__section_4?legislation_Customs_and_Excise_Management_Act_1979__section_163%legislation_Deer_Act_1991__section_12;legislation_Environmental_Protection_Act_1990__section_34B_)legislation_Firearms_Act_1968__section_47'legislation_Hunting_Act_2004__section_80legislation_Misuse_of_Drugs_Act_1971__section_233legislation_Poaching_Prevention_Act_1862__section_2<legislation_Police_and_Criminal_Evidence_Act_1984__section_1<legislation_Police_and_Criminal_Evidence_Act_1984__section_66legislation_Protection_of_Badgers_Act_1992__section_113legislation_Psychoactive_Substances_Act_2016__s36_23legislation_Psychoactive_Substances_Act_2016__s37_2-legislation_Public_Stores_Act_1875__section_69legislation_Wildlife_and_Countryside_Act_1981__section_19officer_defined_ethnicity_Asianofficer_defined_ethnicity_Blackofficer_defined_ethnicity_Mixedofficer_defined_ethnicity_Otherofficer_defined_ethnicity_Whitetype_Person_and_Vehicle_searchtype_Person_searchtype_Vehicle_search4object_of_search_Anything_to_threaten_or_harm_anyone)object_of_search_Article_for_use_in_theft4object_of_search_Articles_for_use_in_criminal_damage!object_of_search_Controlled_drugsobject_of_search_Crossbows6object_of_search_Detailed_object_of_search_unavailable3object_of_search_Evidence_of_offences_under_the_Act.object_of_search_Evidence_of_wildlife_offencesobject_of_search_Firearmsobject_of_search_Fireworks+object_of_search_Game_or_poaching_equipment;object_of_search_Goods_on_which_duty_has_not_been_paid_etc."object_of_search_Offensive_weapons(object_of_search_Psychoactive_substances+object_of_search_Seals_or_hunting_equipmentobject_of_search_Stolen_goodsobject_of_search_dogforce_avon-and-somersetforce_bedfordshire	force_btpforce_cambridgeshireforce_cheshireforce_city-of-londonforce_clevelandforce_cumbriaforce_derbyshireforce_devon-and-cornwallforce_dorsetforce_durhamforce_dyfed-powysforce_essexforce_gloucestershireforce_hampshireforce_hertfordshireforce_humberside
force_kentforce_lancashireforce_leicestershireforce_lincolnshireforce_merseysideforce_metropolitanforce_norfolkforce_north-walesforce_north-yorkshireforce_northamptonshireforce_northumbriaforce_staffordshireforce_suffolkforce_sussexforce_thames-valleyforce_warwickshireforce_west-merciaforce_west-yorkshireforce_wiltshire["
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_concatenate_layer_call_fn_7236Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_concatenate_layer_call_and_return_conditional_losses_7332Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ю2Ы
$__inference_dense_layer_call_fn_7341Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
щ2ц
?__inference_dense_layer_call_and_return_conditional_losses_7352Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
а2Э
&__inference_dense_1_layer_call_fn_7361Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ы2ш
A__inference_dense_1_layer_call_and_return_conditional_losses_7372Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
а2Э
&__inference_dense_2_layer_call_fn_7381Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ы2ш
A__inference_dense_2_layer_call_and_return_conditional_losses_7391Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
єBё
"__inference_signature_wrapper_6695actionforce_avon-and-somersetforce_bedfordshire	force_btpforce_cambridgeshireforce_cheshireforce_city-of-londonforce_clevelandforce_cumbriaforce_derbyshireforce_devon-and-cornwallforce_dorsetforce_durhamforce_dyfed-powysforce_essexforce_gloucestershireforce_hampshireforce_hertfordshireforce_humberside
force_kentforce_lancashireforce_leicestershireforce_lincolnshireforce_merseysideforce_metropolitanforce_norfolkforce_north-walesforce_north-yorkshireforce_northamptonshireforce_northumbriaforce_staffordshireforce_suffolkforce_sussexforce_thames-valleyforce_warwickshireforce_west-merciaforce_west-yorkshireforce_wiltshiregender_Femalegender_Malegender_Otherinvolved_person4legislation_Aviation_Security_Act_1982__section_27_15legislation_Conservation_of_Seals_Act_1970__section_43legislation_Criminal_Justice_Act_1988__section_139BBlegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60)legislation_Crossbows_Act_1987__section_4?legislation_Customs_and_Excise_Management_Act_1979__section_163%legislation_Deer_Act_1991__section_12;legislation_Environmental_Protection_Act_1990__section_34B_)legislation_Firearms_Act_1968__section_47'legislation_Hunting_Act_2004__section_80legislation_Misuse_of_Drugs_Act_1971__section_233legislation_Poaching_Prevention_Act_1862__section_2<legislation_Police_and_Criminal_Evidence_Act_1984__section_1<legislation_Police_and_Criminal_Evidence_Act_1984__section_66legislation_Protection_of_Badgers_Act_1992__section_113legislation_Psychoactive_Substances_Act_2016__s36_23legislation_Psychoactive_Substances_Act_2016__s37_2-legislation_Public_Stores_Act_1875__section_69legislation_Wildlife_and_Countryside_Act_1981__section_194object_of_search_Anything_to_threaten_or_harm_anyone)object_of_search_Article_for_use_in_theft4object_of_search_Articles_for_use_in_criminal_damage!object_of_search_Controlled_drugsobject_of_search_Crossbows6object_of_search_Detailed_object_of_search_unavailable3object_of_search_Evidence_of_offences_under_the_Act.object_of_search_Evidence_of_wildlife_offencesobject_of_search_Firearmsobject_of_search_Fireworks+object_of_search_Game_or_poaching_equipment;object_of_search_Goods_on_which_duty_has_not_been_paid_etc."object_of_search_Offensive_weapons(object_of_search_Psychoactive_substances+object_of_search_Seals_or_hunting_equipmentobject_of_search_Stolen_goodsobject_of_search_dogofficer_defined_ethnicity_Asianofficer_defined_ethnicity_Blackofficer_defined_ethnicity_Mixedofficer_defined_ethnicity_Otherofficer_defined_ethnicity_Whiteself_defined_ethnicity_asianself_defined_ethnicity_blackself_defined_ethnicity_mixedself_defined_ethnicity_otherself_defined_ethnicity_whitetype_Person_and_Vehicle_searchtype_Person_searchtype_Vehicle_search"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 э)
__inference__wrapped_model_5452Щ)jkpqvw)Ђ)
џ(Ђћ(
ј(є(
 
actionџџџџџџџџџ
)&
involved_personџџџџџџџџџ
63
self_defined_ethnicity_whiteџџџџџџџџџ
63
self_defined_ethnicity_blackџџџџџџџџџ
63
self_defined_ethnicity_asianџџџџџџџџџ
63
self_defined_ethnicity_otherџџџџџџџџџ
63
self_defined_ethnicity_mixedџџџџџџџџџ
'$
gender_Femaleџџџџџџџџџ
%"
gender_Maleџџџџџџџџџ
&#
gender_Otherџџџџџџџџџ
NK
4legislation_Aviation_Security_Act_1982__section_27_1џџџџџџџџџ
OL
5legislation_Conservation_of_Seals_Act_1970__section_4џџџџџџџџџ
MJ
3legislation_Criminal_Justice_Act_1988__section_139Bџџџџџџџџџ
\Y
Blegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60џџџџџџџџџ
C@
)legislation_Crossbows_Act_1987__section_4џџџџџџџџџ
YV
?legislation_Customs_and_Excise_Management_Act_1979__section_163џџџџџџџџџ
?<
%legislation_Deer_Act_1991__section_12џџџџџџџџџ
UR
;legislation_Environmental_Protection_Act_1990__section_34B_џџџџџџџџџ
C@
)legislation_Firearms_Act_1968__section_47џџџџџџџџџ
A>
'legislation_Hunting_Act_2004__section_8џџџџџџџџџ
JG
0legislation_Misuse_of_Drugs_Act_1971__section_23џџџџџџџџџ
MJ
3legislation_Poaching_Prevention_Act_1862__section_2џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_1џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_6џџџџџџџџџ
PM
6legislation_Protection_of_Badgers_Act_1992__section_11џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s36_2џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s37_2џџџџџџџџџ
GD
-legislation_Public_Stores_Act_1875__section_6џџџџџџџџџ
SP
9legislation_Wildlife_and_Countryside_Act_1981__section_19џџџџџџџџџ
96
officer_defined_ethnicity_Asianџџџџџџџџџ
96
officer_defined_ethnicity_Blackџџџџџџџџџ
96
officer_defined_ethnicity_Mixedџџџџџџџџџ
96
officer_defined_ethnicity_Otherџџџџџџџџџ
96
officer_defined_ethnicity_Whiteџџџџџџџџџ
85
type_Person_and_Vehicle_searchџџџџџџџџџ
,)
type_Person_searchџџџџџџџџџ
-*
type_Vehicle_searchџџџџџџџџџ
NK
4object_of_search_Anything_to_threaten_or_harm_anyoneџџџџџџџџџ
C@
)object_of_search_Article_for_use_in_theftџџџџџџџџџ
NK
4object_of_search_Articles_for_use_in_criminal_damageџџџџџџџџџ
;8
!object_of_search_Controlled_drugsџџџџџџџџџ
41
object_of_search_Crossbowsџџџџџџџџџ
PM
6object_of_search_Detailed_object_of_search_unavailableџџџџџџџџџ
MJ
3object_of_search_Evidence_of_offences_under_the_Actџџџџџџџџџ
HE
.object_of_search_Evidence_of_wildlife_offencesџџџџџџџџџ
30
object_of_search_Firearmsџџџџџџџџџ
41
object_of_search_Fireworksџџџџџџџџџ
EB
+object_of_search_Game_or_poaching_equipmentџџџџџџџџџ
UR
;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.џџџџџџџџџ
<9
"object_of_search_Offensive_weaponsџџџџџџџџџ
B?
(object_of_search_Psychoactive_substancesџџџџџџџџџ
EB
+object_of_search_Seals_or_hunting_equipmentџџџџџџџџџ
74
object_of_search_Stolen_goodsџџџџџџџџџ
.+
object_of_search_dogџџџџџџџџџ
1.
force_avon-and-somersetџџџџџџџџџ
,)
force_bedfordshireџџџџџџџџџ
# 
	force_btpџџџџџџџџџ
.+
force_cambridgeshireџџџџџџџџџ
(%
force_cheshireџџџџџџџџџ
.+
force_city-of-londonџџџџџџџџџ
)&
force_clevelandџџџџџџџџџ
'$
force_cumbriaџџџџџџџџџ
*'
force_derbyshireџџџџџџџџџ
2/
force_devon-and-cornwallџџџџџџџџџ
&#
force_dorsetџџџџџџџџџ
&#
force_durhamџџџџџџџџџ
+(
force_dyfed-powysџџџџџџџџџ
%"
force_essexџџџџџџџџџ
/,
force_gloucestershireџџџџџџџџџ
)&
force_hampshireџџџџџџџџџ
-*
force_hertfordshireџџџџџџџџџ
*'
force_humbersideџџџџџџџџџ
$!

force_kentџџџџџџџџџ
*'
force_lancashireџџџџџџџџџ
.+
force_leicestershireџџџџџџџџџ
,)
force_lincolnshireџџџџџџџџџ
*'
force_merseysideџџџџџџџџџ
,)
force_metropolitanџџџџџџџџџ
'$
force_norfolkџџџџџџџџџ
+(
force_north-walesџџџџџџџџџ
/,
force_north-yorkshireџџџџџџџџџ
0-
force_northamptonshireџџџџџџџџџ
+(
force_northumbriaџџџџџџџџџ
-*
force_staffordshireџџџџџџџџџ
'$
force_suffolkџџџџџџџџџ
&#
force_sussexџџџџџџџџџ
-*
force_thames-valleyџџџџџџџџџ
,)
force_warwickshireџџџџџџџџџ
+(
force_west-merciaџџџџџџџџџ
.+
force_west-yorkshireџџџџџџџџџ
)&
force_wiltshireџџџџџџџџџ
Њ "1Њ.
,
dense_2!
dense_2џџџџџџџџџЈ
E__inference_concatenate_layer_call_and_return_conditional_losses_7332оДЂА
ЈЂЄ
Ё
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
# 
	inputs/21џџџџџџџџџ
# 
	inputs/22џџџџџџџџџ
# 
	inputs/23џџџџџџџџџ
# 
	inputs/24џџџџџџџџџ
# 
	inputs/25џџџџџџџџџ
# 
	inputs/26џџџџџџџџџ
# 
	inputs/27џџџџџџџџџ
# 
	inputs/28џџџџџџџџџ
# 
	inputs/29џџџџџџџџџ
# 
	inputs/30џџџџџџџџџ
# 
	inputs/31џџџџџџџџџ
# 
	inputs/32џџџџџџџџџ
# 
	inputs/33џџџџџџџџџ
# 
	inputs/34џџџџџџџџџ
# 
	inputs/35џџџџџџџџџ
# 
	inputs/36џџџџџџџџџ
# 
	inputs/37џџџџџџџџџ
# 
	inputs/38џџџџџџџџџ
# 
	inputs/39џџџџџџџџџ
# 
	inputs/40џџџџџџџџџ
# 
	inputs/41џџџџџџџџџ
# 
	inputs/42џџџџџџџџџ
# 
	inputs/43џџџџџџџџџ
# 
	inputs/44џџџџџџџџџ
# 
	inputs/45џџџџџџџџџ
# 
	inputs/46џџџџџџџџџ
# 
	inputs/47џџџџџџџџџ
# 
	inputs/48џџџџџџџџџ
# 
	inputs/49џџџџџџџџџ
# 
	inputs/50џџџџџџџџџ
# 
	inputs/51џџџџџџџџџ
# 
	inputs/52џџџџџџџџџ
# 
	inputs/53џџџџџџџџџ
# 
	inputs/54џџџџџџџџџ
# 
	inputs/55џџџџџџџџџ
# 
	inputs/56џџџџџџџџџ
# 
	inputs/57џџџџџџџџџ
# 
	inputs/58џџџџџџџџџ
# 
	inputs/59џџџџџџџџџ
# 
	inputs/60џџџџџџџџџ
# 
	inputs/61џџџџџџџџџ
# 
	inputs/62џџџџџџџџџ
# 
	inputs/63џџџџџџџџџ
# 
	inputs/64џџџџџџџџџ
# 
	inputs/65џџџџџџџџџ
# 
	inputs/66џџџџџџџџџ
# 
	inputs/67џџџџџџџџџ
# 
	inputs/68џџџџџџџџџ
# 
	inputs/69џџџџџџџџџ
# 
	inputs/70џџџџџџџџџ
# 
	inputs/71џџџџџџџџџ
# 
	inputs/72џџџџџџџџџ
# 
	inputs/73џџџџџџџџџ
# 
	inputs/74џџџџџџџџџ
# 
	inputs/75џџџџџџџџџ
# 
	inputs/76џџџџџџџџџ
# 
	inputs/77џџџџџџџџџ
# 
	inputs/78џџџџџџџџџ
# 
	inputs/79џџџџџџџџџ
# 
	inputs/80џџџџџџџџџ
# 
	inputs/81џџџџџџџџџ
# 
	inputs/82џџџџџџџџџ
# 
	inputs/83џџџџџџџџџ
# 
	inputs/84џџџџџџџџџ
# 
	inputs/85џџџџџџџџџ
# 
	inputs/86џџџџџџџџџ
# 
	inputs/87џџџџџџџџџ
# 
	inputs/88џџџџџџџџџ
# 
	inputs/89џџџџџџџџџ
# 
	inputs/90џџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ[
 
*__inference_concatenate_layer_call_fn_7236бДЂА
ЈЂЄ
Ё
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
# 
	inputs/21џџџџџџџџџ
# 
	inputs/22џџџџџџџџџ
# 
	inputs/23џџџџџџџџџ
# 
	inputs/24џџџџџџџџџ
# 
	inputs/25џџџџџџџџџ
# 
	inputs/26џџџџџџџџџ
# 
	inputs/27џџџџџџџџџ
# 
	inputs/28џџџџџџџџџ
# 
	inputs/29џџџџџџџџџ
# 
	inputs/30џџџџџџџџџ
# 
	inputs/31џџџџџџџџџ
# 
	inputs/32џџџџџџџџџ
# 
	inputs/33џџџџџџџџџ
# 
	inputs/34џџџџџџџџџ
# 
	inputs/35џџџџџџџџџ
# 
	inputs/36џџџџџџџџџ
# 
	inputs/37џџџџџџџџџ
# 
	inputs/38џџџџџџџџџ
# 
	inputs/39џџџџџџџџџ
# 
	inputs/40џџџџџџџџџ
# 
	inputs/41џџџџџџџџџ
# 
	inputs/42џџџџџџџџџ
# 
	inputs/43џџџџџџџџџ
# 
	inputs/44џџџџџџџџџ
# 
	inputs/45џџџџџџџџџ
# 
	inputs/46џџџџџџџџџ
# 
	inputs/47џџџџџџџџџ
# 
	inputs/48џџџџџџџџџ
# 
	inputs/49џџџџџџџџџ
# 
	inputs/50џџџџџџџџџ
# 
	inputs/51џџџџџџџџџ
# 
	inputs/52џџџџџџџџџ
# 
	inputs/53џџџџџџџџџ
# 
	inputs/54џџџџџџџџџ
# 
	inputs/55џџџџџџџџџ
# 
	inputs/56џџџџџџџџџ
# 
	inputs/57џџџџџџџџџ
# 
	inputs/58џџџџџџџџџ
# 
	inputs/59џџџџџџџџџ
# 
	inputs/60џџџџџџџџџ
# 
	inputs/61џџџџџџџџџ
# 
	inputs/62џџџџџџџџџ
# 
	inputs/63џџџџџџџџџ
# 
	inputs/64џџџџџџџџџ
# 
	inputs/65џџџџџџџџџ
# 
	inputs/66џџџџџџџџџ
# 
	inputs/67џџџџџџџџџ
# 
	inputs/68џџџџџџџџџ
# 
	inputs/69џџџџџџџџџ
# 
	inputs/70џџџџџџџџџ
# 
	inputs/71џџџџџџџџџ
# 
	inputs/72џџџџџџџџџ
# 
	inputs/73џџџџџџџџџ
# 
	inputs/74џџџџџџџџџ
# 
	inputs/75џџџџџџџџџ
# 
	inputs/76џџџџџџџџџ
# 
	inputs/77џџџџџџџџџ
# 
	inputs/78џџџџџџџџџ
# 
	inputs/79џџџџџџџџџ
# 
	inputs/80џџџџџџџџџ
# 
	inputs/81џџџџџџџџџ
# 
	inputs/82џџџџџџџџџ
# 
	inputs/83џџџџџџџџџ
# 
	inputs/84џџџџџџџџџ
# 
	inputs/85џџџџџџџџџ
# 
	inputs/86џџџџџџџџџ
# 
	inputs/87џџџџџџџџџ
# 
	inputs/88џџџџџџџџџ
# 
	inputs/89џџџџџџџџџ
# 
	inputs/90џџџџџџџџџ
Њ "џџџџџџџџџ[Ё
A__inference_dense_1_layer_call_and_return_conditional_losses_7372\pq/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 y
&__inference_dense_1_layer_call_fn_7361Opq/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЁ
A__inference_dense_2_layer_call_and_return_conditional_losses_7391\vw/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 y
&__inference_dense_2_layer_call_fn_7381Ovw/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
?__inference_dense_layer_call_and_return_conditional_losses_7352\jk/Ђ,
%Ђ"
 
inputsџџџџџџџџџ[
Њ "%Ђ"

0џџџџџџџџџ
 w
$__inference_dense_layer_call_fn_7341Ojk/Ђ,
%Ђ"
 
inputsџџџџџџџџџ[
Њ "џџџџџџџџџ*
?__inference_model_layer_call_and_return_conditional_losses_6470Х)jkpqvw)Ђ)
)Ђ)
ј(є(
 
actionџџџџџџџџџ
)&
involved_personџџџџџџџџџ
63
self_defined_ethnicity_whiteџџџџџџџџџ
63
self_defined_ethnicity_blackџџџџџџџџџ
63
self_defined_ethnicity_asianџџџџџџџџџ
63
self_defined_ethnicity_otherџџџџџџџџџ
63
self_defined_ethnicity_mixedџџџџџџџџџ
'$
gender_Femaleџџџџџџџџџ
%"
gender_Maleџџџџџџџџџ
&#
gender_Otherџџџџџџџџџ
NK
4legislation_Aviation_Security_Act_1982__section_27_1џџџџџџџџџ
OL
5legislation_Conservation_of_Seals_Act_1970__section_4џџџџџџџџџ
MJ
3legislation_Criminal_Justice_Act_1988__section_139Bџџџџџџџџџ
\Y
Blegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60џџџџџџџџџ
C@
)legislation_Crossbows_Act_1987__section_4џџџџџџџџџ
YV
?legislation_Customs_and_Excise_Management_Act_1979__section_163џџџџџџџџџ
?<
%legislation_Deer_Act_1991__section_12џџџџџџџџџ
UR
;legislation_Environmental_Protection_Act_1990__section_34B_џџџџџџџџџ
C@
)legislation_Firearms_Act_1968__section_47џџџџџџџџџ
A>
'legislation_Hunting_Act_2004__section_8џџџџџџџџџ
JG
0legislation_Misuse_of_Drugs_Act_1971__section_23џџџџџџџџџ
MJ
3legislation_Poaching_Prevention_Act_1862__section_2џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_1џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_6џџџџџџџџџ
PM
6legislation_Protection_of_Badgers_Act_1992__section_11џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s36_2џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s37_2џџџџџџџџџ
GD
-legislation_Public_Stores_Act_1875__section_6џџџџџџџџџ
SP
9legislation_Wildlife_and_Countryside_Act_1981__section_19џџџџџџџџџ
96
officer_defined_ethnicity_Asianџџџџџџџџџ
96
officer_defined_ethnicity_Blackџџџџџџџџџ
96
officer_defined_ethnicity_Mixedџџџџџџџџџ
96
officer_defined_ethnicity_Otherџџџџџџџџџ
96
officer_defined_ethnicity_Whiteџџџџџџџџџ
85
type_Person_and_Vehicle_searchџџџџџџџџџ
,)
type_Person_searchџџџџџџџџџ
-*
type_Vehicle_searchџџџџџџџџџ
NK
4object_of_search_Anything_to_threaten_or_harm_anyoneџџџџџџџџџ
C@
)object_of_search_Article_for_use_in_theftџџџџџџџџџ
NK
4object_of_search_Articles_for_use_in_criminal_damageџџџџџџџџџ
;8
!object_of_search_Controlled_drugsџџџџџџџџџ
41
object_of_search_Crossbowsџџџџџџџџџ
PM
6object_of_search_Detailed_object_of_search_unavailableџџџџџџџџџ
MJ
3object_of_search_Evidence_of_offences_under_the_Actџџџџџџџџџ
HE
.object_of_search_Evidence_of_wildlife_offencesџџџџџџџџџ
30
object_of_search_Firearmsџџџџџџџџџ
41
object_of_search_Fireworksџџџџџџџџџ
EB
+object_of_search_Game_or_poaching_equipmentџџџџџџџџџ
UR
;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.џџџџџџџџџ
<9
"object_of_search_Offensive_weaponsџџџџџџџџџ
B?
(object_of_search_Psychoactive_substancesџџџџџџџџџ
EB
+object_of_search_Seals_or_hunting_equipmentџџџџџџџџџ
74
object_of_search_Stolen_goodsџџџџџџџџџ
.+
object_of_search_dogџџџџџџџџџ
1.
force_avon-and-somersetџџџџџџџџџ
,)
force_bedfordshireџџџџџџџџџ
# 
	force_btpџџџџџџџџџ
.+
force_cambridgeshireџџџџџџџџџ
(%
force_cheshireџџџџџџџџџ
.+
force_city-of-londonџџџџџџџџџ
)&
force_clevelandџџџџџџџџџ
'$
force_cumbriaџџџџџџџџџ
*'
force_derbyshireџџџџџџџџџ
2/
force_devon-and-cornwallџџџџџџџџџ
&#
force_dorsetџџџџџџџџџ
&#
force_durhamџџџџџџџџџ
+(
force_dyfed-powysџџџџџџџџџ
%"
force_essexџџџџџџџџџ
/,
force_gloucestershireџџџџџџџџџ
)&
force_hampshireџџџџџџџџџ
-*
force_hertfordshireџџџџџџџџџ
*'
force_humbersideџџџџџџџџџ
$!

force_kentџџџџџџџџџ
*'
force_lancashireџџџџџџџџџ
.+
force_leicestershireџџџџџџџџџ
,)
force_lincolnshireџџџџџџџџџ
*'
force_merseysideџџџџџџџџџ
,)
force_metropolitanџџџџџџџџџ
'$
force_norfolkџџџџџџџџџ
+(
force_north-walesџџџџџџџџџ
/,
force_north-yorkshireџџџџџџџџџ
0-
force_northamptonshireџџџџџџџџџ
+(
force_northumbriaџџџџџџџџџ
-*
force_staffordshireџџџџџџџџџ
'$
force_suffolkџџџџџџџџџ
&#
force_sussexџџџџџџџџџ
-*
force_thames-valleyџџџџџџџџџ
,)
force_warwickshireџџџџџџџџџ
+(
force_west-merciaџџџџџџџџџ
.+
force_west-yorkshireџџџџџџџџџ
)&
force_wiltshireџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 *
?__inference_model_layer_call_and_return_conditional_losses_6580Х)jkpqvw)Ђ)
)Ђ)
ј(є(
 
actionџџџџџџџџџ
)&
involved_personџџџџџџџџџ
63
self_defined_ethnicity_whiteџџџџџџџџџ
63
self_defined_ethnicity_blackџџџџџџџџџ
63
self_defined_ethnicity_asianџџџџџџџџџ
63
self_defined_ethnicity_otherџџџџџџџџџ
63
self_defined_ethnicity_mixedџџџџџџџџџ
'$
gender_Femaleџџџџџџџџџ
%"
gender_Maleџџџџџџџџџ
&#
gender_Otherџџџџџџџџџ
NK
4legislation_Aviation_Security_Act_1982__section_27_1џџџџџџџџџ
OL
5legislation_Conservation_of_Seals_Act_1970__section_4џџџџџџџџџ
MJ
3legislation_Criminal_Justice_Act_1988__section_139Bџџџџџџџџџ
\Y
Blegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60џџџџџџџџџ
C@
)legislation_Crossbows_Act_1987__section_4џџџџџџџџџ
YV
?legislation_Customs_and_Excise_Management_Act_1979__section_163џџџџџџџџџ
?<
%legislation_Deer_Act_1991__section_12џџџџџџџџџ
UR
;legislation_Environmental_Protection_Act_1990__section_34B_џџџџџџџџџ
C@
)legislation_Firearms_Act_1968__section_47џџџџџџџџџ
A>
'legislation_Hunting_Act_2004__section_8џџџџџџџџџ
JG
0legislation_Misuse_of_Drugs_Act_1971__section_23џџџџџџџџџ
MJ
3legislation_Poaching_Prevention_Act_1862__section_2џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_1џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_6џџџџџџџџџ
PM
6legislation_Protection_of_Badgers_Act_1992__section_11џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s36_2џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s37_2џџџџџџџџџ
GD
-legislation_Public_Stores_Act_1875__section_6џџџџџџџџџ
SP
9legislation_Wildlife_and_Countryside_Act_1981__section_19џџџџџџџџџ
96
officer_defined_ethnicity_Asianџџџџџџџџџ
96
officer_defined_ethnicity_Blackџџџџџџџџџ
96
officer_defined_ethnicity_Mixedџџџџџџџџџ
96
officer_defined_ethnicity_Otherџџџџџџџџџ
96
officer_defined_ethnicity_Whiteџџџџџџџџџ
85
type_Person_and_Vehicle_searchџџџџџџџџџ
,)
type_Person_searchџџџџџџџџџ
-*
type_Vehicle_searchџџџџџџџџџ
NK
4object_of_search_Anything_to_threaten_or_harm_anyoneџџџџџџџџџ
C@
)object_of_search_Article_for_use_in_theftџџџџџџџџџ
NK
4object_of_search_Articles_for_use_in_criminal_damageџџџџџџџџџ
;8
!object_of_search_Controlled_drugsџџџџџџџџџ
41
object_of_search_Crossbowsџџџџџџџџџ
PM
6object_of_search_Detailed_object_of_search_unavailableџџџџџџџџџ
MJ
3object_of_search_Evidence_of_offences_under_the_Actџџџџџџџџџ
HE
.object_of_search_Evidence_of_wildlife_offencesџџџџџџџџџ
30
object_of_search_Firearmsџџџџџџџџџ
41
object_of_search_Fireworksџџџџџџџџџ
EB
+object_of_search_Game_or_poaching_equipmentџџџџџџџџџ
UR
;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.џџџџџџџџџ
<9
"object_of_search_Offensive_weaponsџџџџџџџџџ
B?
(object_of_search_Psychoactive_substancesџџџџџџџџџ
EB
+object_of_search_Seals_or_hunting_equipmentџџџџџџџџџ
74
object_of_search_Stolen_goodsџџџџџџџџџ
.+
object_of_search_dogџџџџџџџџџ
1.
force_avon-and-somersetџџџџџџџџџ
,)
force_bedfordshireџџџџџџџџџ
# 
	force_btpџџџџџџџџџ
.+
force_cambridgeshireџџџџџџџџџ
(%
force_cheshireџџџџџџџџџ
.+
force_city-of-londonџџџџџџџџџ
)&
force_clevelandџџџџџџџџџ
'$
force_cumbriaџџџџџџџџџ
*'
force_derbyshireџџџџџџџџџ
2/
force_devon-and-cornwallџџџџџџџџџ
&#
force_dorsetџџџџџџџџџ
&#
force_durhamџџџџџџџџџ
+(
force_dyfed-powysџџџџџџџџџ
%"
force_essexџџџџџџџџџ
/,
force_gloucestershireџџџџџџџџџ
)&
force_hampshireџџџџџџџџџ
-*
force_hertfordshireџџџџџџџџџ
*'
force_humbersideџџџџџџџџџ
$!

force_kentџџџџџџџџџ
*'
force_lancashireџџџџџџџџџ
.+
force_leicestershireџџџџџџџџџ
,)
force_lincolnshireџџџџџџџџџ
*'
force_merseysideџџџџџџџџџ
,)
force_metropolitanџџџџџџџџџ
'$
force_norfolkџџџџџџџџџ
+(
force_north-walesџџџџџџџџџ
/,
force_north-yorkshireџџџџџџџџџ
0-
force_northamptonshireџџџџџџџџџ
+(
force_northumbriaџџџџџџџџџ
-*
force_staffordshireџџџџџџџџџ
'$
force_suffolkџџџџџџџџџ
&#
force_sussexџџџџџџџџџ
-*
force_thames-valleyџџџџџџџџџ
,)
force_warwickshireџџџџџџџџџ
+(
force_west-merciaџџџџџџџџџ
.+
force_west-yorkshireџџџџџџџџџ
)&
force_wiltshireџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 В
?__inference_model_layer_call_and_return_conditional_losses_7025юjkpqvwМЂИ
АЂЌ
Ё
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
# 
	inputs/21џџџџџџџџџ
# 
	inputs/22џџџџџџџџџ
# 
	inputs/23џџџџџџџџџ
# 
	inputs/24џџџџџџџџџ
# 
	inputs/25џџџџџџџџџ
# 
	inputs/26џџџџџџџџџ
# 
	inputs/27џџџџџџџџџ
# 
	inputs/28џџџџџџџџџ
# 
	inputs/29џџџџџџџџџ
# 
	inputs/30џџџџџџџџџ
# 
	inputs/31џџџџџџџџџ
# 
	inputs/32џџџџџџџџџ
# 
	inputs/33џџџџџџџџџ
# 
	inputs/34џџџџџџџџџ
# 
	inputs/35џџџџџџџџџ
# 
	inputs/36џџџџџџџџџ
# 
	inputs/37џџџџџџџџџ
# 
	inputs/38џџџџџџџџџ
# 
	inputs/39џџџџџџџџџ
# 
	inputs/40џџџџџџџџџ
# 
	inputs/41џџџџџџџџџ
# 
	inputs/42џџџџџџџџџ
# 
	inputs/43џџџџџџџџџ
# 
	inputs/44џџџџџџџџџ
# 
	inputs/45џџџџџџџџџ
# 
	inputs/46џџџџџџџџџ
# 
	inputs/47џџџџџџџџџ
# 
	inputs/48џџџџџџџџџ
# 
	inputs/49џџџџџџџџџ
# 
	inputs/50џџџџџџџџџ
# 
	inputs/51џџџџџџџџџ
# 
	inputs/52џџџџџџџџџ
# 
	inputs/53џџџџџџџџџ
# 
	inputs/54џџџџџџџџџ
# 
	inputs/55џџџџџџџџџ
# 
	inputs/56џџџџџџџџџ
# 
	inputs/57џџџџџџџџџ
# 
	inputs/58џџџџџџџџџ
# 
	inputs/59џџџџџџџџџ
# 
	inputs/60џџџџџџџџџ
# 
	inputs/61џџџџџџџџџ
# 
	inputs/62џџџџџџџџџ
# 
	inputs/63џџџџџџџџџ
# 
	inputs/64џџџџџџџџџ
# 
	inputs/65џџџџџџџџџ
# 
	inputs/66џџџџџџџџџ
# 
	inputs/67џџџџџџџџџ
# 
	inputs/68џџџџџџџџџ
# 
	inputs/69џџџџџџџџџ
# 
	inputs/70џџџџџџџџџ
# 
	inputs/71џџџџџџџџџ
# 
	inputs/72џџџџџџџџџ
# 
	inputs/73џџџџџџџџџ
# 
	inputs/74џџџџџџџџџ
# 
	inputs/75џџџџџџџџџ
# 
	inputs/76џџџџџџџџџ
# 
	inputs/77џџџџџџџџџ
# 
	inputs/78џџџџџџџџџ
# 
	inputs/79џџџџџџџџџ
# 
	inputs/80џџџџџџџџџ
# 
	inputs/81џџџџџџџџџ
# 
	inputs/82џџџџџџџџџ
# 
	inputs/83џџџџџџџџџ
# 
	inputs/84џџџџџџџџџ
# 
	inputs/85џџџџџџџџџ
# 
	inputs/86џџџџџџџџџ
# 
	inputs/87џџџџџџџџџ
# 
	inputs/88џџџџџџџџџ
# 
	inputs/89џџџџџџџџџ
# 
	inputs/90џџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 В
?__inference_model_layer_call_and_return_conditional_losses_7141юjkpqvwМЂИ
АЂЌ
Ё
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
# 
	inputs/21џџџџџџџџџ
# 
	inputs/22џџџџџџџџџ
# 
	inputs/23џџџџџџџџџ
# 
	inputs/24џџџџџџџџџ
# 
	inputs/25џџџџџџџџџ
# 
	inputs/26џџџџџџџџџ
# 
	inputs/27џџџџџџџџџ
# 
	inputs/28џџџџџџџџџ
# 
	inputs/29џџџџџџџџџ
# 
	inputs/30џџџџџџџџџ
# 
	inputs/31џџџџџџџџџ
# 
	inputs/32џџџџџџџџџ
# 
	inputs/33џџџџџџџџџ
# 
	inputs/34џџџџџџџџџ
# 
	inputs/35џџџџџџџџџ
# 
	inputs/36џџџџџџџџџ
# 
	inputs/37џџџџџџџџџ
# 
	inputs/38џџџџџџџџџ
# 
	inputs/39џџџџџџџџџ
# 
	inputs/40џџџџџџџџџ
# 
	inputs/41џџџџџџџџџ
# 
	inputs/42џџџџџџџџџ
# 
	inputs/43џџџџџџџџџ
# 
	inputs/44џџџџџџџџџ
# 
	inputs/45џџџџџџџџџ
# 
	inputs/46џџџџџџџџџ
# 
	inputs/47џџџџџџџџџ
# 
	inputs/48џџџџџџџџџ
# 
	inputs/49џџџџџџџџџ
# 
	inputs/50џџџџџџџџџ
# 
	inputs/51џџџџџџџџџ
# 
	inputs/52џџџџџџџџџ
# 
	inputs/53џџџџџџџџџ
# 
	inputs/54џџџџџџџџџ
# 
	inputs/55џџџџџџџџџ
# 
	inputs/56џџџџџџџџџ
# 
	inputs/57џџџџџџџџџ
# 
	inputs/58џџџџџџџџџ
# 
	inputs/59џџџџџџџџџ
# 
	inputs/60џџџџџџџџџ
# 
	inputs/61џџџџџџџџџ
# 
	inputs/62џџџџџџџџџ
# 
	inputs/63џџџџџџџџџ
# 
	inputs/64џџџџџџџџџ
# 
	inputs/65џџџџџџџџџ
# 
	inputs/66џџџџџџџџџ
# 
	inputs/67џџџџџџџџџ
# 
	inputs/68џџџџџџџџџ
# 
	inputs/69џџџџџџџџџ
# 
	inputs/70џџџџџџџџџ
# 
	inputs/71џџџџџџџџџ
# 
	inputs/72џџџџџџџџџ
# 
	inputs/73џџџџџџџџџ
# 
	inputs/74џџџџџџџџџ
# 
	inputs/75џџџџџџџџџ
# 
	inputs/76џџџџџџџџџ
# 
	inputs/77џџџџџџџџџ
# 
	inputs/78џџџџџџџџџ
# 
	inputs/79џџџџџџџџџ
# 
	inputs/80џџџџџџџџџ
# 
	inputs/81џџџџџџџџџ
# 
	inputs/82џџџџџџџџџ
# 
	inputs/83џџџџџџџџџ
# 
	inputs/84џџџџџџџџџ
# 
	inputs/85џџџџџџџџџ
# 
	inputs/86џџџџџџџџџ
# 
	inputs/87џџџџџџџџџ
# 
	inputs/88џџџџџџџџџ
# 
	inputs/89џџџџџџџџџ
# 
	inputs/90џџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 с)
$__inference_model_layer_call_fn_5803И)jkpqvw)Ђ)
)Ђ)
ј(є(
 
actionџџџџџџџџџ
)&
involved_personџџџџџџџџџ
63
self_defined_ethnicity_whiteџџџџџџџџџ
63
self_defined_ethnicity_blackџџџџџџџџџ
63
self_defined_ethnicity_asianџџџџџџџџџ
63
self_defined_ethnicity_otherџџџџџџџџџ
63
self_defined_ethnicity_mixedџџџџџџџџџ
'$
gender_Femaleџџџџџџџџџ
%"
gender_Maleџџџџџџџџџ
&#
gender_Otherџџџџџџџџџ
NK
4legislation_Aviation_Security_Act_1982__section_27_1џџџџџџџџџ
OL
5legislation_Conservation_of_Seals_Act_1970__section_4џџџџџџџџџ
MJ
3legislation_Criminal_Justice_Act_1988__section_139Bџџџџџџџџџ
\Y
Blegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60џџџџџџџџџ
C@
)legislation_Crossbows_Act_1987__section_4џџџџџџџџџ
YV
?legislation_Customs_and_Excise_Management_Act_1979__section_163џџџџџџџџџ
?<
%legislation_Deer_Act_1991__section_12џџџџџџџџџ
UR
;legislation_Environmental_Protection_Act_1990__section_34B_џџџџџџџџџ
C@
)legislation_Firearms_Act_1968__section_47џџџџџџџџџ
A>
'legislation_Hunting_Act_2004__section_8џџџџџџџџџ
JG
0legislation_Misuse_of_Drugs_Act_1971__section_23џџџџџџџџџ
MJ
3legislation_Poaching_Prevention_Act_1862__section_2џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_1џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_6џџџџџџџџџ
PM
6legislation_Protection_of_Badgers_Act_1992__section_11џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s36_2џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s37_2џџџџџџџџџ
GD
-legislation_Public_Stores_Act_1875__section_6џџџџџџџџџ
SP
9legislation_Wildlife_and_Countryside_Act_1981__section_19џџџџџџџџџ
96
officer_defined_ethnicity_Asianџџџџџџџџџ
96
officer_defined_ethnicity_Blackџџџџџџџџџ
96
officer_defined_ethnicity_Mixedџџџџџџџџџ
96
officer_defined_ethnicity_Otherџџџџџџџџџ
96
officer_defined_ethnicity_Whiteџџџџџџџџџ
85
type_Person_and_Vehicle_searchџџџџџџџџџ
,)
type_Person_searchџџџџџџџџџ
-*
type_Vehicle_searchџџџџџџџџџ
NK
4object_of_search_Anything_to_threaten_or_harm_anyoneџџџџџџџџџ
C@
)object_of_search_Article_for_use_in_theftџџџџџџџџџ
NK
4object_of_search_Articles_for_use_in_criminal_damageџџџџџџџџџ
;8
!object_of_search_Controlled_drugsџџџџџџџџџ
41
object_of_search_Crossbowsџџџџџџџџџ
PM
6object_of_search_Detailed_object_of_search_unavailableџџџџџџџџџ
MJ
3object_of_search_Evidence_of_offences_under_the_Actџџџџџџџџџ
HE
.object_of_search_Evidence_of_wildlife_offencesџџџџџџџџџ
30
object_of_search_Firearmsџџџџџџџџџ
41
object_of_search_Fireworksџџџџџџџџџ
EB
+object_of_search_Game_or_poaching_equipmentџџџџџџџџџ
UR
;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.џџџџџџџџџ
<9
"object_of_search_Offensive_weaponsџџџџџџџџџ
B?
(object_of_search_Psychoactive_substancesџџџџџџџџџ
EB
+object_of_search_Seals_or_hunting_equipmentџџџџџџџџџ
74
object_of_search_Stolen_goodsџџџџџџџџџ
.+
object_of_search_dogџџџџџџџџџ
1.
force_avon-and-somersetџџџџџџџџџ
,)
force_bedfordshireџџџџџџџџџ
# 
	force_btpџџџџџџџџџ
.+
force_cambridgeshireџџџџџџџџџ
(%
force_cheshireџџџџџџџџџ
.+
force_city-of-londonџџџџџџџџџ
)&
force_clevelandџџџџџџџџџ
'$
force_cumbriaџџџџџџџџџ
*'
force_derbyshireџџџџџџџџџ
2/
force_devon-and-cornwallџџџџџџџџџ
&#
force_dorsetџџџџџџџџџ
&#
force_durhamџџџџџџџџџ
+(
force_dyfed-powysџџџџџџџџџ
%"
force_essexџџџџџџџџџ
/,
force_gloucestershireџџџџџџџџџ
)&
force_hampshireџџџџџџџџџ
-*
force_hertfordshireџџџџџџџџџ
*'
force_humbersideџџџџџџџџџ
$!

force_kentџџџџџџџџџ
*'
force_lancashireџџџџџџџџџ
.+
force_leicestershireџџџџџџџџџ
,)
force_lincolnshireџџџџџџџџџ
*'
force_merseysideџџџџџџџџџ
,)
force_metropolitanџџџџџџџџџ
'$
force_norfolkџџџџџџџџџ
+(
force_north-walesџџџџџџџџџ
/,
force_north-yorkshireџџџџџџџџџ
0-
force_northamptonshireџџџџџџџџџ
+(
force_northumbriaџџџџџџџџџ
-*
force_staffordshireџџџџџџџџџ
'$
force_suffolkџџџџџџџџџ
&#
force_sussexџџџџџџџџџ
-*
force_thames-valleyџџџџџџџџџ
,)
force_warwickshireџџџџџџџџџ
+(
force_west-merciaџџџџџџџџџ
.+
force_west-yorkshireџџџџџџџџџ
)&
force_wiltshireџџџџџџџџџ
p 

 
Њ "џџџџџџџџџс)
$__inference_model_layer_call_fn_6360И)jkpqvw)Ђ)
)Ђ)
ј(є(
 
actionџџџџџџџџџ
)&
involved_personџџџџџџџџџ
63
self_defined_ethnicity_whiteџџџџџџџџџ
63
self_defined_ethnicity_blackџџџџџџџџџ
63
self_defined_ethnicity_asianџџџџџџџџџ
63
self_defined_ethnicity_otherџџџџџџџџџ
63
self_defined_ethnicity_mixedџџџџџџџџџ
'$
gender_Femaleџџџџџџџџџ
%"
gender_Maleџџџџџџџџџ
&#
gender_Otherџџџџџџџџџ
NK
4legislation_Aviation_Security_Act_1982__section_27_1џџџџџџџџџ
OL
5legislation_Conservation_of_Seals_Act_1970__section_4џџџџџџџџџ
MJ
3legislation_Criminal_Justice_Act_1988__section_139Bџџџџџџџџџ
\Y
Blegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60џџџџџџџџџ
C@
)legislation_Crossbows_Act_1987__section_4џџџџџџџџџ
YV
?legislation_Customs_and_Excise_Management_Act_1979__section_163џџџџџџџџџ
?<
%legislation_Deer_Act_1991__section_12џџџџџџџџџ
UR
;legislation_Environmental_Protection_Act_1990__section_34B_џџџџџџџџџ
C@
)legislation_Firearms_Act_1968__section_47џџџџџџџџџ
A>
'legislation_Hunting_Act_2004__section_8џџџџџџџџџ
JG
0legislation_Misuse_of_Drugs_Act_1971__section_23џџџџџџџџџ
MJ
3legislation_Poaching_Prevention_Act_1862__section_2џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_1џџџџџџџџџ
VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_6џџџџџџџџџ
PM
6legislation_Protection_of_Badgers_Act_1992__section_11џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s36_2џџџџџџџџџ
MJ
3legislation_Psychoactive_Substances_Act_2016__s37_2џџџџџџџџџ
GD
-legislation_Public_Stores_Act_1875__section_6џџџџџџџџџ
SP
9legislation_Wildlife_and_Countryside_Act_1981__section_19џџџџџџџџџ
96
officer_defined_ethnicity_Asianџџџџџџџџџ
96
officer_defined_ethnicity_Blackџџџџџџџџџ
96
officer_defined_ethnicity_Mixedџџџџџџџџџ
96
officer_defined_ethnicity_Otherџџџџџџџџџ
96
officer_defined_ethnicity_Whiteџџџџџџџџџ
85
type_Person_and_Vehicle_searchџџџџџџџџџ
,)
type_Person_searchџџџџџџџџџ
-*
type_Vehicle_searchџџџџџџџџџ
NK
4object_of_search_Anything_to_threaten_or_harm_anyoneџџџџџџџџџ
C@
)object_of_search_Article_for_use_in_theftџџџџџџџџџ
NK
4object_of_search_Articles_for_use_in_criminal_damageџџџџџџџџџ
;8
!object_of_search_Controlled_drugsџџџџџџџџџ
41
object_of_search_Crossbowsџџџџџџџџџ
PM
6object_of_search_Detailed_object_of_search_unavailableџџџџџџџџџ
MJ
3object_of_search_Evidence_of_offences_under_the_Actџџџџџџџџџ
HE
.object_of_search_Evidence_of_wildlife_offencesџџџџџџџџџ
30
object_of_search_Firearmsџџџџџџџџџ
41
object_of_search_Fireworksџџџџџџџџџ
EB
+object_of_search_Game_or_poaching_equipmentџџџџџџџџџ
UR
;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.џџџџџџџџџ
<9
"object_of_search_Offensive_weaponsџџџџџџџџџ
B?
(object_of_search_Psychoactive_substancesџџџџџџџџџ
EB
+object_of_search_Seals_or_hunting_equipmentџџџџџџџџџ
74
object_of_search_Stolen_goodsџџџџџџџџџ
.+
object_of_search_dogџџџџџџџџџ
1.
force_avon-and-somersetџџџџџџџџџ
,)
force_bedfordshireџџџџџџџџџ
# 
	force_btpџџџџџџџџџ
.+
force_cambridgeshireџџџџџџџџџ
(%
force_cheshireџџџџџџџџџ
.+
force_city-of-londonџџџџџџџџџ
)&
force_clevelandџџџџџџџџџ
'$
force_cumbriaџџџџџџџџџ
*'
force_derbyshireџџџџџџџџџ
2/
force_devon-and-cornwallџџџџџџџџџ
&#
force_dorsetџџџџџџџџџ
&#
force_durhamџџџџџџџџџ
+(
force_dyfed-powysџџџџџџџџџ
%"
force_essexџџџџџџџџџ
/,
force_gloucestershireџџџџџџџџџ
)&
force_hampshireџџџџџџџџџ
-*
force_hertfordshireџџџџџџџџџ
*'
force_humbersideџџџџџџџџџ
$!

force_kentџџџџџџџџџ
*'
force_lancashireџџџџџџџџџ
.+
force_leicestershireџџџџџџџџџ
,)
force_lincolnshireџџџџџџџџџ
*'
force_merseysideџџџџџџџџџ
,)
force_metropolitanџџџџџџџџџ
'$
force_norfolkџџџџџџџџџ
+(
force_north-walesџџџџџџџџџ
/,
force_north-yorkshireџџџџџџџџџ
0-
force_northamptonshireџџџџџџџџџ
+(
force_northumbriaџџџџџџџџџ
-*
force_staffordshireџџџџџџџџџ
'$
force_suffolkџџџџџџџџџ
&#
force_sussexџџџџџџџџџ
-*
force_thames-valleyџџџџџџџџџ
,)
force_warwickshireџџџџџџџџџ
+(
force_west-merciaџџџџџџџџџ
.+
force_west-yorkshireџџџџџџџџџ
)&
force_wiltshireџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
$__inference_model_layer_call_fn_6802сjkpqvwМЂИ
АЂЌ
Ё
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
# 
	inputs/21џџџџџџџџџ
# 
	inputs/22џџџџџџџџџ
# 
	inputs/23џџџџџџџџџ
# 
	inputs/24џџџџџџџџџ
# 
	inputs/25џџџџџџџџџ
# 
	inputs/26џџџџџџџџџ
# 
	inputs/27џџџџџџџџџ
# 
	inputs/28џџџџџџџџџ
# 
	inputs/29џџџџџџџџџ
# 
	inputs/30џџџџџџџџџ
# 
	inputs/31џџџџџџџџџ
# 
	inputs/32џџџџџџџџџ
# 
	inputs/33џџџџџџџџџ
# 
	inputs/34џџџџџџџџџ
# 
	inputs/35џџџџџџџџџ
# 
	inputs/36џџџџџџџџџ
# 
	inputs/37џџџџџџџџџ
# 
	inputs/38џџџџџџџџџ
# 
	inputs/39џџџџџџџџџ
# 
	inputs/40џџџџџџџџџ
# 
	inputs/41џџџџџџџџџ
# 
	inputs/42џџџџџџџџџ
# 
	inputs/43џџџџџџџџџ
# 
	inputs/44џџџџџџџџџ
# 
	inputs/45џџџџџџџџџ
# 
	inputs/46џџџџџџџџџ
# 
	inputs/47џџџџџџџџџ
# 
	inputs/48џџџџџџџџџ
# 
	inputs/49џџџџџџџџџ
# 
	inputs/50џџџџџџџџџ
# 
	inputs/51џџџџџџџџџ
# 
	inputs/52џџџџџџџџџ
# 
	inputs/53џџџџџџџџџ
# 
	inputs/54џџџџџџџџџ
# 
	inputs/55џџџџџџџџџ
# 
	inputs/56џџџџџџџџџ
# 
	inputs/57џџџџџџџџџ
# 
	inputs/58џџџџџџџџџ
# 
	inputs/59џџџџџџџџџ
# 
	inputs/60џџџџџџџџџ
# 
	inputs/61џџџџџџџџџ
# 
	inputs/62џџџџџџџџџ
# 
	inputs/63џџџџџџџџџ
# 
	inputs/64џџџџџџџџџ
# 
	inputs/65џџџџџџџџџ
# 
	inputs/66џџџџџџџџџ
# 
	inputs/67џџџџџџџџџ
# 
	inputs/68џџџџџџџџџ
# 
	inputs/69џџџџџџџџџ
# 
	inputs/70џџџџџџџџџ
# 
	inputs/71џџџџџџџџџ
# 
	inputs/72џџџџџџџџџ
# 
	inputs/73џџџџџџџџџ
# 
	inputs/74џџџџџџџџџ
# 
	inputs/75џџџџџџџџџ
# 
	inputs/76џџџџџџџџџ
# 
	inputs/77џџџџџџџџџ
# 
	inputs/78џџџџџџџџџ
# 
	inputs/79џџџџџџџџџ
# 
	inputs/80џџџџџџџџџ
# 
	inputs/81џџџџџџџџџ
# 
	inputs/82џџџџџџџџџ
# 
	inputs/83џџџџџџџџџ
# 
	inputs/84џџџџџџџџџ
# 
	inputs/85џџџџџџџџџ
# 
	inputs/86џџџџџџџџџ
# 
	inputs/87џџџџџџџџџ
# 
	inputs/88џџџџџџџџџ
# 
	inputs/89џџџџџџџџџ
# 
	inputs/90џџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
$__inference_model_layer_call_fn_6909сjkpqvwМЂИ
АЂЌ
Ё
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
# 
	inputs/21џџџџџџџџџ
# 
	inputs/22џџџџџџџџџ
# 
	inputs/23џџџџџџџџџ
# 
	inputs/24џџџџџџџџџ
# 
	inputs/25џџџџџџџџџ
# 
	inputs/26џџџџџџџџџ
# 
	inputs/27џџџџџџџџџ
# 
	inputs/28џџџџџџџџџ
# 
	inputs/29џџџџџџџџџ
# 
	inputs/30џџџџџџџџџ
# 
	inputs/31џџџџџџџџџ
# 
	inputs/32џџџџџџџџџ
# 
	inputs/33џџџџџџџџџ
# 
	inputs/34џџџџџџџџџ
# 
	inputs/35џџџџџџџџџ
# 
	inputs/36џџџџџџџџџ
# 
	inputs/37џџџџџџџџџ
# 
	inputs/38џџџџџџџџџ
# 
	inputs/39џџџџџџџџџ
# 
	inputs/40џџџџџџџџџ
# 
	inputs/41џџџџџџџџџ
# 
	inputs/42џџџџџџџџџ
# 
	inputs/43џџџџџџџџџ
# 
	inputs/44џџџџџџџџџ
# 
	inputs/45џџџџџџџџџ
# 
	inputs/46џџџџџџџџџ
# 
	inputs/47џџџџџџџџџ
# 
	inputs/48џџџџџџџџџ
# 
	inputs/49џџџџџџџџџ
# 
	inputs/50џџџџџџџџџ
# 
	inputs/51џџџџџџџџџ
# 
	inputs/52џџџџџџџџџ
# 
	inputs/53џџџџџџџџџ
# 
	inputs/54џџџџџџџџџ
# 
	inputs/55џџџџџџџџџ
# 
	inputs/56џџџџџџџџџ
# 
	inputs/57џџџџџџџџџ
# 
	inputs/58џџџџџџџџџ
# 
	inputs/59џџџџџџџџџ
# 
	inputs/60џџџџџџџџџ
# 
	inputs/61џџџџџџџџџ
# 
	inputs/62џџџџџџџџџ
# 
	inputs/63џџџџџџџџџ
# 
	inputs/64џџџџџџџџџ
# 
	inputs/65џџџџџџџџџ
# 
	inputs/66џџџџџџџџџ
# 
	inputs/67џџџџџџџџџ
# 
	inputs/68џџџџџџџџџ
# 
	inputs/69џџџџџџџџџ
# 
	inputs/70џџџџџџџџџ
# 
	inputs/71џџџџџџџџџ
# 
	inputs/72џџџџџџџџџ
# 
	inputs/73џџџџџџџџџ
# 
	inputs/74џџџџџџџџџ
# 
	inputs/75џџџџџџџџџ
# 
	inputs/76џџџџџџџџџ
# 
	inputs/77џџџџџџџџџ
# 
	inputs/78џџџџџџџџџ
# 
	inputs/79џџџџџџџџџ
# 
	inputs/80џџџџџџџџџ
# 
	inputs/81џџџџџџџџџ
# 
	inputs/82џџџџџџџџџ
# 
	inputs/83џџџџџџџџџ
# 
	inputs/84џџџџџџџџџ
# 
	inputs/85џџџџџџџџџ
# 
	inputs/86џџџџџџџџџ
# 
	inputs/87џџџџџџџџџ
# 
	inputs/88џџџџџџџџџ
# 
	inputs/89џџџџџџџџџ
# 
	inputs/90џџџџџџџџџ
p

 
Њ "џџџџџџџџџчA
"__inference_signature_wrapper_6695РAjkpqvwAЂў@
Ђ 
і@Њђ@
*
action 
actionџџџџџџџџџ
L
force_avon-and-somerset1.
force_avon-and-somersetџџџџџџџџџ
B
force_bedfordshire,)
force_bedfordshireџџџџџџџџџ
0
	force_btp# 
	force_btpџџџџџџџџџ
F
force_cambridgeshire.+
force_cambridgeshireџџџџџџџџџ
:
force_cheshire(%
force_cheshireџџџџџџџџџ
F
force_city-of-london.+
force_city-of-londonџџџџџџџџџ
<
force_cleveland)&
force_clevelandџџџџџџџџџ
8
force_cumbria'$
force_cumbriaџџџџџџџџџ
>
force_derbyshire*'
force_derbyshireџџџџџџџџџ
N
force_devon-and-cornwall2/
force_devon-and-cornwallџџџџџџџџџ
6
force_dorset&#
force_dorsetџџџџџџџџџ
6
force_durham&#
force_durhamџџџџџџџџџ
@
force_dyfed-powys+(
force_dyfed-powysџџџџџџџџџ
4
force_essex%"
force_essexџџџџџџџџџ
H
force_gloucestershire/,
force_gloucestershireџџџџџџџџџ
<
force_hampshire)&
force_hampshireџџџџџџџџџ
D
force_hertfordshire-*
force_hertfordshireџџџџџџџџџ
>
force_humberside*'
force_humbersideџџџџџџџџџ
2

force_kent$!

force_kentџџџџџџџџџ
>
force_lancashire*'
force_lancashireџџџџџџџџџ
F
force_leicestershire.+
force_leicestershireџџџџџџџџџ
B
force_lincolnshire,)
force_lincolnshireџџџџџџџџџ
>
force_merseyside*'
force_merseysideџџџџџџџџџ
B
force_metropolitan,)
force_metropolitanџџџџџџџџџ
8
force_norfolk'$
force_norfolkџџџџџџџџџ
@
force_north-wales+(
force_north-walesџџџџџџџџџ
H
force_north-yorkshire/,
force_north-yorkshireџџџџџџџџџ
J
force_northamptonshire0-
force_northamptonshireџџџџџџџџџ
@
force_northumbria+(
force_northumbriaџџџџџџџџџ
D
force_staffordshire-*
force_staffordshireџџџџџџџџџ
8
force_suffolk'$
force_suffolkџџџџџџџџџ
6
force_sussex&#
force_sussexџџџџџџџџџ
D
force_thames-valley-*
force_thames-valleyџџџџџџџџџ
B
force_warwickshire,)
force_warwickshireџџџџџџџџџ
@
force_west-mercia+(
force_west-merciaџџџџџџџџџ
F
force_west-yorkshire.+
force_west-yorkshireџџџџџџџџџ
<
force_wiltshire)&
force_wiltshireџџџџџџџџџ
8
gender_Female'$
gender_Femaleџџџџџџџџџ
4
gender_Male%"
gender_Maleџџџџџџџџџ
6
gender_Other&#
gender_Otherџџџџџџџџџ
<
involved_person)&
involved_personџџџџџџџџџ

4legislation_Aviation_Security_Act_1982__section_27_1NK
4legislation_Aviation_Security_Act_1982__section_27_1џџџџџџџџџ

5legislation_Conservation_of_Seals_Act_1970__section_4OL
5legislation_Conservation_of_Seals_Act_1970__section_4џџџџџџџџџ

3legislation_Criminal_Justice_Act_1988__section_139BMJ
3legislation_Criminal_Justice_Act_1988__section_139Bџџџџџџџџџ
Ђ
Blegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60\Y
Blegislation_Criminal_Justice_and_Public_Order_Act_1994__section_60џџџџџџџџџ
p
)legislation_Crossbows_Act_1987__section_4C@
)legislation_Crossbows_Act_1987__section_4џџџџџџџџџ

?legislation_Customs_and_Excise_Management_Act_1979__section_163YV
?legislation_Customs_and_Excise_Management_Act_1979__section_163џџџџџџџџџ
h
%legislation_Deer_Act_1991__section_12?<
%legislation_Deer_Act_1991__section_12џџџџџџџџџ

;legislation_Environmental_Protection_Act_1990__section_34B_UR
;legislation_Environmental_Protection_Act_1990__section_34B_џџџџџџџџџ
p
)legislation_Firearms_Act_1968__section_47C@
)legislation_Firearms_Act_1968__section_47џџџџџџџџџ
l
'legislation_Hunting_Act_2004__section_8A>
'legislation_Hunting_Act_2004__section_8џџџџџџџџџ
~
0legislation_Misuse_of_Drugs_Act_1971__section_23JG
0legislation_Misuse_of_Drugs_Act_1971__section_23џџџџџџџџџ

3legislation_Poaching_Prevention_Act_1862__section_2MJ
3legislation_Poaching_Prevention_Act_1862__section_2џџџџџџџџџ

<legislation_Police_and_Criminal_Evidence_Act_1984__section_1VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_1џџџџџџџџџ

<legislation_Police_and_Criminal_Evidence_Act_1984__section_6VS
<legislation_Police_and_Criminal_Evidence_Act_1984__section_6џџџџџџџџџ

6legislation_Protection_of_Badgers_Act_1992__section_11PM
6legislation_Protection_of_Badgers_Act_1992__section_11џџџџџџџџџ

3legislation_Psychoactive_Substances_Act_2016__s36_2MJ
3legislation_Psychoactive_Substances_Act_2016__s36_2џџџџџџџџџ

3legislation_Psychoactive_Substances_Act_2016__s37_2MJ
3legislation_Psychoactive_Substances_Act_2016__s37_2џџџџџџџџџ
x
-legislation_Public_Stores_Act_1875__section_6GD
-legislation_Public_Stores_Act_1875__section_6џџџџџџџџџ

9legislation_Wildlife_and_Countryside_Act_1981__section_19SP
9legislation_Wildlife_and_Countryside_Act_1981__section_19џџџџџџџџџ

4object_of_search_Anything_to_threaten_or_harm_anyoneNK
4object_of_search_Anything_to_threaten_or_harm_anyoneџџџџџџџџџ
p
)object_of_search_Article_for_use_in_theftC@
)object_of_search_Article_for_use_in_theftџџџџџџџџџ

4object_of_search_Articles_for_use_in_criminal_damageNK
4object_of_search_Articles_for_use_in_criminal_damageџџџџџџџџџ
`
!object_of_search_Controlled_drugs;8
!object_of_search_Controlled_drugsџџџџџџџџџ
R
object_of_search_Crossbows41
object_of_search_Crossbowsџџџџџџџџџ

6object_of_search_Detailed_object_of_search_unavailablePM
6object_of_search_Detailed_object_of_search_unavailableџџџџџџџџџ

3object_of_search_Evidence_of_offences_under_the_ActMJ
3object_of_search_Evidence_of_offences_under_the_Actџџџџџџџџџ
z
.object_of_search_Evidence_of_wildlife_offencesHE
.object_of_search_Evidence_of_wildlife_offencesџџџџџџџџџ
P
object_of_search_Firearms30
object_of_search_Firearmsџџџџџџџџџ
R
object_of_search_Fireworks41
object_of_search_Fireworksџџџџџџџџџ
t
+object_of_search_Game_or_poaching_equipmentEB
+object_of_search_Game_or_poaching_equipmentџџџџџџџџџ

;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.UR
;object_of_search_Goods_on_which_duty_has_not_been_paid_etc.џџџџџџџџџ
b
"object_of_search_Offensive_weapons<9
"object_of_search_Offensive_weaponsџџџџџџџџџ
n
(object_of_search_Psychoactive_substancesB?
(object_of_search_Psychoactive_substancesџџџџџџџџџ
t
+object_of_search_Seals_or_hunting_equipmentEB
+object_of_search_Seals_or_hunting_equipmentџџџџџџџџџ
X
object_of_search_Stolen_goods74
object_of_search_Stolen_goodsџџџџџџџџџ
F
object_of_search_dog.+
object_of_search_dogџџџџџџџџџ
\
officer_defined_ethnicity_Asian96
officer_defined_ethnicity_Asianџџџџџџџџџ
\
officer_defined_ethnicity_Black96
officer_defined_ethnicity_Blackџџџџџџџџџ
\
officer_defined_ethnicity_Mixed96
officer_defined_ethnicity_Mixedџџџџџџџџџ
\
officer_defined_ethnicity_Other96
officer_defined_ethnicity_Otherџџџџџџџџџ
\
officer_defined_ethnicity_White96
officer_defined_ethnicity_Whiteџџџџџџџџџ
V
self_defined_ethnicity_asian63
self_defined_ethnicity_asianџџџџџџџџџ
V
self_defined_ethnicity_black63
self_defined_ethnicity_blackџџџџџџџџџ
V
self_defined_ethnicity_mixed63
self_defined_ethnicity_mixedџџџџџџџџџ
V
self_defined_ethnicity_other63
self_defined_ethnicity_otherџџџџџџџџџ
V
self_defined_ethnicity_white63
self_defined_ethnicity_whiteџџџџџџџџџ
Z
type_Person_and_Vehicle_search85
type_Person_and_Vehicle_searchџџџџџџџџџ
B
type_Person_search,)
type_Person_searchџџџџџџџџџ
D
type_Vehicle_search-*
type_Vehicle_searchџџџџџџџџџ"1Њ.
,
dense_2!
dense_2џџџџџџџџџ