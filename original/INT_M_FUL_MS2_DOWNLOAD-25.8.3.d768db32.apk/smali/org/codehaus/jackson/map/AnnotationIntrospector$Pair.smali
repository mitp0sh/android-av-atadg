.class public Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "SourceFile"


# instance fields
.field protected final _primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    .line 896
    iput-object p1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 897
    iput-object p2, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 898
    return-void
.end method

.method public static create(Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 910
    if-nez p0, :cond_0

    .line 916
    :goto_0
    return-object p1

    .line 913
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 914
    goto :goto_0

    .line 916
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;-><init>(Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public allIntrospectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 927
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    .line 928
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    .line 929
    return-object p1
.end method

.method public findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1023
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 950
    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 953
    :cond_0
    return-object v0
.end method

.method public findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1359
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1360
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1362
    :cond_1
    return-object v0
.end method

.method public findContentSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v1, :cond_1

    .line 1173
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1175
    :cond_1
    return-object v0
.end method

.method public findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1453
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1454
    if-nez v1, :cond_1

    .line 1455
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1465
    :cond_0
    :goto_0
    return-object v0

    .line 1456
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1460
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1461
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1391
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1392
    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1395
    :cond_0
    return-object v0
.end method

.method public findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1380
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1381
    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1384
    :cond_0
    return-object v0
.end method

.method public findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1370
    if-nez v0, :cond_0

    .line 1371
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1373
    :cond_0
    return-object v0
.end method

.method public findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1339
    if-nez v0, :cond_0

    .line 1340
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1342
    :cond_0
    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1306
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    if-nez v0, :cond_0

    .line 1308
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 1310
    :cond_0
    return-object v0
.end method

.method public findFilterId(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 1004
    if-nez v0, :cond_0

    .line 1005
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 1007
    :cond_0
    return-object v0
.end method

.method public findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 1283
    if-nez v1, :cond_1

    .line 1284
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    :cond_0
    :goto_0
    return-object v0

    .line 1285
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1289
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 984
    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 987
    :cond_0
    return-object v0
.end method

.method public findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1115
    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 1118
    :cond_0
    return-object v0
.end method

.method public findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1348
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1349
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1350
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1352
    :cond_1
    return-object v0
.end method

.method public findKeySerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1161
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1162
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v1, :cond_1

    .line 1163
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1165
    :cond_1
    return-object v0
.end method

.method public findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 974
    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 977
    :cond_0
    return-object v0
.end method

.method public findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1059
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1060
    if-nez v0, :cond_0

    .line 1061
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1063
    :cond_0
    return-object v0
.end method

.method public findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    .line 1474
    if-nez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    .line 1477
    :cond_0
    return-object v0
.end method

.method public findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1049
    if-nez v0, :cond_0

    .line 1050
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1052
    :cond_0
    return-object v0
.end method

.method public findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 1095
    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 1098
    :cond_0
    return-object v0
.end method

.method public findRootName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 960
    if-nez v0, :cond_1

    .line 961
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 967
    :cond_0
    :goto_0
    return-object v0

    .line 962
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 966
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v1

    .line 967
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1319
    if-nez v1, :cond_1

    .line 1320
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    :cond_0
    :goto_0
    return-object v0

    .line 1321
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1325
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public findSerializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1222
    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1225
    :cond_0
    return-object v0
.end method

.method public findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    .line 1194
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    .line 1195
    return-object v0
.end method

.method public findSerializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1212
    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1215
    :cond_0
    return-object v0
.end method

.method public findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 1257
    if-nez v0, :cond_0

    .line 1258
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 1260
    :cond_0
    return-object v0
.end method

.method public findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1271
    if-nez v0, :cond_0

    .line 1272
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1274
    :cond_0
    return-object v0
.end method

.method public findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1201
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1202
    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1205
    :cond_0
    return-object v0
.end method

.method public findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v0

    .line 1232
    if-nez v0, :cond_0

    .line 1233
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v0

    .line 1235
    :cond_0
    return-object v0
.end method

.method public findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1245
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    .line 1246
    if-nez v0, :cond_0

    .line 1247
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    .line 1249
    :cond_0
    return-object v0
.end method

.method public findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1152
    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1155
    :cond_0
    return-object v0
.end method

.method public findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 1416
    if-nez v1, :cond_1

    .line 1417
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1427
    :cond_0
    :goto_0
    return-object v0

    .line 1418
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1422
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public findSubtypes(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v1

    .line 1070
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v2

    .line 1071
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 1076
    :goto_0
    return-object v0

    .line 1072
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 1073
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1074
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1075
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public findTypeName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1084
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    :cond_1
    return-object v0
.end method

.method public findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1038
    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1041
    :cond_0
    return-object v0
.end method

.method public findValueInstantiator(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 1404
    if-nez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 1407
    :cond_0
    return-object v0
.end method

.method public hasAnyGetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

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

.method public hasIgnoreMarker(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

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

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

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

.method public isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

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

.method public isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

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

.method public isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 994
    if-nez v0, :cond_0

    .line 995
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 997
    :cond_0
    return-object v0
.end method

.method public shouldUnwrapProperty(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1105
    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1108
    :cond_0
    return-object v0
.end method
