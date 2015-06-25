.class public Lde/gdata/mobilesecurity/privacy/DetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lde/gdata/mobilesecurity/util/ActionTabManger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 10

    .prologue
    const v3, 0x7f0b0328

    const v9, 0x7f0b0327

    const/4 v4, 0x0

    .line 83
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v0, "uri"

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->a:Landroid/net/Uri;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v7

    .line 90
    new-instance v1, Lde/gdata/mobilesecurity/util/ActionTabManger;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v1, v0, v9}, Lde/gdata/mobilesecurity/util/ActionTabManger;-><init>(Landroid/support/v7/app/ActionBarActivity;I)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->b:Lde/gdata/mobilesecurity/util/ActionTabManger;

    .line 92
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    iget-object v8, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->b:Lde/gdata/mobilesecurity/util/ActionTabManger;

    new-instance v0, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    const-string v1, "detail_settings"

    const-class v2, Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0488

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {v8, v0}, Lde/gdata/mobilesecurity/util/ActionTabManger;->addTab(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Z

    .line 104
    :cond_0
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->b:Lde/gdata/mobilesecurity/util/ActionTabManger;

    const-class v1, Lde/gdata/mobilesecurity/privacy/ChatFragment;

    const v2, 0x7f0d047f

    invoke-static {v1, v2, v4, v5}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->fromFragment(Ljava/lang/Class;IILandroid/os/Bundle;)Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/ActionTabManger;->addTab(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Z

    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->b:Lde/gdata/mobilesecurity/util/ActionTabManger;

    const-class v1, Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    const v2, 0x7f0d047c

    invoke-static {v1, v2, v4, v5}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;->fromFragment(Ljava/lang/Class;IILandroid/os/Bundle;)Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/ActionTabManger;->addTab(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Z

    .line 118
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->b:Lde/gdata/mobilesecurity/util/ActionTabManger;

    const-string v1, "tab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/ActionTabManger;->selectTab(Ljava/lang/String;)V

    .line 124
    :cond_2
    return-void

    .line 96
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "detail_settings"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {v7, v4}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 112
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "detail_settings"

    invoke-virtual {v0, v9, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 36
    if-nez p2, :cond_0

    .line 77
    :goto_0
    return-object v2

    .line 38
    :cond_0
    const v0, 0x7f03008d

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 40
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->a:Landroid/net/Uri;

    .line 42
    invoke-direct {p0, p3, v6}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->a(Landroid/os/Bundle;Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 46
    new-array v0, v8, [Ljava/lang/String;

    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const-string v0, "contact_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 49
    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-direct {v2, v1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Landroid/database/Cursor;)V

    .line 50
    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 58
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 60
    array-length v1, v0

    if-lez v1, :cond_2

    .line 61
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 62
    const-string v2, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    array-length v2, v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->buildInPlaceholders(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v8}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getSMSUri(I)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "address in ( %s )"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 70
    const-string v3, "is_read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v8}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getCallsUri(I)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "number in ( %s )"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    move-object v2, v6

    .line 77
    goto/16 :goto_0

    .line 52
    :cond_3
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    .line 53
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "tab"

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailsFragment;->b:Lde/gdata/mobilesecurity/util/ActionTabManger;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/ActionTabManger;->getActiveTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
