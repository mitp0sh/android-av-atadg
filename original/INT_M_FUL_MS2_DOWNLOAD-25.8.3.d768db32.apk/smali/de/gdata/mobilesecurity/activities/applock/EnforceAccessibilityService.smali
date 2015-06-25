.class public Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDialog(I)Landroid/support/v4/app/DialogFragment;
    .locals 3

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/m;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/applock/m;-><init>(Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;)V

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;-><init>(Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;I)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 56
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "EnforceAccessibilityService"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;->setContentView(I)V

    .line 28
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;->createDialog(I)Landroid/support/v4/app/DialogFragment;

    .line 31
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onPause()V

    .line 36
    return-void
.end method
