.class Lde/gdata/mobilesecurity/activities/applock/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/m;->a:Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/m;->a:Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/m;->a:Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/EnforceAccessibilityService;->finish()V

    .line 52
    return-void
.end method
