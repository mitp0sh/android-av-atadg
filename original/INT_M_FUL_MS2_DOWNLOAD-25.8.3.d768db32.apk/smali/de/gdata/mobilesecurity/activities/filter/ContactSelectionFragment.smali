.class public Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;
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
        "Ljava/util/List",
        "<",
        "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
        ">;>;"
    }
.end annotation


# static fields
.field static a:Z

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field private static k:I

.field private static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Landroid/support/v7/view/ActionMode;


# instance fields
.field b:Landroid/view/Menu;

.field c:I

.field d:Z

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field public mList:Landroid/widget/ListView;

.field private o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

.field private p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private q:I

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    const/16 v0, 0x64

    sput v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->g:I

    .line 71
    const/16 v0, 0x66

    sput v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->h:I

    .line 72
    const/16 v0, 0x67

    sput v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->i:I

    .line 77
    sput v1, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->k:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->l:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->m:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 83
    sput-boolean v1, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 86
    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 88
    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->b:Landroid/view/Menu;

    .line 89
    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->c:I

    .line 91
    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->q:I

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->r:Ljava/util/HashMap;

    .line 547
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    .prologue
    .line 66
    sput-object p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->n:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    .line 643
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 645
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;

    .line 647
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getDisplayNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getPermissions()I

    move-result v5

    sget v6, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->STAT_NORMAL:I

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 650
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 652
    :cond_0
    return-object v7
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 66
    sput-object p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->q:I

    return v0
.end method

.method static synthetic b()Lde/gdata/mobilesecurity/activities/filter/FilterGroup;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->j:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->q:I

    return v0
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d()Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->n:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->i:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->h:I

    return v0
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const v6, 0x7f020112

    const/4 v3, 0x0

    .line 202
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 207
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 212
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 216
    invoke-static {v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_2

    .line 219
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    :goto_0
    if-eqz v2, :cond_0

    .line 225
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    return-object v0

    .line 221
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 226
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public loadImages(I)V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 245
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 247
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/a;

    invoke-direct {v2, p0, v1, v0, p1}, Lde/gdata/mobilesecurity/activities/filter/a;-><init>(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;III)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 305
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    .line 306
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->setListShown(Z)V

    .line 309
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/d;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/filter/d;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 313
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/filter/b;-><init>(Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 324
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 325
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 19

    .prologue
    .line 657
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 659
    if-nez p3, :cond_0

    .line 687
    :goto_0
    return-void

    .line 661
    :cond_0
    const-string v2, "numberpicker_entries"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 662
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;

    .line 665
    invoke-interface {v2}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getNumbers()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 666
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 668
    new-instance v3, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;

    const-wide/16 v4, 0x0

    invoke-interface {v2}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    sget v11, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->STAT_NORMAL:I

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;-><init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIJILandroid/graphics/Bitmap;)V

    .line 671
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 675
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 676
    sget-object v4, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->m:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    .line 677
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->m:Ljava/util/ArrayList;

    .line 679
    :cond_5
    sget-object v4, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 680
    sget-object v4, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {v4, v2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 684
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->notifyDataSetChanged()V

    .line 685
    sget-object v2, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->j:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    sget-object v3, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 686
    sget-object v2, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->j:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual/range {p0 .. p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateContactsInDB(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 105
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->p:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->setHasOptionsMenu(Z)V

    .line 109
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->b:Landroid/view/Menu;

    .line 174
    sget v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->g:I

    const v1, 0x7f0d01c4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 176
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 114
    const v1, 0xff0001

    .line 115
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    const-string v2, "filterGroup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->j:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 117
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->j:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadContactsFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 119
    const v0, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 121
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 123
    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 125
    const v0, 0x7f0b0150

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 126
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->mList:Landroid/widget/ListView;

    .line 127
    const v0, 0x7f0b014f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->f:Landroid/view/View;

    .line 128
    const v0, 0x7f0b014e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->e:Landroid/view/View;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->d:Z

    .line 131
    const v0, 0x7f0b032c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    const v1, 0x7f0d0274

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 349
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->setData(Ljava/util/List;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->setListShown(Z)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->o:Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment$ContactListAdapter;->setData(Ljava/util/List;)V

    .line 361
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option item selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->g:I

    if-ne v0, v1, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/contacts/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    const-string v1, "title"

    const v2, 0x7f0d0098

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "##to##"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    sget v1, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->k:I

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 329
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 331
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 334
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 335
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->b:Landroid/view/Menu;

    sget v1, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->g:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->setListShown(ZZ)V

    .line 163
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 139
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->d:Z

    if-ne v0, p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->d:Z

    .line 143
    if-eqz p1, :cond_2

    .line 144
    if-eqz p2, :cond_1

    .line 145
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_2
    if-eqz p2, :cond_3

    .line 152
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/filter/ContactSelectionFragment;->setListShown(ZZ)V

    .line 168
    return-void
.end method
