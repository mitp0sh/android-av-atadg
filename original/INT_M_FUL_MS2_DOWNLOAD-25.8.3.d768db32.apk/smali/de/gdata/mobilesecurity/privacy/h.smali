.class Lde/gdata/mobilesecurity/privacy/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/h;->a:Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/h;->a:Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setHideWarningShown(Z)V

    .line 29
    sget-object v0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->tryHide(Z)V

    .line 30
    return-void
.end method
