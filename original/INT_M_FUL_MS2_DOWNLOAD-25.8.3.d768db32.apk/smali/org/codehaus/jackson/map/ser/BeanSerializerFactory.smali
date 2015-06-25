.class public Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
.super Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;


# instance fields
.field protected final _factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->instance:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;-><init>()V

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    invoke-direct {p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>()V

    .line 190
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    .line 191
    return-void
.end method


# virtual methods
.method protected _constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 8

    .prologue
    .line 763
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 766
    :cond_0
    invoke-virtual {p6, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getType(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 767
    new-instance v0, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v1

    invoke-direct {v0, p5, v2, v1, p6}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 770
    invoke-virtual {p0, p1, p6, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    .line 772
    const/4 v5, 0x0

    .line 773
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->isCollectionMapOrArray(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    invoke-virtual {p0, v2, p1, p6, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v5

    .line 778
    :cond_1
    invoke-virtual {p0, v2, p1, p6, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v4

    move-object v0, p3

    move-object v1, p5

    move-object v6, p6

    move v7, p4

    .line 779
    invoke-virtual/range {v0 .. v7}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->buildWriter(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Z)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    .line 782
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 783
    invoke-virtual {v1, p6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->setViews([Ljava/lang/Class;)V

    .line 784
    return-object v0
.end method

.method protected constructBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 427
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not create bean serializer for Object.class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v7

    .line 434
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;

    move-result-object v1

    .line 436
    if-nez v1, :cond_1

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 442
    invoke-virtual {v1, p1, p2, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->changeProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 443
    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 447
    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->filterBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 449
    invoke-virtual {p0, p1, p2, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->sortBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 452
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 453
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 454
    invoke-virtual {v1, p1, p2, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->orderProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 455
    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 458
    :cond_5
    invoke-virtual {v7, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setProperties(Ljava/util/List;)V

    .line 459
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findFilterId(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilterId(Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnyGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v8

    .line 462
    if-eqz v8, :cond_7

    .line 463
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 466
    :cond_6
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 468
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    .line 469
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 470
    invoke-virtual {p0, p1, v3, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v3

    move-object v4, p3

    move-object v5, v0

    move-object v6, v0

    .line 472
    invoke-static/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->construct([Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/std/MapSerializer;

    move-result-object v0

    .line 474
    new-instance v1, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-direct {v1, v8, v0}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/ser/std/MapSerializer;)V

    invoke-virtual {v7, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setAnyGetter(Lorg/codehaus/jackson/map/ser/AnyGetterWriter;)V

    .line 477
    :cond_7
    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->processViews(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)V

    .line 479
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 480
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v7

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 481
    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->updateBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v0

    move-object v1, v0

    .line 482
    goto :goto_2

    :cond_8
    move-object v1, v7

    .line 484
    :cond_9
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->build()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 489
    if-nez v0, :cond_a

    .line 494
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->hasKnownClassAnnotations()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 495
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->createDummy()Lorg/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object v0

    .line 498
    :cond_a
    return-object v0
.end method

.method protected constructBeanSerializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;
    .locals 1

    .prologue
    .line 518
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructFilteredBeanWriter(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;->constructViewBased(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    return-object v0
.end method

.method protected constructPropertyBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/PropertyBuilder;
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method public createKeySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasKeySerializers()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-object v1

    .line 314
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 318
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->keySerializers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/Serializers;

    .line 319
    invoke-interface {v1, p1, p2, v0, p3}, Lorg/codehaus/jackson/map/Serializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public createSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/SerializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 252
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 260
    if-eq v2, p2, :cond_2

    const/4 v5, 0x1

    .line 261
    :goto_1
    if-eq v2, p2, :cond_6

    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_6

    .line 263
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-object v3, v0

    .line 267
    :goto_2
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 268
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->buildContainerSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 272
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Serializers;

    .line 273
    invoke-interface {v0, p1, v2, v3, p3}, Lorg/codehaus/jackson/map/Serializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_5
    move-object v6, p0

    move-object v7, v2

    move-object v8, p1

    move-object v9, v3

    move-object v10, p3

    move v11, v5

    .line 283
    invoke-virtual/range {v6 .. v11}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByLookup(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    move-object v6, p0

    move-object v7, v2

    move-object v8, p1

    move-object v9, v3

    move-object v10, p3

    move v11, v5

    .line 285
    invoke-virtual/range {v6 .. v11}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByPrimaryType(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0, p1, v2, v3, p3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 295
    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 296
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByAddonType(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v3, v0

    goto :goto_2
.end method

.method protected customSerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected filterBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 612
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    .line 613
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 615
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 616
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 617
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 623
    :cond_1
    return-object p3
.end method

.method protected findBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findProperties()Ljava/util/List;

    move-result-object v1

    .line 559
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v8

    .line 562
    invoke-virtual {p0, p1, p2, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->removeIgnorableTypes(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V

    .line 565
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->REQUIRE_SETTERS_FOR_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    invoke-virtual {p0, p1, p2, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->removeSetterlessGetters(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V

    .line 570
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    :goto_0
    return-object v0

    .line 575
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->usesStaticTyping(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Z

    move-result v4

    .line 576
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructPropertyBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/PropertyBuilder;

    move-result-object v3

    .line 578
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v2

    .line 581
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 582
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v6

    .line 584
    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v1

    .line 585
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v1

    if-nez v1, :cond_2

    .line 588
    :cond_3
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    .line 589
    instance-of v0, v6, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_4

    .line 590
    check-cast v6, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 592
    :cond_4
    check-cast v6, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v7

    .line 595
    goto :goto_0
.end method

.method public findBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    const/4 v1, 0x0

    .line 354
    :cond_0
    :goto_0
    return-object v1

    .line 347
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 351
    invoke-virtual {v0, p1, p3, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->modifySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    move-object v1, v0

    .line 352
    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method protected findFilterId(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyContentTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 4

    .prologue
    .line 399
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 400
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 401
    invoke-virtual {v1, p2, p3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 403
    if-nez v2, :cond_0

    .line 404
    invoke-virtual {p0, p2, v0, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    .line 406
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p3, p2, v1}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v1

    .line 407
    invoke-interface {v2, p2, v0, v1, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method public findPropertyTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 374
    invoke-virtual {v0, p2, p3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 376
    if-nez v1, :cond_0

    .line 377
    invoke-virtual {p0, p2, p1, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 379
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    .line 380
    invoke-interface {v1, p2, p1, v0, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfig()Lorg/codehaus/jackson/map/SerializerFactory$Config;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    return-object v0
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 548
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processViews(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 667
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->getProperties()Ljava/util/List;

    move-result-object v3

    .line 668
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->DEFAULT_VIEW_INCLUSION:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v4

    .line 669
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 671
    new-array v6, v5, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move v2, v0

    move v1, v0

    .line 673
    :goto_0
    if-ge v2, v5, :cond_2

    .line 674
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 675
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v7

    .line 676
    if-nez v7, :cond_0

    .line 677
    if-eqz v4, :cond_1

    .line 678
    aput-object v0, v6, v2

    move v0, v1

    .line 673
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 681
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 682
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructFilteredBeanWriter(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    aput-object v0, v6, v2

    :cond_1
    move v0, v1

    goto :goto_1

    .line 686
    :cond_2
    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 690
    :goto_2
    return-void

    .line 689
    :cond_3
    invoke-virtual {p2, v6}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilteredProperties([Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    goto :goto_2
.end method

.method protected removeIgnorableTypes(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 701
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 702
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 703
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 704
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 705
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    .line 706
    if-nez v0, :cond_1

    .line 707
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v4

    .line 711
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 712
    if-nez v0, :cond_3

    .line 713
    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 714
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 715
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 717
    if-nez v0, :cond_2

    .line 718
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 720
    :cond_2
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 727
    :cond_4
    return-void
.end method

.method protected removeSetterlessGetters(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 738
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 739
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 743
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->couldDeserialize()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->isExplicitlyIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 747
    :cond_1
    return-void
.end method

.method protected sortBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 649
    return-object p3
.end method

.method public withConfig(Lorg/codehaus/jackson/map/SerializerFactory$Config;)Lorg/codehaus/jackson/map/SerializerFactory;
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    if-ne v0, p1, :cond_0

    .line 220
    :goto_0
    return-object p0

    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    if-eq v0, v1, :cond_1

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalSerializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional serializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    new-instance p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    goto :goto_0
.end method
