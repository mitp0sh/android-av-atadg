.class Lde/gdata/mobilesecurity/fragments/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/af;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/af;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->OCL_buy()V

    .line 109
    return-void
.end method
