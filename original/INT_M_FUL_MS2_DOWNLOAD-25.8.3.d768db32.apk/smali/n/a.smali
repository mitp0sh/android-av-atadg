.class public Ln/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# instance fields
.field private a:Ln/d;

.field private b:Z

.field private c:Ln/e;

.field private d:[I

.field private e:Ln/b;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/a;->b:Z

    .line 893
    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    iput-object v0, p0, Ln/a;->e:Ln/b;

    .line 42
    invoke-direct {p0}, Ln/a;->a()V

    .line 43
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 731
    iget-object v0, p0, Ln/a;->c:Ln/e;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v1

    .line 734
    :cond_1
    iget-object v0, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v0, p2}, Ln/e;->a(Ljava/lang/String;)I

    move-result v3

    .line 735
    if-eq v3, v1, :cond_0

    .line 738
    if-eqz p1, :cond_3

    iget-object v0, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v0, p1}, Ln/e;->a(Ljava/lang/String;)I

    move-result v0

    .line 741
    :goto_1
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Ln/a;->k:[I

    array-length v4, v4

    if-eq v2, v4, :cond_0

    .line 742
    iget-object v4, p0, Ln/a;->k:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_4

    if-eq v0, v1, :cond_2

    iget-object v4, p0, Ln/a;->k:[I

    add-int/lit8 v5, v2, 0x0

    aget v4, v4, v5

    if-ne v0, v4, :cond_4

    .line 745
    :cond_2
    div-int/lit8 v1, v2, 0x5

    goto :goto_0

    :cond_3
    move v0, v1

    .line 738
    goto :goto_1

    .line 741
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private final a()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 752
    iput v1, p0, Ln/a;->g:I

    .line 753
    iput v1, p0, Ln/a;->h:I

    .line 754
    iput v1, p0, Ln/a;->i:I

    .line 755
    iput v1, p0, Ln/a;->j:I

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Ln/a;->k:[I

    .line 757
    iput v1, p0, Ln/a;->l:I

    .line 758
    iput v1, p0, Ln/a;->m:I

    .line 759
    iput v1, p0, Ln/a;->n:I

    .line 760
    return-void
.end method

.method private final b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v2, 0x100102

    const v7, 0x100100

    const/4 v0, 0x3

    const/4 v6, 0x1

    .line 764
    iget-object v1, p0, Ln/a;->c:Ln/e;

    if-nez v1, :cond_0

    .line 765
    iget-object v1, p0, Ln/a;->a:Ln/d;

    const v3, 0x80003

    invoke-static {v1, v3}, Ln/c;->a(Ln/d;I)V

    .line 766
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->c()V

    .line 767
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-static {v1}, Ln/e;->a(Ln/d;)Ln/e;

    move-result-object v1

    iput-object v1, p0, Ln/a;->c:Ln/e;

    .line 768
    iget-object v1, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v1}, Ln/b;->e()V

    .line 769
    iput-boolean v6, p0, Ln/a;->b:Z

    .line 772
    :cond_0
    iget v1, p0, Ln/a;->g:I

    if-ne v1, v6, :cond_1

    .line 879
    :goto_0
    return-void

    .line 776
    :cond_1
    iget v3, p0, Ln/a;->g:I

    .line 777
    invoke-direct {p0}, Ln/a;->a()V

    .line 780
    :cond_2
    :goto_1
    iget-boolean v1, p0, Ln/a;->f:Z

    if-eqz v1, :cond_3

    .line 781
    iput-boolean v8, p0, Ln/a;->f:Z

    .line 782
    iget-object v1, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v1}, Ln/b;->f()V

    .line 786
    :cond_3
    if-ne v3, v0, :cond_4

    iget-object v1, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v1}, Ln/b;->d()I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v1}, Ln/b;->b()I

    move-result v1

    if-nez v1, :cond_4

    .line 790
    iput v6, p0, Ln/a;->g:I

    goto :goto_0

    .line 795
    :cond_4
    if-nez v3, :cond_6

    move v1, v2

    .line 802
    :goto_2
    const v4, 0x80180

    if-ne v1, v4, :cond_8

    .line 803
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->b()I

    move-result v1

    .line 804
    const/16 v4, 0x8

    if-lt v1, v4, :cond_5

    rem-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_7

    .line 805
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ids size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_6
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->b()I

    move-result v1

    goto :goto_2

    .line 807
    :cond_7
    iget-object v4, p0, Ln/a;->a:Ln/d;

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Ln/d;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Ln/a;->d:[I

    goto :goto_1

    .line 811
    :cond_8
    if-lt v1, v7, :cond_9

    const v4, 0x100104

    if-le v1, v4, :cond_a

    .line 812
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chunk type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_a
    if-ne v1, v2, :cond_b

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    .line 817
    iput v8, p0, Ln/a;->g:I

    goto/16 :goto_0

    .line 822
    :cond_b
    iget-object v4, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v4}, Ln/d;->c()V

    .line 823
    iget-object v4, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v4}, Ln/d;->b()I

    move-result v4

    .line 824
    iget-object v5, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v5}, Ln/d;->c()V

    .line 826
    if-eq v1, v7, :cond_c

    const v5, 0x100101

    if-ne v1, v5, :cond_e

    .line 829
    :cond_c
    if-ne v1, v7, :cond_d

    .line 830
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->b()I

    move-result v1

    .line 831
    iget-object v4, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v4}, Ln/d;->b()I

    move-result v4

    .line 832
    iget-object v5, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v5, v1, v4}, Ln/b;->a(II)V

    goto/16 :goto_1

    .line 834
    :cond_d
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->c()V

    .line 835
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->c()V

    .line 836
    iget-object v1, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v1}, Ln/b;->c()Z

    goto/16 :goto_1

    .line 841
    :cond_e
    iput v4, p0, Ln/a;->h:I

    .line 843
    if-ne v1, v2, :cond_10

    .line 844
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->b()I

    move-result v1

    iput v1, p0, Ln/a;->j:I

    .line 845
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->b()I

    move-result v1

    iput v1, p0, Ln/a;->i:I

    .line 846
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->c()V

    .line 847
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->b()I

    move-result v1

    .line 848
    ushr-int/lit8 v2, v1, 0x10

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ln/a;->l:I

    .line 849
    const v2, 0xffff

    and-int/2addr v1, v2

    .line 850
    iget-object v2, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v2}, Ln/d;->b()I

    move-result v2

    iput v2, p0, Ln/a;->m:I

    .line 851
    iget v2, p0, Ln/a;->m:I

    ushr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ln/a;->n:I

    .line 852
    iget v2, p0, Ln/a;->m:I

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ln/a;->m:I

    .line 853
    iget-object v2, p0, Ln/a;->a:Ln/d;

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v2, v1}, Ln/d;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Ln/a;->k:[I

    .line 854
    :goto_3
    iget-object v1, p0, Ln/a;->k:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 855
    iget-object v1, p0, Ln/a;->k:[I

    iget-object v2, p0, Ln/a;->k:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x18

    aput v2, v1, v0

    .line 856
    add-int/lit8 v0, v0, 0x5

    goto :goto_3

    .line 858
    :cond_f
    iget-object v0, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v0}, Ln/b;->e()V

    .line 859
    const/4 v0, 0x2

    iput v0, p0, Ln/a;->g:I

    goto/16 :goto_0

    .line 863
    :cond_10
    const v4, 0x100103

    if-ne v1, v4, :cond_11

    .line 864
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->b()I

    move-result v1

    iput v1, p0, Ln/a;->j:I

    .line 865
    iget-object v1, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v1}, Ln/d;->b()I

    move-result v1

    iput v1, p0, Ln/a;->i:I

    .line 866
    iput v0, p0, Ln/a;->g:I

    .line 867
    iput-boolean v6, p0, Ln/a;->f:Z

    goto/16 :goto_0

    .line 871
    :cond_11
    const v4, 0x100104

    if-ne v1, v4, :cond_2

    .line 872
    iget-object v0, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v0}, Ln/d;->b()I

    move-result v0

    iput v0, p0, Ln/a;->i:I

    .line 873
    iget-object v0, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v0}, Ln/d;->c()V

    .line 874
    iget-object v0, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v0}, Ln/d;->c()V

    .line 875
    const/4 v0, 0x4

    iput v0, p0, Ln/a;->g:I

    goto/16 :goto_0
