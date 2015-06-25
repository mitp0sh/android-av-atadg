.class public Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;
.implements Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;


# static fields
.field protected static final ACTION_ADD:I = 0x3

.field private static final CALLLOG_TAG:Ljava/lang/String; = "call_log"

.field protected static final CHECK_ALL_ID:I = 0x2

.field private static final CONTACTLIST_TAG:Ljava/lang/String; = "contact_list"

.field public static final EXTRA_IS_SINGLE_CHOICE:Ljava/lang/String; = "is_single_choice"

.field protected static final UNCHECK_ALL_ID:I = 0x1


# instance fields
.field private final NUMBER_REGEX_CLEAN:Ljava/lang/String;

.field private final NUMBER_REGEX_WILDCARD:Ljava/lang/String;

.field private mAllowWildcard:Z

.field private mHandler:Landroid/os/Handler;

.field m_actionMode:Landroid/support/v7/view/ActionMode;

.field private m_actionTabManager:Lde/gdata/mobilesecurity/util/ActionTabManger;

.field m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

.field m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

.field private m_currentTab:Ljava/lang/String;

.field m_filter:Ljava/lang/String;

.field m_filterEdit:Landroid/widget/EditText;

.field private m_newContactContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mAllowWildcard:Z

    .line 139
    const-string v0, "^[+]?[0-9.*]{3,}$"

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->NUMBER_REGEX_WILDCARD:Ljava/lang/String;

    .line 140
    const-string v0, "^[+]?[0-9]{3,}$"

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->NUMBER_REGEX_CLEAN:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    .line 303
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->checkData()V

    return-void
.end method

