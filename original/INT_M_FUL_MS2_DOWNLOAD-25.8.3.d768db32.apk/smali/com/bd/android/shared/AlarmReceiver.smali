.class public Lcom/bd/android/shared/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 14
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 25
    const-string v1, "com.bd.android.shared.action.PRODUCT_LICENSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-static {}, Lcom/bd/android/shared/LicenseProdActivator;->getInstance()Lcom/bd/android/shared/LicenseProdActivator;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_2

    .line 31
    const/4 v2, 0x0

    sget-object v3, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->CHECK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    invoke-virtual {v1, v2, v3}, Lcom/bd/android/shared/LicenseProdActivator;->RefreshLicense(Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;)V

    .line 35
    :cond_2
    const-string v1, "com.bd.android.shared.action.SDK_LICENSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/bd/android/shared/LicenseActivator;->getInstance(Landroid/content/Context;)Lcom/bd/android/shared/LicenseActivator;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/bd/android/shared/LicenseActivator;->refreshLicense()V

    goto :goto_0
.end method
