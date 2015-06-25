.class public Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static a:Lde/gdata/mobilesecurity/privacy/ag;

.field static f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field private g:Landroid/support/v7/view/ActionMode;

.field private h:Z

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private k:I

.field private l:I

.field public mList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->g:Landroid/support/v7/view/ActionMode;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->h:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    .line 646
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;[Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;)I
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a([Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;)I

    move-result v0

    return v0
.end method

.method private a([Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;)I
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 618
    invoke-static {}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getPrivateContactsUri()Landroid/net/Uri;

    move-result-object v4

    .line 619
    invoke-static {}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getPrivateNumbersUri()Landroid/net/Uri;

    move-result-object v5

    .line 620
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 621
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 622
    array-length v8, p1

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, p1, v2

    .line 623
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 625
    invoke-interface {v9}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 626
    const-string v11, "number"

    invoke-interface {v9}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_0
    const-string v0, "id"

    invoke-interface {v9}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 629
    invoke-interface {v9}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->isContact()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 632
    :cond_1
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 637
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 638
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 640
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 641
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    add-int/2addr v1, v0

    .line 643
    :cond_4
    return v1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->g:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->g:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0201

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d0200

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lde/gdata/mobilesecurity/privacy/ab;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/privacy/ab;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)V

    invoke-static {v0, v1, v2, v3, v4}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 120
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V
    .locals 4

    .prologue
    .line 336
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->isValidContact()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getProfileId()I

    move-result v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getHiddenContactUri(IJ)Landroid/net/Uri;

    move-result-object v0

    .line 347
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 348
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/privacy/DetailsActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 349
    const-string v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_1

    .line 354
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 344
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getHiddenNumberUri(IJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 382
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->h:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 164
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfileType()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->k:I

    .line 165
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->l:I

    .line 166
    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->h:Z

    return v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 5

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 482
    :goto_0
    monitor-exit p0

    return-void

    .line 463
    :cond_0
    :try_start_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    :try_start_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v3, v0, [Landroid/database/Cursor;

    .line 467
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 468
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 469
    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    aput-object v0, v3, v1

    .line 467
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 472
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/ad;

    invoke-direct {v1, p0, v3}, Lde/gdata/mobilesecurity/privacy/ad;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;[Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/ag;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 481
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 461
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public finishActionMode()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->g:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->b()V

    .line 178
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->g:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 180
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 289
    new-instance v0, Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lde/gdata/mobilesecurity/privacy/ag;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    .line 291
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->setListShown(Z)V

    .line 293
    const v0, 0x7f0d0493

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 296
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 299
    iget v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->l:I

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 300
    iget v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->k:I

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 302
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 306
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->h:Z

    .line 308
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->notifyDataSetInvalidated()V

    .line 309
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/af;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-direct {v1, p0, v2, v3}, Lde/gdata/mobilesecurity/privacy/af;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/privacy/ag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->g:Landroid/support/v7/view/ActionMode;

    .line 314
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 326
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 327
    if-nez p3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string v0, "numberpicker_entries"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    new-instance v1, Lde/gdata/mobilesecurity/privacy/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lde/gdata/mobilesecurity/privacy/ae;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Lde/gdata/mobilesecurity/privacy/ab;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/privacy/ae;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b()V

    .line 188
    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->setHasOptionsMenu(Z)V

    .line 189
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->checkAccount(Landroid/content/Context;)V

    .line 190
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 192
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isFirstPrivacyStart()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0201

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0293

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lde/gdata/mobilesecurity/privacy/ac;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/privacy/ac;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)V

    invoke-static {v0, v1, v2, v3, v4}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setCancelable(Z)V

    .line 206
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "WARNING_DIALOG"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->f:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPrivacyStarted(Z)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 211
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 395
    .line 396
    const-string v0, "LOAD"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 401
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    packed-switch p1, :pswitch_data_0

    .line 431
    :pswitch_0
    const-string v0, "Unknown Loader for PrivacyList"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    :cond_1
    move-object v2, v3

    .line 434
    :goto_0
    if-nez v2, :cond_2

    .line 435
    :goto_1
    return-object v3

    .line 405
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 409
    :pswitch_1
    invoke-static {}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getPrivateContactsUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 412
    :pswitch_2
    invoke-static {}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getPrivateNumbersUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 415
    :pswitch_3
    iget v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->l:I

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 416
    iget v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->k:I

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 418
    :try_start_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 420
    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContactsUri(I)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get current profile id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    move-object v2, v3

    .line 423
    goto :goto_0

    :pswitch_4
    move-object v2, v3

    .line 428
    goto :goto_0

    .line 435
    :cond_2
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_1

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->k:I

    if-ne v0, v1, :cond_0

    .line 98
    const/16 v0, 0x3715

    const v1, 0x7f0d0482

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 100
    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 216
    const v0, 0xff0001

    .line 218
    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 220
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 222
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 224
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 226
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->mList:Landroid/widget/ListView;

    .line 227
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->e:Landroid/view/View;

    .line 228
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->d:Landroid/view/View;

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->c:Z

    .line 231
    if-eqz p3, :cond_0

    const-string v0, "checkedEntries"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "checkedEntries"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    .line 235
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 280
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a:Lde/gdata/mobilesecurity/privacy/ag;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ag;->c()V

    .line 283
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->g:Landroid/support/v7/view/ActionMode;

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 320
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V

    .line 322
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->c()V

    .line 446
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->setListShown(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 450
    :goto_0
    return-void

    .line 442
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    const-string v0, "View no ready yet."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 456
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->c()V

    .line 458
    return-void

    .line 456
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x3715

    if-ne v2, v3, :cond_2

    .line 126
    new-instance v2, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->getPriorityWarningShown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v1}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getSmsReceivers(Landroid/content/Context;Z)Ljava/util/Vector;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 132
    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setPriorityWarningShown(Z)V

    .line 133
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/antitheft/WarnSmsReceiver;

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->getHiddenCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 140
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a()V

    goto :goto_0

    .line 142
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lde/gdata/mobilesecurity/contacts/NumberPicker;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 143
    const-string v3, "title"

    const v4, 0x7f0d049a

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "numberpicker_allow_wildcard"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v2, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 173
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    const v1, 0x7f0b0398

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 389
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 390
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 391
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 157
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 158
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 159
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b()V

    .line 160
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->g:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "checkedEntries"

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1023
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    .line 1024
    sget v0, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1025
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->finishActionMode()V

    .line 1027
    :cond_0
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->setListShown(ZZ)V

    .line 263
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 239
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->c:Z

    if-ne v0, p1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 242
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->c:Z

    .line 243
    if-eqz p1, :cond_2

    .line 244
    if-eqz p2, :cond_1

    .line 245
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_2
    if-eqz p2, :cond_3

    .line 253
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->setListShown(ZZ)V

    .line 267
    return-void
.end method

.method protected showChat(Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V
    .locals 4

    .prologue
    .line 362
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->isValidContact()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getProfileId()I

    move-result v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getHiddenContactUri(IJ)Landroid/net/Uri;

    move-result-object v0

    .line 373
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 374
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/privacy/ChatActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 375
    const-string v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getHiddenNumberUri(IJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method protected updateContactBeforeDeleting(Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 582
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->isValidContact()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getProfileId()I

    move-result v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getHiddenContactUri(IJ)Landroid/net/Uri;

    move-result-object v0

    .line 594
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 595
    const-string v2, "suppress_communcation"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 596
    const-string v2, "remove_from_store"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 598
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 599
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getId()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getHiddenNumberUri(IJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method
