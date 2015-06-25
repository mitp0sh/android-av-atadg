.class public Lde/gdata/mobilesecurity/inapp/util/IabHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/android/vending/billing/IInAppBillingService;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a:Z

    .line 59
    const-string v0, "IabHelper"

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->b:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c:Z

    .line 65
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d:Z

    .line 68
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->e:Z

    .line 72
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->f:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->g:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->m:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->m:Ljava/lang/String;

    .line 148
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 690
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 692
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 698
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 699
    rsub-int v0, p0, -0x3e8

    .line 700
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 701
    aget-object v0, v1, v0

    .line 707
    :goto_0
    return-object v0

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 704
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 705
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 707
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 4

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 738
    if-nez v0, :cond_0

    .line 739
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x0

    .line 744
    :goto_0
    return v0

    .line 741
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 742
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 743
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 744
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 746
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 748
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 720
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 721
    if-nez v0, :cond_0

    .line 722
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 723
    const/4 v0, 0x0

    .line 727
    :goto_0
    return v0

    .line 724
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 725
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 726
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 727
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 729
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 731
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Lde/gdata/mobilesecurity/inapp/util/Inventory;Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 772
    const/4 v0, 0x0

    move v1, v3

    .line 775
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 776
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 778
    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Owned items response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 780
    if-eqz v0, :cond_1

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    move v3, v0

    .line 822
    :cond_0
    :goto_1
    return v3

    .line 784
    :cond_1
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 787
    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 788
    const/16 v3, -0x3ea

    goto :goto_1

    .line 791
    :cond_3
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 792
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 793
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v4, v1

    .line 795
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 796
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 797
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 798
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 799
    iget-object v10, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->m:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lde/gdata/mobilesecurity/inapp/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 800
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 801
    new-instance v2, Lde/gdata/mobilesecurity/inapp/util/Purchase;

    invoke-direct {v2, p2, v0, v1}, Lde/gdata/mobilesecurity/inapp/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 804
    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->e(Ljava/lang/String;)V

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 809
    :cond_4
    invoke-virtual {p1, v2}, Lde/gdata/mobilesecurity/inapp/util/Inventory;->a(Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    .line 795
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 811
    :cond_5
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->e(Ljava/lang/String;)V

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Purchase data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Signature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 814
    const/4 v4, 0x1

    goto :goto_3

    .line 818
    :cond_6
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 820
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 822
    if-eqz v4, :cond_0

    const/16 v3, -0x3eb

    goto/16 :goto_1

    :cond_7
    move v1, v4

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Lde/gdata/mobilesecurity/inapp/util/Inventory;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lde/gdata/mobilesecurity/inapp/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 826
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 827
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 828
    invoke-virtual {p2, p1}, Lde/gdata/mobilesecurity/inapp/util/Inventory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 829
    if-eqz p3, :cond_1

    .line 830
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 831
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 832
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 838
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    move v0, v1

    .line 864
    :goto_1
    return v0

    .line 842
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 843
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 844
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 846
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 847
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 848
    if-eqz v0, :cond_3

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 852
    :cond_3
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 853
    const/16 v0, -0x3ea

    goto :goto_1

    .line 857
    :cond_4
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 860
    new-instance v3, Lde/gdata/mobilesecurity/inapp/util/SkuDetails;

    invoke-direct {v3, p1, v0}, Lde/gdata/mobilesecurity/inapp/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2, v3}, Lde/gdata/mobilesecurity/inapp/util/Inventory;->a(Lde/gdata/mobilesecurity/inapp/util/SkuDetails;)V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 864
    goto :goto_1
.end method

