.class public Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;


# instance fields
.field private a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;)Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v2, "red"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public OCL_buy()V
    .locals 13

    .prologue
    .line 145
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b009d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b009f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0b00a1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0b00a3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v6, 0x7f0b00a7

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v7, 0x7f0b00a9

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f070009

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v9, 0x7f0b00a5

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 155
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    aget-object v0, v8, v0

    .line 159
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    :cond_0
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->onServerStatus(ILandroid/os/Bundle;)V

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v8, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v9

    .line 169
    invoke-virtual {v8}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v8

    .line 171
    new-instance v10, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v10, v11, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;-><init>(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v8, v11, v9

    const/4 v8, 0x2

    aput-object v1, v11, v8

    const/4 v1, 0x3

    aput-object v2, v11, v1

    const/4 v1, 0x4

    aput-object v3, v11, v1

    const/4 v1, 0x5

    aput-object v4, v11, v1

    const/4 v1, 0x6

    aput-object v5, v11, v1

    const/4 v1, 0x7

    aput-object v0, v11, v1

    const/16 v0, 0x8

    aput-object v6, v11, v0

    const/16 v0, 0x9

    aput-object v7, v11, v0

    const/16 v0, 0xa

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getSuccessMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    const/16 v0, 0xb

    const-string v1, ""

    aput-object v1, v11, v0

    invoke-virtual {v10, v11}, Lde/gdata/mobilesecurity/updateserverconnection/TaskBuy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "red"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "red"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 72
    :cond_0
    new-instance v5, Lde/gdata/mobilesecurity/fragments/ad;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/fragments/ad;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;)V

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 83
    new-instance v4, Lde/gdata/mobilesecurity/fragments/ae;

    invoke-direct {v4, p0, v0}, Lde/gdata/mobilesecurity/fragments/ae;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;Landroid/support/v4/app/DialogFragment;)V

    .line 92
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0245

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getQuery()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v7, 0x7f0d0240

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v8}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 97
    const-string v1, "DIALOG_TAG"

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 98
    return-void

    .line 92
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0b00ab

    .line 102
    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    new-instance v2, Lde/gdata/mobilesecurity/fragments/af;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/fragments/af;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0b00a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 114
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f070009

    const v4, 0x1090008

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 116
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    if-eqz v0, :cond_0

    .line 120
    const v0, 0x7f0b0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getOrderText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v0, 0x7f0b009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getFirstname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v0, 0x7f0b009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getSurname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v0, 0x7f0b009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v0, 0x7f0b00a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v0, 0x7f0b00a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v0, 0x7f0b00a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getMail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v0, 0x7f0b00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictButtonWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const v0, 0x7f0a005c

    invoke-static {v1, v5, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/view/View;II)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictDialogLayoutWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const v0, 0x7f0b0097

    const v2, 0x7f0a005d

    invoke-static {v1, v0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setDialogLayoutWidth(Landroid/view/View;II)V

    .line 137
    :cond_2
    return-object v1
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 55
    .line 58
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    .line 60
    return-void
.end method
