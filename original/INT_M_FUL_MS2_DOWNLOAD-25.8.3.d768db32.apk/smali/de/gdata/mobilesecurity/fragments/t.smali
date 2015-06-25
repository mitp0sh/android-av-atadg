.class Lde/gdata/mobilesecurity/fragments/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnIabSetupFinishedListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/t;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 165
    const-string v0, "Setup finished."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "Setup successful. Querying inventory."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ms2onemonth_sub"

    aput-object v2, v0, v1

    const-string v1, "ms2oneyear_sub"

    aput-object v1, v0, v3

    .line 177
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/t;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->flagEndAsync()V

    .line 179
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/t;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;)Lde/gdata/mobilesecurity/inapp/util/IabHelper;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/t;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    iget-object v2, v2, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->a:Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v3, v0, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
