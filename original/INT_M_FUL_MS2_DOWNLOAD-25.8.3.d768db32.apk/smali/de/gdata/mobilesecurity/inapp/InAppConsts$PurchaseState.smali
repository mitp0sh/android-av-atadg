.class public final enum Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

.field public static final enum PURCHASED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

.field public static final enum REFUNDED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

.field private static final synthetic a:[Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->PURCHASED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    .line 23
    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->CANCELED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    .line 24
    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->REFUNDED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->PURCHASED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->CANCELED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->REFUNDED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->a:[Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->values()[Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    move-result-object v0

    .line 29
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 30
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->CANCELED:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    .line 32
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->a:[Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    invoke-virtual {v0}, [Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    return-object v0
.end method
