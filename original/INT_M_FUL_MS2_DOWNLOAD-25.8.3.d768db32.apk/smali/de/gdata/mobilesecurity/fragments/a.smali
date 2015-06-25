.class Lde/gdata/mobilesecurity/fragments/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/a;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/a;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementActivateFragment;->OCL_connectToServer()V

    .line 107
    return-void
.end method
