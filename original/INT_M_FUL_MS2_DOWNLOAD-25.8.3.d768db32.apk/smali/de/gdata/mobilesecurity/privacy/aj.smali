.class Lde/gdata/mobilesecurity/privacy/aj;
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
    .line 753
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/aj;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/aj;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->showChat(Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V

    .line 757
    return-void
.end method
