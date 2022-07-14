// routes/greet/[name].tsx

/** @jsx h */
import { h } from 'preact';
import { PageProps } from '$fresh/server.ts';

crypto.randomUUID()

export default function GreetPage(props: PageProps) {
    const { name } = props.params;
    return (
        <main>
            <p>Greetings to you, {name}!</p>
        </main>
    )
}