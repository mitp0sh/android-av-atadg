.class public Lde/gdata/mobilesecurity/inapp/GdSecurity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/GdSecurity;->a:Ljava/security/SecureRandom;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/inapp/GdSecurity;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lde/gdata/mobilesecurity/inapp/GdSecurity;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 59
    sget-object v2, Lde/gdata/mobilesecurity/inapp/GdSecurity;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    return-wide v0
.end method

.method public static isNonceKnown(J)Z
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lde/gdata/mobilesecurity/inapp/GdSecurity;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parsePurchaseData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 87
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v2, "nonce"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 91
    const-string v2, "orders"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 92
    if-eqz v11, :cond_0

    .line 93
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :cond_0
    invoke-static {v12, v13}, Lde/gdata/mobilesecurity/inapp/GdSecurity;->isNonceKnown(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 105
    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v0, :cond_3

    .line 106
    :try_start_1
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 107
    const-string v2, "purchaseState"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 108
    invoke-static {v2}, Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;->valueOf(I)Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    move-result-object v2

    .line 109
    const-string v3, "productId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    const-string v3, "purchaseTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 111
    const-string v3, "orderId"

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    const/4 v3, 0x0

    .line 113
    const-string v8, "notificationId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 114
    const-string v3, "notificationId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    :cond_2
    const-string v8, "developerPayload"

    const/4 v14, 0x0

    invoke-virtual {v1, v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 118
    new-instance v1, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;

    invoke-direct/range {v1 .. v8}, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;-><init>(Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v0

    .line 122
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_3
    invoke-static {v12, v13}, Lde/gdata/mobilesecurity/inapp/GdSecurity;->removeNonce(J)V

    move-object v0, v9

    .line 125
    goto :goto_0
.end method

.method public static removeNonce(J)V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/inapp/GdSecurity;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