.end method

.method private final c(I)I
    .locals 3

    .prologue
    .line 720
    iget v0, p0, Ln/a;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Current event is not START_TAG."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    mul-int/lit8 v0, p1, 0x5

    .line 724
    iget-object v1, p0, Ln/a;->k:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 725
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1
    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 276
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 277
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x3

    aget v0, v1, v0

    return v0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Ln/a;->close()V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Ln/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ln/d;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Ln/a;->a:Ln/d;

    .line 50
    :cond_0
    return-void
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 282
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-boolean v0, p0, Ln/a;->b:Z

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/a;->b:Z

    .line 57
    iget-object v0, p0, Ln/a;->a:Ln/d;

    invoke-virtual {v0}, Ln/d;->a()V

    .line 58
    iput-object v1, p0, Ln/a;->a:Ln/d;

    .line 59
    iput-object v1, p0, Ln/a;->c:Ln/e;

    .line 60
    iput-object v1, p0, Ln/a;->d:[I

    .line 61
    iget-object v0, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v0}, Ln/b;->a()V

    .line 62
    invoke-direct {p0}, Ln/a;->a()V

    goto :goto_0
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 426
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ln/a;->getAttributeIntValue(II)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Ln/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 344
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 347
    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Ln/a;->getAttributeBooleanValue(IZ)Z

    move-result p3

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Ln/a;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 231
    const/4 v0, -0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ln/a;->k:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 3

    .prologue
    .line 301
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 302
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 303
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 304
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    .line 305
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 307
    :cond_0
    return p2
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Ln/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 352
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 355
    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Ln/a;->getAttributeFloatValue(IF)F

    move-result p3

    goto :goto_0
