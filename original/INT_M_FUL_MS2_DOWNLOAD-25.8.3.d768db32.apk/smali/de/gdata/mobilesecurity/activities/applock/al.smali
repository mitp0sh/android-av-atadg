.class final Lde/gdata/mobilesecurity/activities/applock/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 3

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/al;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 404
    return-void
.end method
