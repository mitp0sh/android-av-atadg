.class final Lorg/codehaus/jackson/map/deser/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/c;->a:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 192
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/c;->b:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/c;->a:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method
