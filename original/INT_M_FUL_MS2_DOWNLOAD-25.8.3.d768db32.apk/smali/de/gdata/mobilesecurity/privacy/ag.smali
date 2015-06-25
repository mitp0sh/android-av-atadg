.class Lde/gdata/mobilesecurity/privacy/ag;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lde/gdata/mobilesecurity/contacts/ContactStore;

.field private f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lde/gdata/mobilesecurity/privacy/am;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 656
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    .line 657
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->g:Ljava/util/Map;

    .line 654
    new-instance v0, Lde/gdata/mobilesecurity/privacy/am;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/privacy/am;-><init>(Lde/gdata/mobilesecurity/privacy/ag;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->h:Lde/gdata/mobilesecurity/privacy/am;

    .line 658
    new-instance v0, Lde/gdata/mobilesecurity/util/CacheMap;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/CacheMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->c:Ljava/util/Map;

    .line 659
    new-instance v0, Lde/gdata/mobilesecurity/util/CacheMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/CacheMap;-><init>(I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->d:Ljava/util/Map;

    .line 660
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {v0, p2}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    .line 661
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 662
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->a:Landroid/graphics/drawable/Drawable;

    .line 663
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->h:Lde/gdata/mobilesecurity/privacy/am;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/am;->start()V

    .line 664
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 843
    const-string v0, "contact_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 846
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 848
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 849
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->d:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->d:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 878
    :goto_0
    return-object v0

    .line 852
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Landroid/database/Cursor;)V

    .line 853
    new-instance v1, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/ag;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getNullContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->isSuppresCommuncation()Z

    move-result v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getID()J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;-><init>(Lde/gdata/mobilesecurity/contacts/Contact;Ljava/lang/String;ZZJLandroid/graphics/drawable/Drawable;)V

    .line 856
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->d:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v0, v1

    .line 878
    goto :goto_0

    .line 859
    :cond_1
    const-string v0, "profile_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 860
    new-instance v1, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 861
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    goto :goto_0

    .line 864
    :cond_2
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    .line 866
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v3

    .line 868
    if-nez v3, :cond_3

    .line 869
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/ag;->e:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getNullContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v3

    .line 872
    :cond_3
    new-instance v2, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isSuppresCommunication()Z

    move-result v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v5

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getID()J

    move-result-wide v6

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;-><init>(Lde/gdata/mobilesecurity/contacts/Contact;ZZJLandroid/graphics/drawable/Drawable;)V

    .line 875
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_1
.end method

.method private declared-synchronized a(Landroid/util/Pair;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 926
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 916
    :cond_1
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 918
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    if-nez p2, :cond_2

    .line 922
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ag;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 924
    :cond_2
    :try_start_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/ag;Landroid/util/Pair;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/ag;->a(Landroid/util/Pair;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Lde/gdata/mobilesecurity/privacy/ah;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/privacy/ah;-><init>(Lde/gdata/mobilesecurity/privacy/ag;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 705
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 882
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ag;->getCount()I

    move-result v3

    move v1, v2

    .line 883
    :goto_0
    if-ge v1, v3, :cond_1

    .line 884
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/privacy/ag;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    .line 885
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->setChecked(Z)V

    .line 883
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 887
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ag;->notifyDataSetInvalidated()V

    .line 888
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 797
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/privacy/ap;

    .line 798
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/privacy/ag;->a(Landroid/database/Cursor;)Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    move-result-object v6

    .line 799
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    iget-object v1, v1, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v6, v3}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->setChecked(Z)V

    .line 801
    :cond_0
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 803
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 804
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 805
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 806
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isMMSContact()Z

    move-result v1

    if-nez v1, :cond_1

    .line 807
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 808
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 809
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 810
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ag;->a()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 811
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->g:Landroid/widget/TextView;

    const v2, 0x7f0d0481

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 812
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 813
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 814
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 815
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ag;->a()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 821
    :goto_0
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->isContact()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 822
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/contacts/Contact;->getProfileId()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContactID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 824
    iget-object v2, v0, Lde/gdata/mobilesecurity/privacy/ap;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 826
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/ag;->g:Ljava/util/Map;

    iget-object v3, v0, Lde/gdata/mobilesecurity/privacy/ap;->b:Landroid/widget/ImageView;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ag;->h:Lde/gdata/mobilesecurity/privacy/am;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/Contact;->getProfileId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;->getContactID()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lde/gdata/mobilesecurity/privacy/am;->a(JJLde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 831
    if-eqz v1, :cond_2

    .line 832
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ap;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 840
    :goto_1
    return-void

    .line 817
    :cond_1
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->g:Landroid/widget/TextView;

    const v2, 0x7f0d0390

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 818
    iget-object v1, v0, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 834
    :cond_2
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ap;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ag;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 838
    :cond_3
    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ap;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ag;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->h:Lde/gdata/mobilesecurity/privacy/am;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/am;->b()V

    .line 902
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 789
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 790
    check-cast v0, Landroid/database/Cursor;

    .line 792
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/privacy/ag;->a(Landroid/database/Cursor;)Lde/gdata/mobilesecurity/privacy/HiddenEntryDisplayData;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 715
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 716
    const v1, 0x7f030067

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 717
    new-instance v2, Lde/gdata/mobilesecurity/privacy/ap;

    invoke-direct {v2, p0, v3}, Lde/gdata/mobilesecurity/privacy/ap;-><init>(Lde/gdata/mobilesecurity/privacy/ag;Lde/gdata/mobilesecurity/privacy/ab;)V

    .line 718
    const v0, 0x7f0b0153

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->a:Landroid/widget/TextView;

    .line 719
    const v0, 0x7f0b0152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->b:Landroid/widget/ImageView;

    .line 720
    const v0, 0x7f0b0245

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->d:Landroid/widget/LinearLayout;

    .line 721
    const v0, 0x7f0b0154

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->g:Landroid/widget/TextView;

    .line 723
    const v0, 0x7f0b0240

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->e:Landroid/widget/LinearLayout;

    .line 724
    const v0, 0x7f0b0242

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->c:Landroid/widget/LinearLayout;

    .line 725
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 726
    const-string v0, ""

    .line 727
    if-eqz v3, :cond_0

    .line 728
    const-string v0, "title"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 732
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 735
    :cond_1
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->e:Landroid/widget/LinearLayout;

    new-instance v3, Lde/gdata/mobilesecurity/privacy/ai;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/privacy/ai;-><init>(Lde/gdata/mobilesecurity/privacy/ag;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->c(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 744
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ag;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 747
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_3

    .line 748
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 751
    :cond_3
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/ag;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->c:Landroid/widget/LinearLayout;

    new-instance v3, Lde/gdata/mobilesecurity/privacy/aj;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/privacy/aj;-><init>(Lde/gdata/mobilesecurity/privacy/ag;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    iget-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lde/gdata/mobilesecurity/privacy/ak;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/privacy/ak;-><init>(Lde/gdata/mobilesecurity/privacy/ag;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    const v0, 0x7f0b0151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/ap;->f:Landroid/widget/CheckBox;

    .line 783
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 784
    return-object v1
.end method
