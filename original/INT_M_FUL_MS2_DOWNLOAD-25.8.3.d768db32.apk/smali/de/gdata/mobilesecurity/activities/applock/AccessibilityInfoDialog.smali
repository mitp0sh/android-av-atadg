.class public Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final DISABLE_ACCESSIBILITY_SERVICE:I = 0x0

.field public static final ENABLE_ACCESSIBILITY_SERVICE:I = 0x1

.field public static final ENABLE_APP_LOCK_LOLLIPOP:I = 0x2

.field public static final ENABLE_APP_LOCK_LOLLIPOP_FOR_MMS:I = 0x3


# instance fields
.field a:Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 27
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;->a:Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;

    .line 28
    iput p2, p0, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;->b:I

    .line 29
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36
    .line 38
    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;->b:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 56
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lde/gdata/mobilesecurity/activities/applock/a;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/applock/a;-><init>(Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 40
    :pswitch_0
    const v0, 0x7f0d021b

    .line 41
    goto :goto_0

    .line 44
    :pswitch_1
    const v0, 0x7f0d021a

    .line 45
    goto :goto_0

    .line 48
    :pswitch_2
    const v0, 0x7f0d0218

    .line 49
    goto :goto_0

    .line 52
    :pswitch_3
    const v0, 0x7f0d0219

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
