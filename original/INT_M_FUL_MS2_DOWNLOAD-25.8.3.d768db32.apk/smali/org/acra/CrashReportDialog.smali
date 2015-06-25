.class public Lorg/acra/CrashReportDialog;
.super Lorg/acra/BaseCrashReportDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field a:Landroid/app/AlertDialog;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/acra/BaseCrashReportDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildCustomView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/16 v6, 0xa

    .line 55
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 62
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 68
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->resDialogText()I

    move-result v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {p0, v3}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->resDialogCommentPrompt()I

    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v0, v6, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    .line 86
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 87
    if-eqz p1, :cond_1

    .line 88
    const-string v0, "comment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->resDialogEmailPrompt()I

    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v0, v6, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 103
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 107
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 109
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->sharedPreferencesMode()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/acra/CrashReportDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    .line 111
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_3

    .line 113
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_3
    if-eqz v0, :cond_5

    .line 116
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    :cond_4
    return-object v1

    .line 118
    :cond_5
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    const-string v4, "acra.user.email"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 128
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 130
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 137
    const-string v3, "acra.user.email"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/acra/CrashReportDialog;->sendCrash(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_2
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 148
    return-void

    .line 130
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 140
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->cancelReports()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lorg/acra/BaseCrashReportDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resDialogTitle()I

    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 40
    :cond_0
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resDialogIcon()I

    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lorg/acra/CrashReportDialog;->buildCustomView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resDialogPositiveButtonText()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resDialogNegativeButtonText()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->a:Landroid/app/AlertDialog;

    .line 49
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 50
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 52
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 154
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lorg/acra/BaseCrashReportDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "comment"

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "email"

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    return-void
.end method