.method a(Lde/gdata/mobilesecurity/inapp/util/Purchase;)V
    .locals 5

    .prologue
    .line 604
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 605
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;)V

    .line 607
    iget-object v0, p1, Lde/gdata/mobilesecurity/inapp/util/Purchase;->a:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lde/gdata/mobilesecurity/inapp/util/Purchase;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 615
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 616
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 617
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    new-instance v1, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 621
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 623
    if-nez v0, :cond_3

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 633
    return-void

    .line 626
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 627
    new-instance v2, Lde/gdata/mobilesecurity/inapp/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 712
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c:Z

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 714
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/inapp/util/Purchase;",
            ">;",
            "Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;",
            "Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 869
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 870
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->b(Ljava/lang/String;)V

    .line 871
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/inapp/util/d;-><init>(Lde/gdata/mobilesecurity/inapp/util/IabHelper;Ljava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 901
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 753
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->f:Z

    if-eqz v0, :cond_0

    .line 754
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->g:Ljava/lang/String;

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->f:Z

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    return-void
.end method

.method public consumeAsync(Lde/gdata/mobilesecurity/inapp/util/Purchase;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2

    .prologue
    .line 666
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 667
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 671
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/inapp/util/Purchase;",
            ">;",
            "Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 679
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 680
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;)V

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 682
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c:Z

    .line 265
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 269
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d:Z

    .line 270
    iput-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    .line 271
    iput-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->j:Landroid/content/ServiceConnection;

    .line 272
    iput-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 273
    iput-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 274
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 912
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 162
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a:Z

    .line 163
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 156
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a:Z

    .line 157
    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->b:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public flagEndAsync()V
    .locals 2

    .prologue
    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->g:Ljava/lang/String;

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->f:Z

    .line 765
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 401
    iget v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->k:I

    if-eq p1, v2, :cond_0

    .line 477
    :goto_0
    return v0

    .line 403
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 404
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 409
    if-nez p3, :cond_2

    .line 410
    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 411
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 412
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    :cond_1
    move v0, v1

    .line 413
    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {p0, p3}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Landroid/content/Intent;)I

    move-result v2

    .line 417
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    if-ne p2, v5, :cond_a

    if-nez v2, :cond_a

    .line 421
    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected item type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->l:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 427
    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    .line 428
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 430
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 431
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    :cond_4
    move v0, v1

    .line 432
    goto/16 :goto_0

    .line 437
    :cond_5
    :try_start_0
    new-instance v2, Lde/gdata/mobilesecurity/inapp/util/Purchase;

    iget-object v5, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->l:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lde/gdata/mobilesecurity/inapp/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 441
    iget-object v6, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->m:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lde/gdata/mobilesecurity/inapp/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 443
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signature verification failed for sku "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 445
    iget-object v3, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v3, v0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    :cond_6
    move v0, v1

    .line 446
    goto/16 :goto_0

    .line 448
    :cond_7
    const-string v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    iget-object v3, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_8

    .line 458
    iget-object v3, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v4, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    :cond_8
    :goto_1
    move v0, v1

    .line 477
    goto/16 :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 452
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 453
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    :cond_9
    move v0, v1

    .line 454
    goto/16 :goto_0

    .line 460
    :cond_a
    if-ne p2, v5, :cond_b

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_8

    .line 464
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 465
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    goto :goto_1

    .line 467
    :cond_b
    if-nez p2, :cond_c

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 469
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 470
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    goto :goto_1

    .line 472
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 474
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 475
    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    goto/16 :goto_1
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    .prologue
    .line 305
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 310
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 341
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 342
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;)V

    .line 343
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->b(Ljava/lang/String;)V

    .line 346
    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->e:Z

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 349
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 356
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 357
    if-eqz v1, :cond_2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 360
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 361
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 375
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 377
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 378
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    goto/16 :goto_0

    .line 365
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 367
    iput p4, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->k:I

    .line 368
    iput-object p5, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->n:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 369
    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->l:Ljava/lang/String;

    .line 370
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->d(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 382
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 384
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 385
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    .prologue
    .line 315
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 320
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lde/gdata/mobilesecurity/inapp/util/Inventory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lde/gdata/mobilesecurity/inapp/util/Inventory;"
        }
    .end annotation

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lde/gdata/mobilesecurity/inapp/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lde/gdata/mobilesecurity/inapp/util/Inventory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lde/gdata/mobilesecurity/inapp/util/Inventory;"
        }
    .end annotation

    .prologue
    .line 498
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 499
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;)V

    .line 501
    :try_start_0
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/Inventory;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/inapp/util/Inventory;-><init>()V

    .line 502
    const-string v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Lde/gdata/mobilesecurity/inapp/util/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 503
    if-eqz v1, :cond_0

    .line 504
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    new-instance v1, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 507
    :cond_0
    if-eqz p1, :cond_1

    .line 508
    :try_start_1
    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;Lde/gdata/mobilesecurity/inapp/util/Inventory;Ljava/util/List;)I

    move-result v1

    .line 509
    if-eqz v1, :cond_1

    .line 510
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 532
    :catch_1
    move-exception v0

    .line 533
    new-instance v1, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 515
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->e:Z

    if-eqz v1, :cond_3

    .line 516
    const-string v1, "subs"

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Lde/gdata/mobilesecurity/inapp/util/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 517
    if-eqz v1, :cond_2

    .line 518
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 521
    :cond_2
    if-eqz p1, :cond_3

    .line 522
    const-string v1, "subs"

    invoke-virtual {p0, v1, v0, p2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;Lde/gdata/mobilesecurity/inapp/util/Inventory;Ljava/util/List;)I

    move-result v1

    .line 523
    if-eqz v1, :cond_3

    .line 524
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabException;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 529
    :cond_3
    return-object v0
.end method

.method public queryInventoryAsync(Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    .prologue
    .line 589
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 590
    return-void
.end method

.method public queryInventoryAsync(ZLde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 594
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 560
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 561
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a(Ljava/lang/String;)V

    .line 562
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->b(Ljava/lang/String;)V

    .line 563
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/b;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/inapp/util/b;-><init>(Lde/gdata/mobilesecurity/inapp/util/IabHelper;ZLjava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 586
    return-void
.end method

.method public startSetup(Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4

    .prologue
    .line 184
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 185
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->c(Ljava/lang/String;)V

    .line 189
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/a;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/inapp/util/a;-><init>(Lde/gdata/mobilesecurity/inapp/util/IabHelper;Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->j:Landroid/content/ServiceConnection;

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->h:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    if-eqz p1, :cond_1

    .line 251
    new-instance v0, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->a()V

    .line 283
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->e:Z

    return v0
.end method
