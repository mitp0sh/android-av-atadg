.class public Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected _anyGetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _anySetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _config:Lorg/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

.field protected _creatorProperties:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field protected final _forSerialization:Z

.field protected _ignoredPropertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoredPropertyNamesForDeser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _injectables:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end field

.field protected _jsonValueGetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _properties:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field protected final _type:Lorg/codehaus/jackson/type/JavaType;

.field protected final _visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/MapperConfig;ZLorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;Z",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    .line 60
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 62
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 64
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 69
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    .line 104
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    .line 105
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    .line 106
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 107
    iput-object p4, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 108
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 110
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/MapperConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    goto :goto_0
.end method

.method private a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    if-nez p1, :cond_0

    .line 708
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 710
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 711
    return-object p1
.end method

.method private a(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V
    .locals 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

    .line 600
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyDeserializeIgnorals()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method protected _addCreators()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 374
    if-nez v3, :cond_1

    .line 409
    :cond_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 378
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v1, :cond_3

    .line 379
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 381
    :cond_3
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_2

    .line 382
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    .line 383
    invoke-virtual {v3, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v7

    .line 385
    if-eqz v7, :cond_4

    .line 387
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v8

    .line 388
    invoke-virtual {v8, v6, v7, v9, v2}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addCtor(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V

    .line 389
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 394
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v1, :cond_7

    .line 395
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 397
    :cond_7
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_6

    .line 398
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    .line 399
    invoke-virtual {v3, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v7

    .line 401
    if-eqz v7, :cond_8

    .line 403
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v8

    .line 404
    invoke-virtual {v8, v6, v7, v9, v2}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addCtor(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V

    .line 405
    iget-object v6, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected _addFields()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 335
    iget-object v7, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 337
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 338
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v6

    .line 341
    if-nez v7, :cond_0

    .line 342
    const/4 v1, 0x0

    .line 353
    :goto_1
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v5, v6

    .line 357
    :goto_2
    if-eqz v5, :cond_2

    move v1, v2

    .line 358
    :goto_3
    if-nez v1, :cond_5

    .line 359
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isFieldVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v1

    move v4, v1

    .line 362
    :goto_4
    if-eqz v7, :cond_3

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 363
    :goto_5
    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v5, v4, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 343
    :cond_0
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 351
    :cond_1
    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 357
    goto :goto_3

    :cond_3
    move v1, v3

    .line 362
    goto :goto_5

    .line 365
    :cond_4
    return-void

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    move-object v5, v1

    goto :goto_2
.end method

.method protected _addInjectables()V
    .locals 5

    .prologue
    .line 512
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 513
    if-nez v1, :cond_1

    .line 531
    :cond_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 519
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 526
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 529
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    goto :goto_1
.end method

.method protected _addMethods()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 416
    iget-object v8, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 418
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 427
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    .line 430
    if-nez v1, :cond_b

    .line 432
    if-eqz v8, :cond_4

    .line 433
    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 435
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 437
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 442
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    if-nez v1, :cond_3

    .line 443
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    .line 445
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_4
    if-nez v8, :cond_5

    move-object v2, v7

    .line 451
    :goto_1
    if-nez v2, :cond_7

    .line 452
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForRegularGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 453
    if-nez v5, :cond_6

    .line 454
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForIsGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 455
    if-eqz v5, :cond_0

    .line 458
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isIsGetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    move-object v6, v2

    move v2, v1

    .line 474
    :goto_2
    if-nez v8, :cond_a

    move v1, v3

    .line 475
    :goto_3
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v6, v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 450
    :cond_5
    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 460
    :cond_6
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isGetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    move-object v6, v2

    move v2, v1

    goto :goto_2

    .line 464
    :cond_7
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 466
    if-nez v1, :cond_8

    .line 467
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    .line 469
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    move-object v2, v1

    :cond_9
    move-object v5, v1

    move-object v6, v2

    move v2, v4

    .line 472
    goto :goto_2

    .line 474
    :cond_a
    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v1

    goto :goto_3

    .line 476
    :cond_b
    if-ne v1, v4, :cond_11

    .line 477
    if-nez v8, :cond_c

    move-object v2, v7

    .line 478
    :goto_4
    if-nez v2, :cond_d

    .line 479
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v5

    .line 480
    if-eqz v5, :cond_0

    .line 483
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isSetterVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    move-object v6, v2

    move v2, v1

    .line 496
    :goto_5
    if-nez v8, :cond_10

    move v1, v3

    .line 497
    :goto_6
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v6, v2, v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 477
    :cond_c
    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 486
    :cond_d
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 488
    if-nez v1, :cond_e

    .line 489
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_f

    move-object v2, v1

    :cond_f
    move-object v5, v1

    move-object v6, v2

    move v2, v4

    .line 494
    goto :goto_5

    .line 496
    :cond_10
    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v1

    goto :goto_6

    .line 499
    :cond_11
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 500
    if-eqz v8, :cond_0

    invoke-virtual {v8, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    if-nez v1, :cond_12

    .line 502
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 504
    :cond_12
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 508
    :cond_13
    return-void
.end method

.method protected _doAddInjectable(Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V
    .locals 4

    .prologue
    .line 535
    if-nez p1, :cond_1

    .line 547
    :cond_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_2

    .line 539
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    .line 541
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 542
    if-eqz v0, :cond_0

    .line 543
    if-nez p1, :cond_3

    const-string v0, "[null]"

    .line 544
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate injectable value with id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _property(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 698
    if-nez v0, :cond_0

    .line 699
    new-instance v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    :cond_0
    return-object v0
.end method

.method protected _removeUnwantedProperties()V
    .locals 3

    .prologue
    .line 561
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 562
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 564
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 567
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyIgnorals()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->a(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    .line 575
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyExplicitNames()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->removeIgnored()V

    .line 583
    :cond_2
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->removeNonVisible()V

    goto :goto_0

    .line 585
    :cond_3
    return-void
.end method

.method protected _renameProperties()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 615
    const/4 v1, 0x0

    .line 616
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 618
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 619
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findNewName()Ljava/lang/String;

    move-result-object v3

    .line 620
    if-eqz v3, :cond_0

    .line 621
    if-nez v1, :cond_1

    .line 622
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 624
    :cond_1
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v0

    .line 625
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 631
    :cond_2
    if-eqz v1, :cond_4

    .line 632
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 633
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 634
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 635
    if-nez v1, :cond_3

    .line 636
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 638
    :cond_3
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addAll(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    goto :goto_1

    .line 642
    :cond_4
    return-void
.end method

.method protected _renameUsing(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)V
    .locals 7

    .prologue
    .line 646
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 647
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 648
    array-length v5, v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_7

    aget-object v3, v0, v4

    .line 649
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 650
    iget-boolean v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v2, :cond_2

    .line 651
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasGetter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p1, v2, v6, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForGetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 670
    :goto_1
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v1

    move-object v3, v1

    .line 676
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 677
    if-nez v1, :cond_6

    .line 678
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasField()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 654
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v6

    invoke-virtual {p1, v2, v6, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForField(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 657
    :cond_2
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasSetter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 658
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p1, v2, v6, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForSetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 659
    :cond_3
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasConstructorParameter()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getConstructorParameter()Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    invoke-virtual {p1, v2, v6, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForConstructorParameter(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 661
    :cond_4
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasField()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 662
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v6

    invoke-virtual {p1, v2, v6, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForField(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 663
    :cond_5
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasGetter()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 667
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p1, v2, v6, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->nameForGetterMethod(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 680
    :cond_6
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addAll(Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    goto :goto_2

    .line 683
    :cond_7
    return-void

    :cond_8
    move-object v2, v1

    goto/16 :goto_1
.end method

.method protected _sortProperties()V
    .locals 11

    .prologue
    .line 264
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 266
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 268
    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig;->shouldSortPropertiesAlphabetically()Z

    move-result v0

    .line 273
    :goto_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v5

    .line 276
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    if-nez v5, :cond_1

    .line 322
    :goto_1
    return-void

    .line 271
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 279
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    .line 282
    if-eqz v0, :cond_2

    .line 283
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v2, v0

    .line 288
    :goto_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 289
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 285
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    add-int v2, v1, v1

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object v2, v0

    goto :goto_2

    .line 291
    :cond_3
    new-instance v6, Ljava/util/LinkedHashMap;

    add-int v0, v1, v1

    invoke-direct {v6, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 293
    if-eqz v5, :cond_6

    .line 294
    array-length v7, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_4
    if-ge v4, v7, :cond_6

    aget-object v3, v5, v4

    .line 295
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 296
    if-nez v0, :cond_8

    .line 297
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 298
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 301
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 306
    :goto_5
    if-eqz v0, :cond_5

    .line 307
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 312
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    .line 313
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 314
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 318
    :cond_7
    invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 321
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_8
    move-object v1, v3

    goto :goto_5
.end method

.method public collect()Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 218
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addFields()V

    .line 219
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addMethods()V

    .line 220
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addCreators()V

    .line 221
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addInjectables()V

    .line 224
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_removeUnwantedProperties()V

    .line 227
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_renameProperties()V

    .line 229
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig;->getPropertyNamingStrategy()Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_renameUsing(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 239
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->trimByVisibility()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 244
    iget-boolean v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;->mergeAnnotations(Z)V

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_sortProperties()V

    .line 249
    return-object p0
.end method

.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    return-object v0
.end method

.method public getAnyGetterMethod()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple \'any-getters\' defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 172
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnySetterMethod()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple \'any-setters\' defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 184
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassDef()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    return-object v0
.end method

.method public getConfig()Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lorg/codehaus/jackson/map/MapperConfig;

    return-object v0
.end method

.method public getIgnoredPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

    return-object v0
.end method

.method public getIgnoredPropertyNamesForDeser()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    return-object v0
.end method

.method public getInjectables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getJsonValueMethod()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple value properties defined ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 160
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_type:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method protected reportProblem(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem with definition of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
