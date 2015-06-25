.class Lde/gdata/mobilesecurity/activities/applock/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/a;->a:Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/a;->a:Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;->a:Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/a;->a:Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog;->a:Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;

    invoke-interface {v0}, Lde/gdata/mobilesecurity/activities/applock/AccessibilityInfoDialog$AccessibilityInfoListener;->onClicked()V

    .line 62
    :cond_0
    return-void
.end method
