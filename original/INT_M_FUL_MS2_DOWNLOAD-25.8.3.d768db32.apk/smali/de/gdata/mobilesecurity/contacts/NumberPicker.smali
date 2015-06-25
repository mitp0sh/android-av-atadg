.class public Lde/gdata/mobilesecurity/contacts/NumberPicker;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"


# static fields
.field public static final ALLOW_WILDCARD:Ljava/lang/String; = "numberpicker_allow_wildcard"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final PICK_NUMBER:I = 0x1

.field public static final RESULT_KEY:Ljava/lang/String; = "numberpicker_entries"


# instance fields
.field private m_isSingleChoice:Z

.field private m_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_isSingleChoice:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPicker;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    if-nez p1, :cond_1

    .line 41
    new-instance v1, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;-><init>()V

    .line 42
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPicker;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 46
    :cond_1
    if-eqz p1, :cond_4

    .line 47
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_title:Ljava/lang/String;

    .line 57
    :cond_2
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPicker;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_3
    return-void

    .line 50
    :cond_4
    if-eqz v0, :cond_2

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_title:Ljava/lang/String;

    .line 52
    const-string v1, "is_single_choice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const-string v1, "is_single_choice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_isSingleChoice:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 73
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPicker;->finish()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onPause()V

    .line 84
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    const-string v0, "title"

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPicker;->m_title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method
