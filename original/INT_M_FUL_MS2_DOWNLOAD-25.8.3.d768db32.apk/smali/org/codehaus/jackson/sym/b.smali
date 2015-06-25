.class final Lorg/codehaus/jackson/sym/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[I

.field public final d:[Lorg/codehaus/jackson/sym/Name;

.field public final e:[Lorg/codehaus/jackson/sym/a;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(II[I[Lorg/codehaus/jackson/sym/Name;[Lorg/codehaus/jackson/sym/a;III)V
    .locals 0

    .prologue
    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput p1, p0, Lorg/codehaus/jackson/sym/b;->a:I

    .line 1131
    iput p2, p0, Lorg/codehaus/jackson/sym/b;->b:I

    .line 1132
    iput-object p3, p0, Lorg/codehaus/jackson/sym/b;->c:[I

    .line 1133
    iput-object p4, p0, Lorg/codehaus/jackson/sym/b;->d:[Lorg/codehaus/jackson/sym/Name;

    .line 1134
    iput-object p5, p0, Lorg/codehaus/jackson/sym/b;->e:[Lorg/codehaus/jackson/sym/a;

    .line 1135
    iput p6, p0, Lorg/codehaus/jackson/sym/b;->f:I

    .line 1136
    iput p7, p0, Lorg/codehaus/jackson/sym/b;->g:I

    .line 1137
    iput p8, p0, Lorg/codehaus/jackson/sym/b;->h:I

    .line 1138
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
    .locals 1

    .prologue
    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v0, p0, Lorg/codehaus/jackson/sym/b;->a:I

    .line 1143
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v0, p0, Lorg/codehaus/jackson/sym/b;->b:I

    .line 1144
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/b;->c:[I

    .line 1145
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/b;->d:[Lorg/codehaus/jackson/sym/Name;

    .line 1146
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/a;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/b;->e:[Lorg/codehaus/jackson/sym/a;

    .line 1147
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v0, p0, Lorg/codehaus/jackson/sym/b;->f:I

    .line 1148
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v0, p0, Lorg/codehaus/jackson/sym/b;->g:I

    .line 1149
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    iput v0, p0, Lorg/codehaus/jackson/sym/b;->h:I

    .line 1150
    return-void
.end method
