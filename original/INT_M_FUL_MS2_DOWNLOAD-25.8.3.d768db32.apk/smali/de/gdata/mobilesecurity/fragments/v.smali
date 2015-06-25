.class Lde/gdata/mobilesecurity/fragments/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabPurchaseFinishedListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/v;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Purchase;)V
    .locals 8

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase finished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/v;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(Lde/gdata/mobilesecurity/inapp/util/Purchase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "Purchase successful."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms2oneyear_sub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    const-string v0, "MS2ONEYEAR_SUB subscription purchased."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 274
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/v;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v2, v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->startTaskBuy(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/v;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->e(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Lde/gdata/mobilesecurity/util/BasePreferences;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/v;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    .line 279
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/v;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->f(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/inapp/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms2onemonth_sub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const-string v0, "MS2ONEMONTH_SUB subscription purchased."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