.end method

.method public getAttributeIntValue(II)I
    .locals 3

    .prologue
    .line 311
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 312
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 313
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 316
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget p2, v1, v0

    .line 318
    :cond_0
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Ln/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 360
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 363
    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Ln/a;->getAttributeIntValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 257
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    .line 258
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 259
    const-string v0, ""

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeNameResource(I)I
    .locals 2

    .prologue
    .line 265
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 266
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    .line 267
    iget-object v1, p0, Ln/a;->d:[I

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Ln/a;->d:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ln/a;->d:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 238
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x0

    aget v0, v1, v0

    .line 239
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 240
    const-string v0, ""

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 247
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x0

    aget v0, v1, v0

    .line 248
    iget-object v1, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v1, v0}, Ln/b;->d(I)I

    move-result v0

    .line 249
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 250
    const-string v0, ""

    .line 252
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeResourceValue(II)I
    .locals 3

    .prologue
    .line 326
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 327
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 328
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 329
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget p2, v1, v0

    .line 331
    :cond_0
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Ln/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 376
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 379
    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Ln/a;->getAttributeResourceValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0, p1, p2}, Ln/a;->getAttributeIntValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Ln/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 368
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 371
    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Ln/a;->getAttributeUnsignedIntValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    invoke-direct {p0, p1}, Ln/a;->c(I)I

    move-result v0

    .line 287
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 288
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 289
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    .line 290
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    .line 293
    const-string v0, ""

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Ln/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 336
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ln/a;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Ln/a;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    .line 195
    :cond_0
    iget v0, p0, Ln/a;->m:I

    invoke-direct {p0, v0}, Ln/a;->c(I)I

    move-result v0

    .line 196
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    .line 197
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 414
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v0}, Ln/b;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Ln/a;->g:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    iget v0, p0, Ln/a;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget v0, p0, Ln/a;->l:I

    invoke-direct {p0, v0}, Ln/a;->c(I)I

    move-result v0

    .line 205
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    .line 206
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 3

    .prologue
    .line 210
    iget v0, p0, Ln/a;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return p1

    .line 213
    :cond_1
    iget v0, p0, Ln/a;->l:I

    invoke-direct {p0, v0}, Ln/a;->c(I)I

    move-result v0

    .line 214
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 215
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 218
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget p1, v1, v0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Ln/a;->h:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Ln/a;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ln/a;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Ln/a;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ln/a;->c:Ln/e;

    iget v1, p0, Ln/a;->i:I

    invoke-virtual {v0, v1}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Ln/a;->c:Ln/e;

    iget v1, p0, Ln/a;->j:I

    invoke-virtual {v0, v1}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->a(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->b(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Ln/a;->e:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->c(I)I

    move-result v0

    .line 186
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ln/a;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Ln/a;->e:Ln/b;

    iget v1, p0, Ln/a;->j:I

    invoke-virtual {v0, v1}, Ln/b;->d(I)I

    move-result v0

    .line 168
    iget-object v1, p0, Ln/a;->c:Ln/e;

    invoke-virtual {v1, v0}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Ln/a;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 225
    :cond_0
    iget v0, p0, Ln/a;->n:I

    invoke-direct {p0, v0}, Ln/a;->c(I)I

    move-result v0

    .line 226
    iget-object v1, p0, Ln/a;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Ln/a;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ln/a;->g:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ln/a;->c:Ln/e;

    iget v1, p0, Ln/a;->i:I

    invoke-virtual {v0, v1}, Ln/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Ln/a;->getText()Ljava/lang/String;

    move-result-object v1

    .line 152
    if-nez v1, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 155
    :cond_0
    aput v3, p1, v3

    .line 156
    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput v2, p1, v0

    .line 157
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 158
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Ln/a;->a:Ln/d;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser is not opened."

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 72
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ln/a;->b()V

    .line 73
    iget v0, p0, Ln/a;->g:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {p0}, Ln/a;->close()V

    .line 77
    throw v0
.end method

.method public nextTag()I
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Ln/a;->next()I

    move-result v0

    .line 87
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ln/a;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Ln/a;->next()I

    move-result v0

    .line 90
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 91
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Expected start or end tag."

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 93
    :cond_1
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Ln/a;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 98
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser must be on START_TAG to read next text."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ln/a;->next()I

    move-result v0

    .line 101
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 102
    invoke-virtual {p0}, Ln/a;->getText()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Ln/a;->next()I

    move-result v1

    .line 104
    if-eq v1, v3, :cond_2

    .line 105
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Event TEXT must be immediately followed by END_TAG."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :cond_1
    if-ne v0, v3, :cond_3

    .line 109
    const-string v0, ""

    :cond_2
    return-object v0

    .line 111
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser must be on START_TAG or TEXT to read text."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Ln/a;->next()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Ln/a;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ln/a;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Ln/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ln/a;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 122
    :cond_2
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 403
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
