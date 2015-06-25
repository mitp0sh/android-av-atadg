.class public Lde/gdata/mobilesecurity/contacts/ContactListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"


# static fields
.field private static final FILTER_KEY:Ljava/lang/String; = "filter"


# instance fields
.field private isSingleChoiceList:Z

.field public mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field mProgressContainer:Landroid/view/View;

.field m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

.field m_checkedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_filter:Ljava/lang/String;

.field m_listener:Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->isSingleChoiceList:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_filter:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    return-void
.end method

.method private onCheckedUserChanged()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_listener:Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 164
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_listener:Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    invoke-interface {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;->onContactsSelected(Ljava/util/Collection;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_listener:Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;

    invoke-interface {v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;->onNothingSelected()V

    goto :goto_0
.end method

.method private requery()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 179
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->setFilter(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->clear()V

    .line 195
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->onCheckedUserChanged()V

    .line 196
    return-void
.end method

.method public getCheckedContacts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    return-object v0
.end method

.method public getOnItemSelectedListener()Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_listener:Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 102
    if-eqz v1, :cond_0

    const-string v2, "filter_ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const-string v0, "filter_ids"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 105
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;-><init>(Landroid/app/Activity;[I)V

    iput-object v2, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    iget-object v2, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->setCheckedContacts(Ljava/util/Set;)V

    .line 107
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "is_single_choice"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const-string v0, "is_single_choice"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->isSingleChoiceList:Z

    .line 114
    :cond_2
    if-eqz p1, :cond_3

    .line 115
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_filter:Ljava/lang/String;

    .line 118
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->requery()V

    .line 120
    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 42
    const v0, 0xff0001

    .line 44
    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 47
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mList:Landroid/widget/ListView;

    .line 48
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mListContainer:Landroid/view/View;

    .line 49
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mProgressContainer:Landroid/view/View;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mListShown:Z

    .line 52
    const v0, 0x7f0b032c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    const v0, 0x7f0b032d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->stop()V

    .line 92
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;

    .line 147
    iget-object v2, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    long-to-int v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 149
    iget-object v0, v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->isSingleChoiceList:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->uncheckAll()V

    .line 153
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    long-to-int v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1
    :goto_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->onCheckedUserChanged()V

    .line 158
    return-void

    .line 147
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 125
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->onCheckedUserChanged()V

    .line 126
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "filter"

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setCheckedContacts(Ljava/util/Set;)V
    .locals 1
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
    .line 187
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->setCheckedContacts(Ljava/util/Set;)V

    .line 188
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    .line 189
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_filter:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_filter:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->clear()V

    .line 174
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->requery()V

    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->setListShown(ZZ)V

    .line 82
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 59
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mListShown:Z

    if-ne v0, p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mListShown:Z

    .line 63
    if-eqz p1, :cond_2

    .line 64
    if-eqz p2, :cond_1

    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_2
    if-eqz p2, :cond_3

    .line 72
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->mListContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->setListShown(ZZ)V

    .line 86
    return-void
.end method

.method public setOnItemSelectedListener(Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_listener:Lde/gdata/mobilesecurity/contacts/ContactListFragment$OnItemSelectedListener;

    .line 136
    return-void
.end method

.method public uncheckAll()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 200
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->m_adapter:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->uncheckAll()V

    .line 201
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 203
    return-void
.end method
