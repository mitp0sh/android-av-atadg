.class public Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static mActivity:Landroid/app/Activity;

.field private static z:I


# instance fields
.field a:I

.field private b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

.field private c:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/Spinner;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/support/v4/app/DialogFragment;

.field private n:Landroid/view/View;

.field private o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

.field private p:I

.field private q:Landroid/widget/EditText;

.field private r:Z

.field private s:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

.field private t:I

.field private u:Landroid/widget/LinearLayout;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->z:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->r:Z

    .line 74
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->t:I

    .line 77
    iput v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->w:I

    .line 507
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->t:I

    return p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iput v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a:I

    .line 126
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    iget v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->p:I

    if-nez v1, :cond_2

    .line 129
    if-eqz v0, :cond_0

    .line 130
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a:I

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v1, "appWidgetId"

    iget v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v1, "FROM CONFIGURATION ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setTitle(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->t:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setColor(I)V

    .line 140
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setWidgetId(I)V

    .line 141
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->updatePanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)I

    .line 143
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b()V

    .line 144
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 146
    :cond_0
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a:I

    if-nez v0, :cond_1

    .line 147
    const-string v0, "I am invalid"

    const-string v1, "I am invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->backToFront()V

    .line 162
    :goto_0
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setTitle(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->t:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setColor(I)V

    .line 155
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->updatePanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)I

    .line 157
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b()V

    .line 158
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->backToFront()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    .line 220
    const v0, 0x7f0b022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->q:Landroid/widget/EditText;

    .line 222
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->p:I

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->p:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getPanicProfileByWidgetId(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    .line 226
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    if-nez v0, :cond_3

    .line 227
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    const-string v1, ""

    iget v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->p:I

    invoke-direct {v0, v3, v1, v3, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    .line 228
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->addPanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->setId(I)V

    .line 233
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->q:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_1
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    .line 240
    const v0, 0x7f0b0231

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->e:Landroid/widget/Button;

    .line 241
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->e:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->e:Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/w;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/w;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v0, 0x7f0b0233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 251
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    :cond_2
    const v0, 0x7f0b022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->u:Landroid/widget/LinearLayout;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->unselectOthers()V

    .line 271
    return-void

    .line 230
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getColor()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->t:I

    goto/16 :goto_0
.end method

.method private a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v9, 0x8

    .line 334
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 335
    const v2, 0x7f03007c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    .line 337
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    .line 338
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->x:Landroid/widget/EditText;

    .line 339
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->y:Landroid/widget/TextView;

    .line 340
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i:Landroid/widget/TextView;

    .line 341
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j:Landroid/widget/TextView;

    .line 342
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f:Landroid/widget/ImageButton;

    .line 343
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02db

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g:Landroid/widget/Spinner;

    .line 344
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->l:Landroid/widget/TextView;

    .line 345
    if-eqz p1, :cond_2

    .line 348
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    move v0, v4

    move v2, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 349
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v0, :cond_0

    .line 350
    add-int/lit8 v2, v2, 0x1

    .line 348
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 352
    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->k:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getId()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->w:I

    .line 357
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 361
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->x:Landroid/widget/EditText;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    const v2, 0x7f0b02d9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 364
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v0, v0, v2

    .line 366
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    .line 369
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 417
    :cond_3
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f:Landroid/widget/ImageButton;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/y;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/y;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->m:Landroid/support/v4/app/DialogFragment;

    .line 427
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->n:Landroid/view/View;

    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setView(Landroid/view/View;)V

    .line 429
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/z;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/z;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 436
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/aa;

    invoke-direct {v1, p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/aa;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->m:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "ADD_DIALOG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 505
    return-void

    .line 382
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0402

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 383
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 394
    :cond_5
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 406
    :cond_6
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0407

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xa0

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 415
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->s:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    return-object p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    .line 169
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 298
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 299
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->t:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 301
    const/16 v0, 0x14

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 302
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->drawableToMediumBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    const-string v1, "FINISH_MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;-><init>()V

    .line 311
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setProfileId(I)V

    .line 312
    const-string v2, "panicAction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    const-string v1, "callEnabled"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->hasAlreadyCallAction(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    invoke-static {}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->endWizard()V

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicActionWizardOne;->WIZARD_ACTIVITIES:Ljava/util/ArrayList;

    .line 317
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->startActivity(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a()V

    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c()V

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->x:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    return-object v0
.end method

.method static synthetic j(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->o:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    return-object v0
.end method


# virtual methods
.method public backToFront()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->startActivity(Landroid/content/Intent;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 180
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    .prologue
    .line 631
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 633
    if-nez p3, :cond_0

    .line 656
    :goto_0
    return-void

    .line 635
    :cond_0
    const-string v2, "numberpicker_entries"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 636
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 638
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;

    .line 639
    invoke-interface {v2}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getNumbers()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 640
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 642
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

    .line 647
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->getDisplayNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->k:Ljava/lang/String;

    goto :goto_1

    .line 651
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->setHasOptionsMenu(Z)V

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 185
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    const v0, 0x7f0b0393

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 187
    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 189
    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0d0220

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0d021e

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/u;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/u;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/v;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/v;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0b022a

    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iput v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->p:I

    .line 87
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    const-string v1, "widgetId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->p:I

    .line 98
    :goto_0
    const v0, 0x7f030061

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 99
    invoke-direct {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Landroid/view/View;)V

    .line 100
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->p:I

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d03fd

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->mActivity:Landroid/app/Activity;

    .line 107
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->p:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->r:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c()V

    .line 109
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->r:Z

    .line 111
    :cond_0
    return-object v1

    .line 91
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d03fc

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onListClicked()V
    .locals 5

    .prologue
    .line 622
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 623
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/contacts/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 624
    const-string v1, "title"

    const v2, 0x7f0d0098

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "##to##"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v1, "is_single_choice"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    sget v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->z:I

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 627
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 330
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 331
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 323
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->notifyDataSetChanged()V

    .line 326
    :cond_0
    return-void
.end method

.method public unselectOthers()V
    .locals 5

    .prologue
    .line 274
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 276
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 277
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 278
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 280
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v2, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->drawableToMediumBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/x;

    invoke-direct {v2, p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/x;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->t:I

    if-ne v1, v0, :cond_0

    .line 291
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->b(Landroid/view/View;)V

    .line 274
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 295
    :cond_1
    return-void
.end method
