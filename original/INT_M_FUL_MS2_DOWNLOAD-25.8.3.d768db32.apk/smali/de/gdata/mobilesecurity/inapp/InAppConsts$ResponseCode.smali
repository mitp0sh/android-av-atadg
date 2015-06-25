.class public final enum Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RESULT_BILLING_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

.field public static final enum RESULT_ERROR:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

.field public static final enum RESULT_OK:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

.field private static final synthetic a:[Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_OK:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_USER_CANCELED:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    new-instance v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_ERROR:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_OK:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_USER_CANCELED:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_ERROR:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->a:[Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->values()[Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    move-result-object v0

    .line 12
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 13
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->RESULT_ERROR:Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    .line 15
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    return-object v0
.end method

.method public static values()[Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->a:[Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    invoke-virtual {v0}, [Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/gdata/mobilesecurity/inapp/InAppConsts$ResponseCode;

    return-object v0
.end method
