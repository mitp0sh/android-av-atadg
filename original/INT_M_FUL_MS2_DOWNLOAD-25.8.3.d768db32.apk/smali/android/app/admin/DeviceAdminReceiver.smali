.class public abstract Landroid/app/admin/DeviceAdminReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
.end method

.method public abstract onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
.end method

.method public abstract onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
.end method
