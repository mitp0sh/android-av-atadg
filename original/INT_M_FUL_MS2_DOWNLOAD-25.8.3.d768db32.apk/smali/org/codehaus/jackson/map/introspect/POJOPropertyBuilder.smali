.class public Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;
.super Lorg/codehaus/jackson/map/BeanPropertyDefinition;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _ctorParameters:Lorg/codehaus/jackson/map/introspect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/c",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected _fields:Lorg/codehaus/jackson/map/introspect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/c",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _getters:Lorg/codehaus/jackson/map/introspect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/c",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _internalName:Ljava/lang/String;

.field protected final _name:Ljava/lang/String;

.field protected _setters:Lorg/codehaus/jackson/map/introspect/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/c",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;-><init>()V

    .line 44
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    .line 47
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    .line 48
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    .line 49
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    .line 50
    return-void
.end method

.method private varargs a(I[Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lorg/codehaus/jackson/map/introspect/AnnotationMap;"
        }
    .end annotation

    .prologue
    .line 377
    aget-object v0, p2, p1

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAllAnnotations()Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 378
    add-int/lit8 v0, p1, 0x1

    .line 379
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 380
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 381
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(I[Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->merge(Lorg/codehaus/jackson/map/introspect/AnnotationMap;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v0

    .line 384
    :goto_1
    return-object v0

    .line 379
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 384
    goto :goto_1
.end method

.method private a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 392
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/c;->a()Lorg/codehaus/jackson/map/introspect/c;

    move-result-object p1

    goto :goto_0
.end method

.method private static a(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 293
    if-nez p0, :cond_0

    .line 299
    :goto_0
    return-object p1

    .line 296
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 297
    goto :goto_0

    .line 299
    :cond_1
    invoke-static {p0, p1}, Lorg/codehaus/jackson/map/introspect/c;->a(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object p1

    goto :goto_0
.end method

.method private b(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 400
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/c;->b()Lorg/codehaus/jackson/map/introspect/c;

    move-result-object p1

    goto :goto_0
.end method

.method private b(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;)",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<+",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    move-object v0, p2

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_3

    .line 503
    iget-object v2, v1, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    .line 504
    if-nez v2, :cond_1

    .line 502
    :cond_0
    :goto_1
    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    goto :goto_0

    .line 508
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 511
    if-nez v0, :cond_2

    move-object v0, v1

    .line 512
    goto :goto_1

    .line 515
    :cond_2
    iget-object v3, v0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting property name definitions: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") vs \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' (for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    :cond_3
    return-object v0
.end method

.method private c(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 408
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/c;->c()Lorg/codehaus/jackson/map/introspect/c;

    move-result-object p1

    goto :goto_0
.end method

.method private d(Lorg/codehaus/jackson/map/introspect/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 427
    :goto_0
    if-eqz p1, :cond_1

    .line 428
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 432
    :goto_1
    return v0

    .line 427
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e(Lorg/codehaus/jackson/map/introspect/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 445
    :goto_0
    if-eqz p1, :cond_1

    .line 446
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/introspect/c;->d:Z

    if-eqz v0, :cond_0

    .line 447
    const/4 v0, 0x1

    .line 450
    :goto_1
    return v0

    .line 445
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    goto :goto_0

    .line 450
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f(Lorg/codehaus/jackson/map/introspect/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/map/introspect/c",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 476
    :goto_0
    if-eqz p1, :cond_1

    .line 477
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/introspect/c;->e:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x1

    .line 481
    :goto_1
    return v0

    .line 476
    :cond_0
    iget-object p1, p1, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    goto :goto_0

    .line 481
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addAll(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    .line 286
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    .line 287
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    .line 288
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    .line 289
    return-void
.end method

.method public addCtor(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    .line 268
    new-instance v0, Lorg/codehaus/jackson/map/introspect/c;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/c;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/c;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    .line 269
    return-void
.end method

.method public addField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    .line 264
    new-instance v0, Lorg/codehaus/jackson/map/introspect/c;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/c;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/c;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    .line 265
    return-void
.end method

.method public addGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    .line 272
    new-instance v0, Lorg/codehaus/jackson/map/introspect/c;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/c;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/c;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    .line 273
    return-void
.end method

.method public addSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    .line 276
    new-instance v0, Lorg/codehaus/jackson/map/introspect/c;

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/c;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/c;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    .line 277
    return-void
.end method

.method public anyDeserializeIgnorals()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyExplicitNames()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->d(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->d(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->d(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->d(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyIgnorals()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anySerializeIgnorals()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->f(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyVisible()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->e(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->e(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->e(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->e(Lorg/codehaus/jackson/map/introspect/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->compareTo(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, -0x1

    .line 81
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public couldSerialize()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findNewName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 491
    .line 492
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->b(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v1

    .line 493
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->b(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->b(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v1

    .line 495
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->b(Lorg/codehaus/jackson/map/introspect/c;Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v1

    .line 496
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lorg/codehaus/jackson/map/introspect/c;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 120
    :cond_0
    return-object v0
.end method

.method public getConstructorParameter()Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    move-object v1, v0

    .line 249
    :goto_1
    iget-object v0, v1, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getOwner()Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    instance-of v0, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, v1, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, v1, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    .line 253
    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .locals 6

    .prologue
    .line 208
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_1

    .line 209
    const/4 v1, 0x0

    .line 230
    :cond_0
    return-object v1

    .line 212
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 213
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    move-object v2, v1

    move-object v1, v0

    .line 214
    :goto_0
    if-eqz v2, :cond_0

    .line 215
    iget-object v0, v2, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 216
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 217
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 218
    if-eq v3, v4, :cond_3

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    :goto_1
    iget-object v1, v2, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 224
    goto :goto_1

    .line 227
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple fields representing property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 6

    .prologue
    .line 144
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_1

    .line 145
    const/4 v1, 0x0

    .line 170
    :cond_0
    return-object v1

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 149
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    move-object v2, v1

    move-object v1, v0

    .line 150
    :goto_0
    if-eqz v2, :cond_0

    .line 155
    iget-object v0, v2, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 156
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 157
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 158
    if-eq v3, v4, :cond_3

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    :goto_1
    iget-object v1, v2, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 164
    goto :goto_1

    .line 167
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting getter definitions for property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMutator()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getConstructorParameter()Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 6

    .prologue
    .line 176
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_1

    .line 177
    const/4 v1, 0x0

    .line 202
    :cond_0
    return-object v1

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 181
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, v1, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    move-object v2, v1

    move-object v1, v0

    .line 182
    :goto_0
    if-eqz v2, :cond_0

    .line 187
    iget-object v0, v2, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 188
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 189
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 190
    if-eq v3, v4, :cond_3

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    :goto_1
    iget-object v1, v2, Lorg/codehaus/jackson/map/introspect/c;->b:Lorg/codehaus/jackson/map/introspect/c;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 196
    goto :goto_1

    .line 199
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting setter definitions for property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasConstructorParameter()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetter()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetter()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExplicitlyIncluded()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyExplicitNames()Z

    move-result v0

    return v0
.end method

.method public mergeAnnotations(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    if-eqz p1, :cond_2

    .line 354
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_1

    .line 355
    new-array v0, v1, [Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v5

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(I[Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 356
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_0

    .line 358
    new-array v0, v5, [Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v4

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(I[Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_3

    .line 363
    new-array v0, v1, [Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v5

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(I[Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_4

    .line 366
    new-array v0, v5, [Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v4

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(I[Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    goto :goto_0

    .line 368
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    if-eqz v0, :cond_0

    .line 369
    new-array v0, v4, [Lorg/codehaus/jackson/map/introspect/c;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(I[Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;

    move-result-object v1

    .line 370
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    iget-object v0, v0, Lorg/codehaus/jackson/map/introspect/c;->a:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->withAnnotations(Lorg/codehaus/jackson/map/introspect/AnnotationMap;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/introspect/c;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    goto/16 :goto_0
.end method

.method public removeIgnored()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    .line 315
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    .line 316
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    .line 317
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->a(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    .line 318
    return-void
.end method

.method public removeNonVisible()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->b(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    .line 329
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->b(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    .line 331
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->b(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    .line 333
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->b(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    .line 335
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    const-string v1, "[Property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; ctors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", field(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimByVisibility()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->c(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_fields:Lorg/codehaus/jackson/map/introspect/c;

    .line 345
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->c(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_getters:Lorg/codehaus/jackson/map/introspect/c;

    .line 346
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->c(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_setters:Lorg/codehaus/jackson/map/introspect/c;

    .line 347
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->c(Lorg/codehaus/jackson/map/introspect/c;)Lorg/codehaus/jackson/map/introspect/c;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->_ctorParameters:Lorg/codehaus/jackson/map/introspect/c;

    .line 348
    return-void
.end method

.method public withName(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;Ljava/lang/String;)V

    return-object v0
.end method
