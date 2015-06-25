.class Lde/gdata/mobilesecurity/fragments/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ah;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ah;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->OCL_register()V

    .line 154
    return-void
.end method
