.class final Lde/gdata/mobilesecurity/contacts/ContactAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mImageLoader:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

.field private mImageViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private m_checkedContacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_contacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field private m_defaulContactPicture:Landroid/graphics/drawable/Drawable;

.field private m_filter:Ljava/lang/String;

.field m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;


# direct methods
.method constructor <init>(Landroid/app/Activity;[I)V
    .locals 3

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lde/gdata/mobilesecurity/util/CacheMap;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/CacheMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mImageViews:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_checkedContacts:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_contacts:Ljava/util/Map;

    .line 154
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mActivity:Landroid/app/Activity;

    .line 155
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getCursor(Z[I)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;-><init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_defaulContactPicture:Landroid/graphics/drawable/Drawable;

    .line 157
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;-><init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mImageLoader:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mImageLoader:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->start()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_defaulContactPicture:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lde/gdata/mobilesecurity/contacts/ContactAdapter;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->imageLoaded(Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$200(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_checkedContacts:Ljava/util/Set;

    return-object v0
.end method

.method private declared-synchronized addImageView(ILandroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mImageViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private filterByName()V
    .locals 4

    .prologue
    .line 269
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 270
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_filter:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getCursorFromName(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->changeCursor(Landroid/database/Cursor;)V

    .line 271
    return-void
.end method

.method private filterByNumber()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 275
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_filter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getCursorFromNumber(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->changeCursor(Landroid/database/Cursor;)V

    .line 276
    return-void
.end method

.method private filterNone()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 264
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getCursor(Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->changeCursor(Landroid/database/Cursor;)V

    .line 266
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private declared-synchronized imageLoaded(Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mImageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 330
    :cond_1
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mImageViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 332
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    if-nez p2, :cond_2

    .line 336
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_defaulContactPicture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 338
    :cond_2
    :try_start_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private requery()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_filter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->filterNone()V

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_filter:Ljava/lang/String;

    const-string v1, "\\+?\\d*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->filterByNumber()V

    goto :goto_0

    .line 258
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->filterByName()V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 198
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 201
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_contacts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_contacts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;

    move-object v1, v0

    .line 209
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;

    .line 211
    iget-object v3, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v3, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 213
    iget-object v3, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_checkedContacts:Ljava/util/Set;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    iget-object v3, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v4, Lde/gdata/mobilesecurity/contacts/ContactAdapter$1;

    invoke-direct {v4, p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$1;-><init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->isPhotoLoaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    iget-object v2, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :goto_1
    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->displayName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void

    .line 204
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;

    invoke-direct {v0, p0, v2, p2}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;-><init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;ILandroid/content/Context;)V

    .line 205
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_contacts:Ljava/util/Map;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    .line 233
    :cond_1
    iget-object v3, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->addImageView(ILandroid/widget/ImageView;)V

    .line 234
    iget-object v3, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 235
    iget-object v3, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mImageLoader:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->loadImage(Ljava/lang/Integer;Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_2

    .line 237
    iget-object v3, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 239
    :cond_2
    iget-object v2, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_defaulContactPicture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_contacts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 396
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->getCount()I

    move-result v0

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_filter:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0, p1, p2, p3}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    const v1, 0x7f030067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 176
    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;-><init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)V

    .line 177
    const v0, 0x7f0b0153

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->displayName:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0b0152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->contactPicture:Landroid/widget/ImageView;

    .line 180
    const v0, 0x7f0b0151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 181
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 182
    iput-object v0, v2, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 184
    const v0, 0x7f0b0154

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const v0, 0x7f0b0241

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    return-object v1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 297
    return-void
.end method

.method public setCheckedContacts(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_checkedContacts:Ljava/util/Set;

    .line 195
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_filter:Ljava/lang/String;

    .line 387
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->requery()V

    .line 388
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->mImageLoader:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;->cancel()V

    .line 163
    return-void
.end method

.method public uncheckAll()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_checkedContacts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 400
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_impl:Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$AdapterImpl;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 318
    return-void
.end method
