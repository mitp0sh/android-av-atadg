.class Lorg/acra/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/acra/g;)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Lorg/acra/l;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/acra/l;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/acra/l;->a:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 675
    iget-object v0, p0, Lorg/acra/l;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/acra/l;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 668
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/l;->a:Ljava/lang/Long;

    .line 669
    return-void
.end method
