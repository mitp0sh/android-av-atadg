.class public Lde/gdata/mobilesecurity/receiver/SMSReceiver$DelayedWipeThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 430
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver$DelayedWipeThread;->a:Landroid/app/admin/DevicePolicyManager;

    .line 431
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/receiver/SMSReceiver$DelayedWipeThread;->sleep(J)V

    .line 438
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/SMSReceiver$DelayedWipeThread;->a:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0
.end method
