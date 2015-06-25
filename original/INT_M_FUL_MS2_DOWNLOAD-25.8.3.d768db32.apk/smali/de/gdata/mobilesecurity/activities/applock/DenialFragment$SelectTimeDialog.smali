.class public Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public appLabel:Ljava/lang/String;

.field public fragment:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

.field public itemIdentifier:Ljava/lang/String;

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;ILjava/lang/String;)Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;
    .locals 3

    .prologue
    .line 529
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;-><init>()V

    .line 531
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 532
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 537
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 543
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->itemIdentifier:Ljava/lang/String;

    .line 545
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->fragment:Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    .line 548
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->time:I

    .line 550
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->appLabel:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    const v8, 0x7f0b0114

    const/4 v7, 0x1

    .line 555
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 556
    const v1, 0x7f03002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 558
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0526

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0240

    new-instance v3, Lde/gdata/mobilesecurity/activities/applock/g;

    invoke-direct {v3, p0, v1}, Lde/gdata/mobilesecurity/activities/applock/g;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d021e

    new-instance v3, Lde/gdata/mobilesecurity/activities/applock/f;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/applock/f;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/e;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/applock/e;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 622
    const v0, 0x7f0b0112

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 623
    const v3, 0x7f0d0525

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->appLabel:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$SelectTimeDialog;->time:I

    sparse-switch v0, :sswitch_data_0

    .line 645
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 649
    :goto_0
    return-object v2

    .line 627
    :sswitch_0
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 630
    :sswitch_1
    const v0, 0x7f0b0115

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 633
    :sswitch_2
    const v0, 0x7f0b0116

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 636
    :sswitch_3
    const v0, 0x7f0b0117

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 639
    :sswitch_4
    const v0, 0x7f0b0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 642
    :sswitch_5
    const v0, 0x7f0b0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 625
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xf -> :sswitch_1
        0x1e -> :sswitch_2
        0x3c -> :sswitch_3
        0x78 -> :sswitch_4
        0xf0 -> :sswitch_5
    .end sparse-switch
.end method
