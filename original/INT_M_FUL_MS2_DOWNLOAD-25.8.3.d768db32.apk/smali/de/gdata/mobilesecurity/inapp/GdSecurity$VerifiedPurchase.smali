.class public Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->purchaseState:Lde/gdata/mobilesecurity/inapp/InAppConsts$PurchaseState;

    .line 48
    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 51
    iput-wide p5, p0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->purchaseTime:J

    .line 52
    iput-object p7, p0, Lde/gdata/mobilesecurity/inapp/GdSecurity$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 53
    return-void
.end method
