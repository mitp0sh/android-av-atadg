.class Lde/gdata/mobilesecurity/fragments/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/d;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/d;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->OCL_connectToServer()V

    .line 138
    const/4 v0, 0x0

    return v0
.end method
