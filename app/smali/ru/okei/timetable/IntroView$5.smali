.class Lru/okei/timetable/IntroView$5;
.super Ljava/lang/Object;
.source "IntroView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/okei/timetable/IntroView;->type(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/okei/timetable/IntroView;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/okei/timetable/IntroView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lru/okei/timetable/IntroView$5;->this$0:Lru/okei/timetable/IntroView;

    iput-object p2, p0, Lru/okei/timetable/IntroView$5;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    iget-object v0, p0, Lru/okei/timetable/IntroView$5;->this$0:Lru/okei/timetable/IntroView;

    iget-object v1, p0, Lru/okei/timetable/IntroView$5;->val$title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lru/okei/timetable/IntroView;->-$$Nest$merase(Lru/okei/timetable/IntroView;I)V

    return-void
.end method
