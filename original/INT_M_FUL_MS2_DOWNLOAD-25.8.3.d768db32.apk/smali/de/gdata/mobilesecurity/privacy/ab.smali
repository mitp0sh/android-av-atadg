.class Lde/gdata/mobilesecurity/privacy/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ab;->a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ab;->a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/contacts/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    const-string v1, "title"

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/ab;->a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    const v3, 0x7f0d049a

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "numberpicker_allow_wildcard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ab;->a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    return-void
.end method