.method static synthetic access$300(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->requestFocusForEditText(Landroid/view/MenuItem;)V

    return-void
.end method

.method private addCallLogEntries()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 338
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getCheckedEntries()Ljava/util/ArrayList;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->isNewEntryChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 344
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;

    .line 346
    new-instance v3, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    iget-object v4, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->name:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->number:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-wide v6, v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment$LogEntry;->rowId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0, v8}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->isNewEntryChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    new-instance v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    const v2, 0x7f0d01d5

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    iget-object v4, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_2
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->endActivity(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private addContactEntries()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 364
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getCheckedContacts()Ljava/util/Set;

    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->isNewEntryChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 373
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 374
    invoke-virtual {v2, v4, v5}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 380
    new-instance v6, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v7, v0, v4, v8}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :cond_2
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->isNewEntryChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    new-instance v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    const v2, 0x7f0d01d5

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_3
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->endActivity(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private addFilterEntry()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 357
    new-instance v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v5, [Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    aput-object v0, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->endActivity(Ljava/util/ArrayList;)V

    .line 361
    return-void
.end method

.method private checkData()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getCheckedContacts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getCheckedEntries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->isNewEntryChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->showActionMode()V

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->hideActionMode()V

    goto :goto_0
.end method

.method private endActivity(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    const-string v1, "numberpicker_entries"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 327
    return-void
.end method

.method private hideActionMode()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionMode:Landroid/support/v7/view/ActionMode;

    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method private isNewEntryChecked()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private requestFocusForEditText(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 312
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 314
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 315
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 316
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 318
    :cond_0
    return-void
.end method

.method private setupTabs(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 392
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 393
    new-instance v2, Lde/gdata/mobilesecurity/util/ActionTabManger;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    const v3, 0x7f0b0179

    invoke-direct {v2, v0, v3}, Lde/gdata/mobilesecurity/util/ActionTabManger;-><init>(Landroid/support/v7/app/ActionBarActivity;I)V

    iput-object v2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionTabManager:Lde/gdata/mobilesecurity/util/ActionTabManger;

    .line 394
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionTabManager:Lde/gdata/mobilesecurity/util/ActionTabManger;

    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/util/ActionTabManger;->setOnTabChangeListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 396
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    .line 397
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->setOnItemSelectedListener(Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;)V

    .line 398
    new-instance v0, Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    .line 399
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setOnItemSelectedListener(Lde/gdata/mobilesecurity/contacts/CalllogFragment$OnItemSelectedListener;)V

    .line 401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 402
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_0

    const-string v3, "is_single_choice"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    const-string v3, "is_single_choice"

    const-string v4, "is_single_choice"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-object v3, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 406
    iget-object v3, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 409
    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "filter_ids"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    const-string v3, "filter_ids"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 411
    const-string v3, "filter_ids"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 412
    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 415
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionTabManager:Lde/gdata/mobilesecurity/util/ActionTabManger;

    new-instance v2, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    const-string v3, "contact_list"

    iget-object v4, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    const v5, 0x7f0d0209

    invoke-direct {v2, v3, v4, v5, v6}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;-><init>(Ljava/lang/String;Landroid/support/v4/app/Fragment;II)V

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/ActionTabManger;->addTab(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Z

    .line 418
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionTabManager:Lde/gdata/mobilesecurity/util/ActionTabManger;

    new-instance v2, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;

    const-string v3, "call_log"

    iget-object v4, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    const v5, 0x7f0d0208

    invoke-direct {v2, v3, v4, v5, v6}, Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;-><init>(Ljava/lang/String;Landroid/support/v4/app/Fragment;II)V

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/ActionTabManger;->addTab(Lde/gdata/mobilesecurity/util/ActionTabManger$TabInfo;)Z

    .line 421
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 423
    return-void
.end method

.method private showActionMode()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$6;-><init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionMode:Landroid/support/v7/view/ActionMode;

    goto :goto_0
.end method


# virtual methods
.method protected onAddClicked()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_currentTab:Ljava/lang/String;

    const-string v1, "call_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->addCallLogEntries()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->addContactEntries()V

    goto :goto_0
.end method

.method public onContactsSelected(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->checkData()V

    .line 541
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->setHasOptionsMenu(Z)V

    .line 234
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 239
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 241
    const v0, 0x7f0f0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 243
    const v0, 0x7f0b0394

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 245
    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    .line 249
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 252
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    const v2, 0x7f0200db

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 254
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    new-instance v2, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$3;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$3;-><init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    new-instance v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$4;-><init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 287
    const v0, 0x7f0b0395

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 288
    new-instance v1, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$5;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$5;-><init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 296
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 297
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 299
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    const v0, 0x7f030046

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 155
    const v0, 0x7f0b0178

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    const v2, 0x7f0b0153

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    const v2, 0x7f0d03d5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    const v2, 0x7f0b0152

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    const v2, 0x7f020112

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    const v2, 0x7f0b0151

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 164
    new-instance v2, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$1;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$1;-><init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    new-instance v3, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$2;

    invoke-direct {v3, p0, v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$2;-><init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->setupTabs(Landroid/view/View;)V

    .line 181
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_3

    const-string v2, "numberpicker_allow_wildcard"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    const-string v2, "numberpicker_allow_wildcard"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mAllowWildcard:Z

    .line 188
    :goto_0
    if-eqz p3, :cond_2

    .line 189
    const-string v0, "filter"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    .line 190
    const-string v0, "active_tab"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_currentTab:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionTabManager:Lde/gdata/mobilesecurity/util/ActionTabManger;

    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_currentTab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/ActionTabManger;->selectTab(Ljava/lang/String;)V

    .line 192
    const-string v0, "allow_wildcard"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mAllowWildcard:Z

    .line 193
    const-string v0, "new_entry"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :cond_0
    const-string v0, "calllog_entries"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const-string v0, "calllog_entries"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setCheckedEntries(Ljava/util/ArrayList;)V

    .line 200
    :cond_1
    const-string v0, "contact_entries"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "contact_entries"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 203
    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->setCheckedContacts(Ljava/util/Set;)V

    .line 207
    :cond_2
    return-object v1

    .line 185
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mAllowWildcard:Z

    goto :goto_0
.end method

.method protected onFilterChanged()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->setFilter(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->setFilter(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mAllowWildcard:Z

    if-eqz v0, :cond_0

    const-string v0, "^[+]?[0-9.*]{3,}$"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    const v1, 0x7f0b0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :goto_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->checkData()V

    .line 436
    return-void

    .line 429
    :cond_0
    const-string v0, "^[+]?[0-9]{3,}$"

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onNothingSelected()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->checkData()V

    .line 546
    return-void
.end method

.method public onNumberSelected(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->checkData()V

    .line 536
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 308
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 309
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 212
    const-string v0, "filter"

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "active_tab"

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_currentTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "allow_wildcard"

    iget-boolean v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->mAllowWildcard:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_currentTab:Ljava/lang/String;

    const-string v1, "call_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "calllog_entries"

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->getCheckedEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 223
    :goto_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->isNewEntryChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "new_entry"

    new-instance v1, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;

    const v2, 0x7f0d01d5

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$Entry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 228
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    return-void

    .line 220
    :cond_1
    const-string v0, "contact_entries"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getCheckedContacts()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "call_log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 523
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->clear()V

    .line 530
    :cond_0
    :goto_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_currentTab:Ljava/lang/String;

    .line 531
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filterEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 526
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->clear()V

    goto :goto_0
.end method

.method protected uncheckAllItems()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_currentTab:Ljava/lang/String;

    const-string v1, "call_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_callLog:Lde/gdata/mobilesecurity/contacts/CalllogFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/CalllogFragment;->uncheckAll()V

    .line 513
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_actionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 516
    :cond_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_contactList:Lde/gdata/mobilesecurity/contacts/ContactListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->uncheckAll()V

    goto :goto_0
.end method
