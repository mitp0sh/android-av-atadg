.class public Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->b:Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a:Ljava/util/HashMap;

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/g;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/g;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 36
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/h;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/h;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 37
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/n;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/n;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 38
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/l;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/l;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 39
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/m;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/m;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 41
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/k;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/k;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 42
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/j;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/j;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 44
    const-class v0, Ljava/lang/String;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/o;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/o;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 48
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/i;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/deser/std/i;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 49
    return-void
.end method

.method private a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a:Ljava/util/HashMap;

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public static getAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->b:Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->a:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
