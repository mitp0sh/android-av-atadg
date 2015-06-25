.class Lde/gdata/mobilesecurity/activities/debug/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/m;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/m;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/m;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    const v2, 0x7f0b01a5

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 407
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/m;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    const v3, 0x7f0b01a4

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 410
    invoke-static {v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->setItemGroupId(Ljava/lang/String;)V

    .line 411
    invoke-static {v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->setDeveloperFlag(I)V

    .line 412
    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->setLicenseValidityPeriod(I)V

    .line 413
    return-void
.end method
