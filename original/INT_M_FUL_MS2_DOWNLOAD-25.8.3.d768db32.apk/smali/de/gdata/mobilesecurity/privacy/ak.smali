.class Lde/gdata/mobilesecurity/privacy/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/ag;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ag;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ak;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 764
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getPhoneNumber()Ljava/util/List;

    move-result-object v0

    .line 765
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 766
    new-instance v1, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;-><init>(Ljava/util/List;)V

    .line 767
    new-instance v0, Lde/gdata/mobilesecurity/privacy/al;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/privacy/al;-><init>(Lde/gdata/mobilesecurity/privacy/ak;)V

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->setResultListener(Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;)V

    .line 773
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ak;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "dialog"

    invoke-virtual {v1, v0, v2}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 776
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ak;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
