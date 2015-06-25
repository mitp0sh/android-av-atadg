.class public Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;
.super Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;
.source "SourceFile"


# instance fields
.field c:Ljava/lang/Object;

.field d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;-><init>()V

    .line 16
    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->d:Ljava/lang/Class;

    .line 21
    :try_start_0
    const-string v0, "com.samsungapps.plasma.PurchasedItemInformation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->d:Ljava/lang/Class;

    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->d:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 24
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t instantiate PurchasedItemInformation class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lde/gdata/mobilesecurity/inapp/plasma/ItemInformation;-><init>()V

    .line 16
    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->d:Ljava/lang/Class;

    .line 35
    :try_start_0
    const-string v0, "com.samsungapps.plasma.PurchasedItemInformation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->d:Ljava/lang/Class;

    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    iput-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t instantiate PurchasedItemInformation class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getPaymentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->d:Ljava/lang/Class;

    const-string v1, "getPaymentId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invocation of getPaymentId() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 59
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "ItemInformation object is null"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPurchaseDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->d:Ljava/lang/Class;

    const-string v1, "getPurchaseDate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/plasma/PurchasedItemInformation;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invocation of getPurchaseDate() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 75
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_0
    const-string v0, "ItemInformation object is null"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
